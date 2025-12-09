<h1 style="text-align:center; font-size:42px; margin-top:20px;">
Analyse du paysage technologique 2024 – Stack Overflow Developer Survey
</h1>

## 📌 Présentation du projet

Ce projet analyse en profondeur le **paysage technologique en 2024**, en combinant trois sources de données :

- **Stack Overflow Developer Survey 2024** (~65k répondants)  
- **API d’offres d’emploi** (service Flask local)  
- **Web scraping** d’une table de salaires moyens par langage  

**Objectif :** produire une analyse professionnelle, exploitable et documentée du marché technologique :  
**usages réels des langages**, **préférences**, **tendances émergentes**, **satisfaction** et **rémunération**.

La méthodologie suit une démarche d’analyste de données complète :  
**collecte → préparation → normalisation → analyses exploratoires → synthèse → recommandations.**

---

## 🎯 Objectifs

- Décrire le **profil global des développeurs** : âge, pays, expérience, niveau d’études, industrie, statut, mode de travail.  
- Identifier les **langages les plus utilisés**, **les plus souhaités** et **les plus admirés**.  
- Mettre en relation **technologies, salaires, industries et profils**.  
- Détecter les **tendances structurelles** du marché (Web, Data, IA, performance).  
- Fournir un pipeline analytique **robuste, clair et reproductible**.

---

## 🗂️ Organisation du projet

🗂️  
├──🗂️Data/  
│   ├──🗂️ External/  
│   │   ├──🗂️Api/  
│   │   │   └── job-postings.xlsx  
│   │   └──🗂️WebScraping/  
│   │       └── popular-languages.csv  
│   │  
│   └──🗂️Survey/  
│       ├──🗂️raw/  
│       │   └── survey-data_V0.csv  
│       └──🗂️processed/  
│           ├── survey-data_V1_noduplicates.csv  
│           ├── survey-data_V2_clean_missing_outliers.csv  
│           └── survey-data_V3_correct.csv  
│  
├──🗂️Notebooks/  
│   ├── 01_api_collection.ipynb  
│   ├── 02_webscraping_collection.ipynb  
│   ├── 03_survey_initial_exploration.ipynb  
│   ├── 04_survey_cleaning_duplicates.ipynb  
│   ├── 05_survey_missing_values.ipynb  
│   ├── 06_survey_inconsistencies_normalization.ipynb  
│   ├── 07_eda_developers_profile.ipynb  
│   ├── 08_eda_language_trends.ipynb  
│   └── 09_eda_tools_and_technologies.ipynb  
│  
├──🗂️Reports/  
│   ├──🗂️Figures/  
│   ├── Rapport d’Analyse – Stack Overflow Developer Survey.pdf  
│   └── Rapport d’Analyse – Stack Overflow Developer Survey.pptx  
│  
├──🗂️src/  
│   ├── Jobs_API.ipynb  
│   └── jobs.json  
│  
├── requirements.txt  
└── README.md

---

## 🔧 Pipeline analytique

### 📥 Collecte
- Import du dataset brut Stack Overflow Survey (65k répondants).  
- Appels API (Flask) pour collecter des volumes d’offres d’emploi par ville et par technologie.  
- Scraping d’une page HTML pour les salaires moyens par langage.

---

### 🧹 Préparation & Nettoyage

- Analyse structurelle et détection des colonnes peu pertinentes.  
- Suppression des doublons logiques via un ensemble de variables clés.  
- Traitement des valeurs manquantes : mode, médiane, moyenne par pays.  
- Gestion des **outliers salariaux** via IQR.  
- Reconstruction complète de `ConvertedCompYearly` via :  
  - taux de change calculés,  
  - moyenne par pays,  
  - médiane finale pour les cas restants.  
- Normalisation :  
  - pays validés via **pycountry**,  
  - transformation de `Employment` en variables binaires,  
  - création de `ExperienceLevel` (débutant / junior / sénior).

---

### 📊 Normalisation des technologies

- Colonnes multivaluées (`LanguageHaveWorkedWith`, `LanguageWantToWorkWith`, etc.) transformées via :  
  - `split(";")`  
  - `explode()`  
- Toutes les analyses sont réalisées en **pourcentages**, pas en valeurs brutes.

---

## 🔍 Analyses exploratoires (EDA)

### 👥 Profil des développeurs
- Majoritairement entre **25 et 34 ans**.  
- Répartition géographique très large (plus de 180 pays).  
- **Bachelor / Master** dominants.  
- Remote et Hybrid largement adoptés.  
- Satisfaction élevée (médiane ≈ 7/10).

### 💻 Langages de programmation
- **Langages les plus utilisés :** JavaScript, Python, SQL, HTML/CSS.  
- **Langages les plus souhaités :** Python, JS, TypeScript, Rust, Go.  
- **Langages admirés :** Python, TypeScript, JavaScript, SQL, Rust.  

### 💼 Industrie & technologies
- JavaScript domine dans la majorité des secteurs.  
- Python règne sur la **data, IA, recherche, énergie et enseignement**.  

### 💰 Salaires
Les salaires les plus élevés concernent les langages spécialisés :  
**Clojure, Elixir, Erlang, Scala, Rust, Ruby**, etc.  
→ Rareté + complexité technique = forte valeur salariale.

---

## 📊 Principaux enseignements

- Le marché est structuré autour du duo **Web (JS/TS)** + **Data (Python/SQL)**.  
- **Rust et Go** confirment leur montée et leur pouvoir d’attraction.  
- Les langages rares et complexes (**Clojure, Erlang, Scala**) sont associés aux rémunérations les plus élevées.  
- Le travail Remote est désormais la norme dans la tech.  

---

## 💡 Recommandations

### Pour les développeurs
- Consolider les fondamentaux : **JS, TS, Python, SQL**.  
- Explorer les niches à forte valeur : **Rust, Scala, Elixir, Clojure**.  
- Adapter son stack aux secteurs ciblés (Web, IA, Fintech, systèmes distribués).

### Pour les entreprises
- Standardiser les environnements techniques (JS/TS, Python, SQL).  
- Maintenir Remote/Hybrid comme avantage compétitif.  
- Investir dans les compétences émergentes (Rust, Go).

### Pour les organismes de formation
- Python comme langage d’entrée (IA, data, automation).  
- Introduction systématique de SQL + HTML/CSS/JS.  
- Modules avancés sur Rust / Go / Scala pour adresser la demande spécialisée.

---

## 🛠️ Stack technique

- **Python**  
- pandas, numpy, matplotlib, seaborn  
- beautifulsoup4, requests  
- flask (API)  
- pycountry (normalisation)  
- Jupyter Notebooks  
- Git / GitHub  

---

## 🚀 Prise en main

### 1. Cloner le dépôt
```bash
git clone https://github.com/salma91AFG/Technology-Trends-Analytics.git
```

### 2. Installer les dépendances

```bash
pip install -r requirements.txt
```


### 3. Lancer l’API d’offres d’emploi
```bash
python src/api/jobs_api.py
```

---

## 👤 Auteur

**Salma Djaid – Data Analyst**  
Conception du pipeline, nettoyage, EDA, visualisations et recommandations.




