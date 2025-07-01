# COVID-19 Indonesia Data Analysis -- Exploratory Data Analysis

## 📊 Overview
Ini merupaka projek ke tiga saya dalam berusaha memahami konsep cleaning data,exploratory data analysis (EDA) dan juga melakukan visualisasi data pandemi COVID-19 di seluruh provinsi di Indonesia pada rentang Maret 2020 - April 2020 menggunakan MySql. Dalam hasilnya Proyek ini memberikan wawasan strategis mengenai pola penyebaran, dampak, dan pemulihan COVID-19 di Indonesia melalui 6 visualisasi inti dan analisis statistik yang baik.

## 🎯 Tujuan Proyek
- Menganalisis tren dan pola COVID-19 di seluruh provinsi di Indonesia
- Membuat visualisasi strategis untuk pengambilan keputusan kesehatan masyarakat
- Memberikan wawasan berbasis data tentang tingkat kematian kasus, pola pemulihan, dan variasi regional
- Mendukung pembuat kebijakan dengan intelijen pandemi yang dapat ditindaklanjuti

## 📁 Struktur Proyek
```
covid19-indonesia-analysis/
├── README.md
├── data/
│   ├── raw/
│   │   └── covid19_indonesia_raw.csv
│   └── processed/
│       └── covid19_indonesia.csv
├── sql/
│   └── EDA_Covid_indo.sql
├── dashboards/ 
│   │   ├── covid19_dashboard_reports.pdf
│   │   └── dashboard_links.md
│   └── screenshots/
│       ├── cfr_provincial_analysis.png
│       ├── timeline_spread_analysis.png
│       ├── active_cases_delta.png
│       ├── provincial_ranking_dynamics.png
│       ├── recovery_vs_death_comparison.png
│────── └── peak_timing_analysis.png

```
## 📊 Insight Summary
Berdasarkan hasil anailis terhadap data COVID-19 Indonesia  periode Maret-April 2020, didapatkan beberapa insight penting yang menggambarkan bagaimana pola penyebaran dan dampak pandemi di indonesia pada tahap awal

## Matriks
- **Total Kasus Nasional**: 39,912
- **Total Kematian**: 6,418
- **Total Sembuh**: 17,293
- **Case Fatality Rate Nasional**: 42%

## 🎯 Key Insight
1. **Dominasi DKI Jakarta Sebagai Episentrum**
   - Di DKI Jakarta mencatat kasus pertama kali covid-19 pada 1 maret 2020 dan menjadi provinsi dengan kasus tertinggi (`7,130 kasus`)
   - Provinsi DKI Jakarta menunjukan 34 kali berada di posisi teratas dalam statistik harian
   - Konsistem memimpin dalam grafik "delta active" dengan fluktuasi tertinggi
  
*Insight*: Jakarta sebagai ibukota dan pusat aktivitas ekonomi menjadi pintu masuk utama COVID-19 ke indonesia
[link dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

2. **Pola Penyebaran Regional Kasus pertama kali COVID-19 di Indonesia**
   Berikut urutan penyebaran pertama kali secara regional untuk covid-19 di indonesia yang menunjukan pola cukup menarik:
   - DKI Jakarta pada tanggal `1 Maret 2020` -> Jalur utama
   - Bali Pada tanggal `11 Maret 2020` -> Destinasi wisata domestic dan internasioal
   - Jawa Barat pada tanggal `13 Maret 2020`
   - Jawa Tengah pada tanggal `19 Maret 2020`
   - Jawa Timur pada tanggal `21 Maret 2020`
     
*Insight*: Ditemui bahwa penyebaran virus juga dibarengi dengan kemungkinan aktivitas ekonomi dan pariwisata juga, bukan hanya melalui kedekatan serta posisi geografis saja.
[link dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

3. **Disparitas pada Case Fatality Rate yang signifikan**
   Analisis CFR menunjukkan variasi yang cukup ekstream di antar provinsi yang memiliki kasus covid-19 di indonesia:
   - Maluku CFR tertinggi (`~80 - 100%`)
   - Bali CFR tertinggi ke dua dengan CFR (`83,57%`)
   - DKI Jakarta, Jawa Timur dan banten CFR terendah (`40 - 50%`)
     
*Insight*: Perbedaan CFR mengindikasikan disparitas pada kapasitas sistem kesehatan dan kemungkinan under-reporting di daerah dengan infrastruktur dan fasilitas kesehatan yang terbatas.
[link dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

4. **Tren temporal yang menunjukan akselerasi**
   - Grafik `New Case per Day` menunjukan tren eksponensial dari maret hingga april 2020
   - Puncak kasus baru mencapai ~400 kasus/hari pada awal bulan April
   - DKI Jakarta menjadi provinsi yang konsisten dengan menunjukkan delta active dengan kasus dan volatilitas tinggi

*Insight*: Pada fase early outbreak menunjukkan pertumbuhan yang belum terkendali, ini mengindikasikan bahwa diperlukannya intervensi kebijakan yang lebih ketat
[link dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

5. **Konsentrasi geografis di pulau jawa**
   - Provinsi Jawa mendominasi dengan 5 dari 8 provinsi top
   - DKI Jakarta, jawa barat dan jawa timur membentuk triangle zone dengan kasus tertinggi
   - Provinsi di luar jawa menunjukkan pola yang lebih tersebar dan CFR yang bervariasi

*Insight*: Density population dan konektivitas ekonomi di jawa menciptakan vulnerability cluster yang tinggi.
[link dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

## 🔍 Data Quality & Limitations
## Anomali Data
  1. CFR Nasional 42% tampak tinggi untuk standar global pada periode tersebut
  2. Adanya entry 'N/A' yang menempati posisi kedua dalam ranking, sebanyak (27 kali)
  3. Beberapa provinsi menunjukkan CFR ekstrem yang mungkin disebabkan sample size yang kecil

## Kemungkinan Penyebab
  1. Under-testing pada fasel awal pandemi
  2. Reporting delays dari daerah terpencil
  3. Different testing protocols antar provinsi
  4. Healthcare capacity limitations di daerah CFR tinggi

## 💡 Strategic Implications
## Untuk Public Health Policy:  
  1. Prioritas resource allocation ke provinsi dengan CFR tinggi
  2. Strengthening surveillance di hub transportation
  3. Inter-provincial coordination untuk contact tracing

## 🛠️ Teknologi yang digunakan
- **SQL**: Analisis data tingkat lanjut dengan CTE dan fungsi jendela
- **Looker Studio**: Dashboard interaktif dan visualisasi strategis
- **MySQL**: Manajemen basis data dan pemrosesan kueri yang kompleks
- **Git**: version Control dan manajemen proyek

## 📊 Akses Dashboard
Akses Dashboard nya `Di link dibawah ini`:
- [COVID-19 Strategic Analysis Dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)
- Periksa kueri SQL tingkat lanjut di [sql/EDA_Covid_Indo](sql/EDA_Covid_indo.sql)
- Hasil Insight dari dashboard dapat dilihat
  [Key Insight dalam bahasa indonesia]()
  
  
## 📧 Contact
**Author**: [Faraj Hafidh]  
**Email**: [faraj.hafidh@gmail.com]   
**Project Date**: [2025-06-29]


---
