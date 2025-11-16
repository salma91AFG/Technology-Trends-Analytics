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

## 📦 **Résultats générés**

- Données extraites et structurées dans `popular-languages.csv`
- Visualisation comparative enregistrée (`Comparaisons salariale entre langage.png`)
- Résultats exploitables dans les étapes suivantes (tableau de bord, rapport final, etc.)

---

## 🧾 **Rôle dans le pipeline du projet**

Cette étape constitue **une source complémentaire au module API**.  
Elle fournit un dataset externe qui servira à :

✔️ enrichir l’analyse comparative  
✔️ illustrer les tendances de salaire des langages populaires  
✔️ produire des visualisations dans le **rapport final**  
✔️ construire des graphiques ou cartes dans le **tableau de bord final**

---
