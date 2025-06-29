# COVID-19 Indonesia Data Analysis

## 📊 Overview
Ini merupaka projek ke tiga saya dalam berusaha memahami konsep cleaning data,exploratory data analysis (EDA) dan juga melakukan visualisasi data pandemi COVID-19 di seluruh provinsi di Indonesia pada rentang Maret,2020 - April,2020[dataset] menggunakan MySql. Dalam hasilnya Proyek ini memberikan wawasan strategis mengenai pola penyebaran, dampak, dan pemulihan COVID-19 di Indonesia melalui 6 visualisasi inti dan analisis statistik yang baik.

## 🎯 Project Objectives
- Menganalisis tren dan pola COVID-19 di seluruh provinsi di Indonesia
- Membuat visualisasi strategis untuk pengambilan keputusan kesehatan masyarakat
- Memberikan wawasan berbasis data tentang tingkat kematian kasus, pola pemulihan, dan variasi regional
- Mendukung pembuat kebijakan dengan intelijen pandemi yang dapat ditindaklanjuti

## 📁 Project Structure
```
covid19-indonesia-analysis/
├── README.md
├── data/
│   ├── raw/
│   │   └── covid19_indonesia.csv
│   └── processed/
│       └── covid19_indonesia_cleaned.csv
├── sql/
│   └── EDA_Covid_indo.sql
├── dashboards/ 
│   │   ├── covid_strategic_dashboard.pdf
│   │   └── dashboard_links.md
│   └── screenshots/
│       ├── cfr_provincial_analysis.png
│       ├── timeline_spread_analysis.png
│       ├── active_cases_delta.png
│       ├── provincial_ranking_dynamics.png
│       ├── recovery_vs_death_comparison.png
│────── └── peak_timing_analysis.png

```

## 🗂️ Data Description
Dataset ini berisi informasi COVID-19 untuk provinsi-provinsi di Indonesia dengan kolom-kolom utama sebagai berikut:
- **Date**: Daily records from pandemic start
- **Province**: 34 Indonesian provinces
- **Island**: Major Indonesian islands (Java, Sumatra, Kalimantan, etc.)
- **Location**: Specific locations within provinces
- **Total Cases**: Cumulative confirmed cases
- **New Cases**: Daily new confirmed cases
- **Total Deaths**: Cumulative deaths
- **New Deaths**: Daily new deaths
- **Total Recovered**: Cumulative recovered cases
- **Total Active Cases**: Current active cases
- **Case Fatality Rate**: Death rate percentage
- **Case Recovered Rate**: Recovery rate percentage
- **Growth factor of New Cases**
- **Growth Factor of New Deaths**

## 📈 Core Strategic Visualizations

### 1. Analisis Provinsi **Angka Kematian Kasus (CFR) ** 💀
- **Tujuan**: Mengidentifikasi provinsi dengan angka kematian tertinggi
- **Key Insight**: Provinsi yang membutuhkan intervensi sistem kesehatan segera
- **Implementasi Looker Studio**: Diagram batang dengan pemformatan bersyarat + peta geografis dengan intensitas warna
- **Nilai Strategis**: Alokasi sumber daya dan prioritas peningkatan layanan kesehatan

### 2. **Timeline Spread Analysis** 📅
- **Tujuan**: Memahami titik masuk pandemi dan kecepatan penyebaran
- **Key Insight**: Tanggal kasus pertama dan pola penyebaran geografis
- **Implementasi Studio Looker**: Penyebaran tanggal vs Provinsi dengan ukuran gelembung berdasarkan dampak total
- **Nilai Strategis**: Kecerdasan epidemiologi dan kesiapsiagaan wabah di masa depan

### 3. **Active Cases Delta Trends** 📈
- **Tujuan**: Penilaian beban sistem perawatan kesehatan secara real-time
- **Key Insight**: Perubahan harian dalam beban kasus aktif di seluruh provinsi
- **Implementasi Studio Looker**: Bidang yang dihitung untuk delta kasus aktif dengan garis tren
- **Nilai Strategis**: Perencanaan kapasitas layanan kesehatan dan penyebaran sumber daya

### 4. **Provincial Ranking Dynamics** 🏃‍♂️
- **Tujuan**: Mengidentifikasi titik-titik penyebaran COVID-19 yang konsisten vs sporadis
- **Key Insight**: Provinsi yang paling sering memiliki 3 kasus harian teratas
- **Implementasi Looker Studio**: Tabel peringkat dengan format bersyarat dan indikator tren
- **Nilai Strategis**: Strategi intervensi yang ditargetkan dan prioritas pemantauan

### 5. **Recovery vs Death Comparison** ⚖️
- **Tujuan**: Membandingkan efektivitas pengobatan di seluruh provinsi
-**Key Insight**: Kinerja provinsi dalam hasil pasien
- **Implementasi Looker Studio**: X = Kematian, Y = Sembuh, Ukuran = Jumlah Kasus dengan indikator rasio
- **Nilai Strategis**: Penilaian kualitas layanan kesehatan dan identifikasi praktik terbaik

