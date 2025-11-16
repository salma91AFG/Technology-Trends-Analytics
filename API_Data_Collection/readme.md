# 📘 **Collecte de données via API (Partie 1)**

📂 **Dossier :** `1_api_data_collection/`  
Collecte de données d’emploi via une API Flask simulée.

Cette section met en place une API locale qui expose des offres d’emploi et sert de première source de données au pipeline analytique.  
Objectif : reproduire un scénario réaliste où une application backend renvoie des données structurées consommées par un script Python.

---

## 🔎 **Vue d’ensemble**

L’API Flask fonctionne comme une couche d’accès aux données basée sur un fichier JSON d’offres d’emploi.  
Le notebook associé interroge cette API, applique des filtres, agrège les données puis exporte les résultats.

Ce module couvre :

- Appels à une API REST
- Utilisation de paramètres de requête (`query string`)
- Exploitation d’un JSON issu d’un endpoint
- Agrégation par localisation et par technologie
- Export vers Excel pour les étapes suivantes

---

## 🧱 **Structure du module**
```
1_api_data_collection/
│
├── API_notebook.ipynb # Collecte, filtrage, agrégation et export
├── Jobs_API.ipynb # API Flask exécutée localement
├── jobs.json # Dataset source consommé par l’API
└── job-postings.xlsx # Résultats générés après exécution
```


---

## ⚙️ **API Flask – Rôle et fonctionnement**

Cette API agit comme un micro-service permettant de servir et filtrer des offres d’emploi.

Elle :

- charge un fichier JSON local (`jobs.json`)
- expose des endpoints REST
- filtre les données via regex et paramètres de requêtes (`?Key Skills=Python`, etc.)

### **Endpoints principaux**

| Méthode | Endpoint    | Description                                  |
|---------|-------------|----------------------------------------------|
| GET     | `/data/all` | Renvoie toutes les offres d’emploi           |
| GET     | `/data?...` | Filtre selon un ou plusieurs critères        |

### **Paramètres supportés**

- Job Title
- Key Skills
- Location
- Role Category
- Industry
- Role

Exemples de valeurs filtrables :  
`Python`, `C++`, `SQL Server`, `Seattle`, `New York`, etc.

---

## ▶️ **Démarrer l’API**

1. Ouvrir `Jobs_API.ipynb`
2. Exécuter toutes les cellules pour lancer le serveur Flask

L’API devient accessible à l’adresse :

http://127.0.0.1:5000/data


Tant que le notebook est actif, les scripts peuvent interroger l'API via `requests`.

---

## 🧮 **Collecte & consolidation**

Le notebook `API_notebook.ipynb` exécute automatiquement :

- collecte d’annonces par localisation
- collecte d’annonces par technologie
- comptage du nombre d’offres par critère
- génération d’un fichier Excel (`job-postings.xlsx`)

Le fichier contient deux onglets :

| Onglet             | Contenu                                 |
|--------------------|-----------------------------------------|
| `jobs locations`   | Nombre de postes par ville              |
| `langages jobs`    | Nombre de postes par technologie        |

---

## 📦 **Résultats générés**

Après exécution :

✔️ `job-postings.xlsx` est créé  
✔️ Les données sont prêtes pour analyse, visualisation ou enrichissement

---

## 🧾 **Rôle dans le pipeline global**

Cette étape représente **la source d’entrée du projet** :  
Elle fournit un jeu de données propre, contrôlé et reproductible pour les modules suivants :


- Analyse exploratoire (EDA)
- Dashboard final

---
