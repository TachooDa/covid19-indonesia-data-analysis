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

## 🗂️ Deskripsi Data
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