### 6. **Peak Timing Analysis** ⏰
- **Tujuan**: Memahami sinkronisasi gelombang pandemi
- **Key Insight**: Ketika setiap provinsi mengalami beban kasus puncak
- **Implementasi Studio Looker**: Peta panas Bulan/Provinsi dengan warna intensitas
- **Nilai Strategis**: Penentuan waktu kebijakan dan perencanaan respons yang terkoordinasi

## 🔍 Comprehensive EDA Foundation

### SQL Analysis Coverage (20+ Advanced Queries)
- **Statistik Dasar**: Total nasional, rata-rata, dan metrik utama
- **Analisis Temporal**: Tren harian, pola bulanan, pertumbuhan mingguan
- **Perbandingan Geografis**: Peringkat provinsi, analisis berdasarkan pulau
- **Analisis Tingkat Lanjut**: windows function, CTE, dan penghitungan yang rumit
- **Pola Pemulihan**: Tingkat kesembuhan, rasio kematian, dan analisis hasil
- **Analisis Tren**: Rata-rata bergulir, tingkat pertumbuhan, dan deteksi pola

### Key EDA Insights Available
- Rata-rata dan peringkat kasus harian provinsi
- Distribusi dampak pandemi berdasarkan pulau
- Tingkat pemulihan yang ekstrem dan kinerja layanan kesehatan
- Puncak kasus aktif dan titik stres sistem
- Pola pertumbuhan mingguan dan analisis percepatan
- Rata-rata bergulir 7 hari untuk perataan tren
- Garis waktu kasus pertama dan kecepatan penyebaran
- Analisis tingkat kematian dan pola kematian

## 🛠️ Technologies Used
- **SQL**: Advanced data analysis with CTEs and window functions
- **Looker Studio**: Interactive dashboards and strategic visualizations
- **MySQL**: Database management and complex query processing
- **Git**: Version control and project management

## 📊 Dashboard Access
Access the strategic dashboards here:
- [COVID-19 Strategic Analysis Dashboard](https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)


## 🔑 Strategic Insights Summary

### Healthcare System Intelligence
- **Provinsi-provinsi dengan CFR Kritis**: Identifikasi area yang membutuhkan intervensi segera
- **Efektivitas Pengobatan**: Efektivitas pengobatan: Tolok ukur kinerja layanan kesehatan provinsi
- **Perencanaan Kapasitas**: Penilaian beban waktu nyata melalui delta kasus aktif

### Epidemiological Intelligence
- **Pola Penyebaran**: Memahami jalur masuk dan penularan pandemi
- **Sinkronisasi Gelombang**: Analisis waktu untuk perencanaan respons terkoordinasi
- **Dinamika Titik Panas**: Perbedaan antara area wabah yang konsisten dan sporadis

### Policy Decision Support
- **Alokasi Sumber Daya**: Penentuan prioritas berdasarkan data berdasarkan CFR dan analisis puncak
- **Penentuan Waktu Intervensi**: Penentuan waktu yang strategis berdasarkan pola puncak di tingkat provinsi
- **Prioritas Pemantauan**: Area fokus berdasarkan dinamika peringkat dan kecepatan penyebaran

## 📝 How to Use This Repository

### For Public Health Officials
1. Review strategic visualizations in [dashboard](dashboard/covid19_dashboard_report.pdf)
2. Access interactive dashboards for real-time analysis (https://lookerstudio.google.com/reporting/220a9231-9153-4317-bbf8-1e4d2b173f65)

### For Policy Makers
1. Fokus pada analisis CFR untuk keputusan alokasi sumber daya
2. Gunakan garis waktu penyebaran untuk memahami pola wabah
3. Memanfaatkan dinamika peringkat untuk intervensi yang ditargetkan

### For Data Scientists
1. Periksa kueri SQL tingkat lanjut in [sql/EDA_Covid_Indo](sql/EDA_Covid_indo.sql)
2. Mempelajari metodologi visualisasi dan pendekatan strategis
3. Mengadaptasi kerangka analisis untuk wilayah atau penyakit lain

### For Healthcare Administrators
1. Memprioritaskan perbandingan pemulihan vs kematian untuk tolok ukur kinerja
2. Gunakan delta kasus aktif untuk perencanaan kapasitas
3. Referensi waktu puncak untuk persiapan staf dan sumber daya

## 🚀 Future Enhancements
- **Vaccination impact** analysis integration
- **Demographic stratification** by age and risk groups
- **Economic correlation** analysis with case patterns
- **Predictive modeling** for outbreak forecasting

## 📧 Contact
**Author**: [Faraj Hafidh]  
**Email**: [faraj.hafidh@gmail.com]  
**LinkedIn**: [Your LinkedIn Profile]  
**Project Date**: [2025-06-29]


---
*Analisis ini berfokus pada 6 visualisasi strategis yang dirancang untuk memberikan dampak kebijakan yang maksimal, didukung oleh fondasi EDA yang komprehensif.*
