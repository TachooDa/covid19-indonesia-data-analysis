select * from covid19_indonesia;
-- Exploratory Data Analysis
-- total data keseluruhan
select sum(`Total Cases`) as total_kasus_nasional,
sum(`Total Deaths`) as total_kematian_nasional,
sum(`Total Recovered`) as total_rec_nasional,
round(avg(`Case Fatality Rate`),2) as avg_cfr_nasional
from covid19_indonesia;

-- 1. Tren kasus harian nasional dari waktu ke waktu
select `Date`, sum(`New Cases`) as kasus_harian
from covid19_indonesia
group by `Date`
order by `Date` desc ;

-- 2. Provinsi yg memiliki total kasus tertinggi secara keseluruhan
select `Province`, sum(`Total Cases`) as total_kasus
from covid19_indonesia
where `Province` not like 'N/A'
group by `Province`
order by total_kasus desc limit 10;

-- 3. Perbandingan case fatality rate antar provinsi/pulau
select * from covid19_indonesia;
select `Province`,`Island`, round(avg(`Case Fatality Rate`),0) as avg_cfr
from covid19_indonesia
group by `Province`, `Island`
order by avg_cfr desc;

-- 4. cek kasus baru rata-rata per bulan di indonesia 
select month(`Date`) as `month`, round(avg(`New Cases`),0) as avg_cases 
from covid19_indonesia
group by `month`
order by `month` desc;

-- 5. cek wilayah yg memiliki recovery rate tertinggi dan terendah 
select `Location`, round(avg(`Case Recovered Rate`),0) as avg_crr
from covid19_indonesia
group by `Location`
order by avg_crr desc;

-- 6. cek provinsi dengan death rate lbih dari 10% (sangat tinggi)
select `Province`, round(avg(`Case Fatality Rate`),2) as avg_cfr
from covid19_indonesia
where `Case Fatality Rate` > 10
group by `Province`
order by avg_cfr desc;

-- 7. Sebaran kasus aktif di seluruh provinsi pada puncak pandemi
select `Province`, max(`Total Active Cases`) as peak_kasus_aktif
from covid19_indonesia
group by `Province`
order by peak_kasus_aktif desc;

-- 8. cek di dki jakarta, apakah selalu menjadi kasus tertinggi harian
select `Date`, `Province`,max(`New Cases`)
from covid19_indonesia
where `Province` = 'DKI Jakarta'
group by `Date`, `Province`
order by `Date` desc;

-- 9. Tren kematian per pulau dari waktu ke waktu
select `Date`, `Island`, sum(`New Deaths`) as total_kematian_baru
from covid19_indonesia
group by `Date`,`Island`
order by `Date` asc;

-- 10. Cek provinsi mana yg terkena covid terlebih dahulu
select `Province`, min(`Date`) as first_case_date, sum(`Total Cases`) as total_cases
from covid19_indonesia
group by `Province`
order by total_cases desc ;
select * from covid19_indonesia;

-- CTE Section
-- 1. Provinsi dengan rata2 daily cases tertinggi sepanjang waktu
with avg_daily_cases as (
select `Province`, round(avg(`New Cases`),2) as avg_cases
from covid19_indonesia
group by `Province`
), ranked_province as (
select *,
row_number() over(order by avg_cases desc) as ranked
from avg_daily_cases
)
select * from ranked_province
order by ranked asc limit 10;

select * from covid19_indonesia;
-- 2. Peringkat provinsi berdasarkan total kematian nasional
with total_death_per_province as (
select `Province`, sum(`Total Deaths`) as total_kematian
from covid19_indonesia
group by `Province`
), ranked_province as (
select `Province`, total_kematian,
rank() over(order by total_kematian desc) as rn_death
from total_death_per_province
) 
select * from ranked_province
order by rn_death;

