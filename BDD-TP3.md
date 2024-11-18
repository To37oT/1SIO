---
layout: default
title: TP3 - Bases de données
permalink: /bdd-tp3/
published: true
date: 2024
---

# TP3 : Bases de données
------

Pour toutes les réponses attendues, les réponses doivent être justifiées et les requêtes utilisées doivent être indiquées.

Les encadrés rouges représentent le travail à faire.

On dispose de 3 scripts :
- villes_etudiant : base de données villes_etudiant avec la table departements
- villes : table villes
- regions : table régions

##### Ajouter la base sur le serveur
> - Créer une base de données comportant les différentes tables fournies

Le responsable n’a pas eu le temps de remplir totalement la base de données. Il vous transmet le lien suivant :

[Wikipédia](https://fr.wikipedia.org/wiki/Région_française)

Il souhaite disposer du code Iso de chaque région.

##### Modification
> - Est-il nécessaire de modifier la structure de base de données ?
> - Ajouter **toutes** les informations des régions **en utilisant uniquement des requêtes**. Vous aurez besoin de faire des recherches sur la requête **INSERT INTO**.

##### Informations uniques
>
>La table région contient un numéro ainsi qu’un code Iso unique.
>
> - Quel est l’intérêt de conserver le numéro ?

##### Cohérence des données
>Le responsable souhaite assurer une certaine cohérence dans la base de données.
>
>- Les noms des champs de toutes les tables sont-ils cohérents ?
>
>- Corriger la ou les tables concernées.
>
>- Quel est d’après-vous la convention de nommage mise en place pour les noms de champs ?

##### Intégrité référentielle
>Le responsable souhaite mettre en place des liens (intégrité référentielle) entre les données de ses tables. 
>
>- Pourquoi ne peut-il pas le faire actuellement ? 
>
>- Corriger les tables afin de répondre au besoin de votre responsable (Alter table...)
>
>- Mettre en place **les relations nécessaires** entre vos tables. Corriger votre base si nécessaire.
>  (indice : ajout d'index... pour pouvoir ajouter les clé étrangère... on delete/update restrict...)

##### Compréhension et adaptation
>
>Afin d'être bien sûr de la compréhension du sujet, votre responsable vous pose les questions suivantes :
>
>Quelle est la différence entre une ville et une commune dans la base actuelle ?
>
>Dans combien de régions se trouvent un département ?
>
>Modifier, votre table Ville et votre table Département afin de prendre en compte cette réponse **en n'utilisant que des requêtes SQL**. (delete... clés étrangères...)
>
>Modifier le reste de la base de données en conséquence **en n'utilisant que des requêtes SQL**. (update...)

##### Questions complémentaires
>
>Pourquoi le code postal est de type varchar ? 
>
>Pourquoi avoir choisi un varchar de taille 45 pour le nom de la ville ? Justifier la réponse.
>
>Afficher la nouvelle base de données obtenue via le concepteur/designer. 
