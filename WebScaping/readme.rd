# 📘 **Collecte et extraction de données via Web Scraping**

Cette section du projet montre comment extraire des informations depuis une page web statique pour alimenter une analyse de tendances technologiques.  
L’objectif est d’automatiser l’extraction, le nettoyage et l’exportation de données structurées à partir d’une source web.

---

## 🔎 **Vue d’ensemble**

Le notebook **Notebook collecte Data Webscaping.ipynb** extrait un tableau contenant :

- Le **nom du langage de programmation**
- Le **salaire annuel moyen associé**

Ces données sont stockées dans un fichier CSV local pour des analyses ultérieures.

---

## 🧱 **Structure du dossier**
2_webscraping/
│
├── Notebook collecte Data Webscaping.ipynb # Script d’extraction + nettoyage
├── popular-languages.csv # Données extraites et nettoyées
└── Comparaisons salariale entre langage.png # Visualisation générée

---

## ⚙️ **Processus de collecte**

1. Téléchargement du contenu HTML via `requests`
2. Parsing du code avec BeautifulSoup
3. Extraction dynamique du tableau ciblé
4. Construction d’un DataFrame avec Pandas
5. Nettoyage :
   - Suppression des symboles
   - Conversion des salaires en format numérique
6. Export dans `popular-languages.csv`
7. Génération d’un graphique comparatif

---

## 📊 **Visualisation**

Un graphique en barres (Comparaisons salariale entre langage.png) permet de visualiser les écarts de salaires entre les langages les plus populaires.

---

## 🎯 **Compétences démontrées**

- Web scraping avec BeautifulSoup
- Traitement de données HTML
- Manipulation et nettoyage de données avec Pandas
- Export vers des formats structurés (CSV)
- Visualisation simple avec Matplotlib/Seaborn

---

## 🧩 **Étape suivante**

Les données collectées seront utilisées pour enrichir l’analyse globale du projet (préparation à l’analyse exploratoire et à la visualisation interactive).

---
