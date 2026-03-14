# EJHQuiz – Application de Quiz

## Description
EJHQuiz est une application web qui permet aux utilisateurs de tester leurs connaissances dans différents domaines comme :
- Français
- Chimie
- Mathématiques

Chaque quiz contient plusieurs questions dans la base de données, mais seulement **5 questions sont sélectionnées aléatoirement** à chaque tentative.

---

## Technologies utilisées
- Java
- Spring Boot
- Thymeleaf
- MySQL
- HTML / CSS
- Bootstrap

---

## Installation du projet

1. Cloner ou télécharger le projet
2. Ouvrir le projet dans NetBeans
3. Configurer la base de données MySQL

Créer une base appelée :

quizapp

Modifier le fichier :

application.properties

Exemple :

spring.datasource.url=jdbc:mysql://localhost:3306/quizapp  
spring.datasource.username=root  
spring.datasource.password=yourpassword  

---

## Lancer l'application

Exécuter la classe :

QuizappApplication.java

Puis ouvrir dans le navigateur :

http://localhost:8080

---

## Utilisation

1. Choisir un quiz (Français, Chimie, Mathématiques)
2. Cliquer sur **C'est parti**
3. Répondre aux 5 questions
4. Voir le score final
5. Cliquer sur **Réessayer** pour recommencer

---

## Structure du projet

### Entités
- Quiz
- Question
- Answer

### Repositories
- QuizRepository
- QuestionRepository
- AnswerRepository

### Controllers
- QuizController
- QuizDetailController

### Pages HTML
- index.html
- welcome.html
- question.html
- result.html

---

## Fonctionnalités principales

- Choix du quiz
- Questions affichées une par une
- Validation obligatoire de la réponse
- Score final affiché
- Questions sélectionnées aléatoirement
- Interface responsive (mobile / tablette / ordinateur)

---

## Auteur
Projet réalisé par : ERARD John Harly