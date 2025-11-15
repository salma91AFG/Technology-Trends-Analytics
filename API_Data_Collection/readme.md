📘 Collecte de données via API (Partie 1)

📂 1_api_data_collection/

Collecte de données d’emploi via une API Flask simulée

Cette section met en place une API locale utilisée pour exposer des offres d’emploi et alimenter la première étape du pipeline analytique.
L’objectif est de reproduire un fonctionnement réaliste où un service backend sert de source de données structurées.

🔎 1. Vue d’ensemble

L’API Flask sert de couche d’accès aux données et expose un dataset JSON contenant des annonces d’emploi.
Le notebook associé interroge cette API, filtre les résultats selon différents critères, agrège les données pertinentes et exporte les résultats dans un format exploitable.

Ce module couvre :

la consommation d’un endpoint API

l’utilisation de paramètres de requête (query string)

la récupération de données JSON

l’agrégation (par localisation et par technologie)

la génération d’un fichier Excel pour les étapes suivantes

🧱 2. Architecture du module
1_api_data_collection/
│
├── API_notebook.ipynb      # Collecte, filtrage, agrégation et export
├── Jobs_API.ipynb          # API Flask exécutée localement
├── jobs.json               # Dataset source exploité par l’API
└── job-postings.xlsx       # Résultats générés après exécution

⚙️ 3. API Flask : rôle et fonctionnement

L’API joue le rôle d’un micro-service simple capable d’exposer et de filtrer des offres d’emploi.

Elle :

charge un dataset local (jobs.json)

expose des endpoints pour récupérer les données brutes

applique un filtrage via expressions régulières selon les paramètres fournis

Endpoints principaux
Méthode	Endpoint	Description
GET	/data/all	Retourne toutes les offres d’emploi
GET	/data?...	Filtre selon un ou plusieurs critères
Paramètres disponibles

Job Title

Key Skills

Location

Role Category

Industry

Role

Exemples de valeurs filtrables :
Python, C++, SQL Server, Seattle, New York, etc.

▶️ 4. Démarrage de l’API

Pour lancer le serveur Flask :

Ouvrir Jobs_API.ipynb

Exécuter toutes les cellules

Le serveur devient accessible sur :

http://127.0.0.1:5000/data


Tant que le notebook reste actif, les autres scripts peuvent interroger l’API via requests.

🧮 5. Collecte et consolidation

Le notebook API_notebook.ipynb automatise la collecte :

récupération des offres selon différentes localisations

filtrage selon les technologies recherchées

comptage du nombre d’annonces pour chaque critère

création d’un fichier Excel contenant deux onglets :

jobs locations → Nombre d’offres par ville

langages jobs → Nombre d’offres par technologie

Ce processus fournit un jeu de données structuré et directement exploitable pour les étapes d’analyse.

📦 6. Résultats générés

À l’issue de l’exécution :

un fichier job-postings.xlsx est généré

les données agrégées peuvent être réutilisées dans les étapes suivantes (web scraping, analyse exploratoire, visualisation)

🧾 7. Positionnement dans le pipeline

Cette partie représente l’entrée du projet.
Elle fournit une source contrôlée, normalisée et reproductible, servant de base aux autres modules :

Web Scraping

Analyse exploratoire (EDA)

Modélisation

Dashboard final