-- 3. Bagaimana perubahan kasus aktif harian per provinsi?
SELECT
  `Province`,
  `Date`,
  `Total Active Cases`,
  LAG(`Total Active Cases`) OVER (PARTITION BY `Province` order by `Date`) AS prev_active,
  (`Total Active Cases` - LAG(`Total Active Cases`) OVER (PARTITION BY Province order by Date)) AS delta_active
from covid19_indonesia;

-- 4. Kapan lonjakan kasus harian tertinggi terjadi di tiap provinsi?
with ranked_province_cases as (
select `Province`, `Date`, sum(`New Cases`) as total_kasus_baru,
row_number() over(partition by `Province` order by sum(`New Cases`) desc) as rn_cases
from covid19_indonesia
group by `Province`,`Date`
)
select * from ranked_province_cases
where rn_cases = 1
order by total_kasus_baru desc;

-- 5. Apakah tren recover rate meningkat per provinsi dalam 7 hari terakhir?
with recover_rate_trend as (
select `Province`, `Date`, round(avg(`Case Recovered Rate`),2) as avg_crr
from covid19_indonesia
group by `Province`, `Date`
), recent_recovered_trend as (
	select *
    from recover_rate_trend 
    where `Date` >=curdate() - interval 7 day
)
select * from recent_recovered_trend
order by `Province`,`Date`;

-- 6. Rata-rata rolling 7-hari untuk kasus per provinsi
with avg_roll_cases as (
select `Province`, `Date`, `New Cases`
from covid19_indonesia
), rolling as (
select `Province`,`Date`,`New Cases`,
round(avg(`New Cases`) over(partition by `Province` order by `Date` rows 6 preceding),2) avg_cases
from avg_roll_cases
)
select * from rolling
order by `Province`,`Date`;

-- 7. Provinsi yang paling sering berada di 3 besar kasus aktif harian nasional
with daily_ranking as (
    select
        `Province`,
        `Date`,
        `New Cases`,
        dense_rank() over (
            partition by `Date` 
            order by `New Cases` desc
        ) as rank_position
    from covid19_indonesia
),
top3_daily as (
    select 
        `Province`,
        `Date`
    from daily_ranking
    where rank_position <= 3
),
province_frequency as (
    select  
        `Province`,
        COUNT(*) as times_in_top3
    from top3_daily
    group by `Province`
)
SELECT 
    `Province`,
    times_in_top3
from province_frequency
order by times_in_top3 desc ;

-- 8. Provinsi dengan penurunan signifikan setelah puncak kasus
with daily_cases as (
	select `Province`, `Date`, `New Cases`,
    lag(`New Cases`) over(partition by `Province` order by `Date`) as prev_day_cases,
    (`New Cases` - lag(`New Cases`) over(partition by `Province` order by `Date`)) as delta_new_cases
    from covid19_indonesia
)
select * from daily_cases
where delta_new_cases < 100
order by delta_new_cases desc;

-- 9, growth mingguan antar provinsi
select * from covid19_indonesia;
with weekly_summary as (
	select `Province`, year(`Date`) as `year`, week(`Date`) as `week`, sum(`New Cases`) as weekly_cases
    from covid19_indonesia
    group by `Province`, year(`Date`), week(`Date`)
),
with_lag as (
	select `Province`,`year`,`week`,weekly_cases,
    lag(weekly_cases) over(partition by `Province` order by `year`,`week`) as prev_week_cases
    from weekly_summary
)
select `Province`, `year`, `week`,weekly_cases, prev_week_cases,
coalesce(round( 
(weekly_cases - prev_week_cases) / nullif(prev_week_cases,0),
2),0) as weekly_growth
from with_lag
where weekly_cases is not null and
prev_week_cases is not null
order by weekly_growth desc;

-- 10. Rasio pemulihan vs kematian
select `Province`, sum(`Total Recovered`) as total_recovered,
sum(`Total Deaths`) as total_deaths,
sum(`Total Cases`) as total_kasus,
round(sum(`Total Recovered`) / nullif(sum(`Total Deaths`),0),2) as recovered_death_ratio
from covid19_indonesia
group by `Province`
order by recovered_death_ratio desc;

