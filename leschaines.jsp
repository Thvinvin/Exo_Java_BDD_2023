<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>


<h2>Exercice 1 : Combien de 'e' dans notre chaîne de caractères ?</h2>

<%-- Comptage du nombre de lettres 'e' dans la chaîne --%>
<% int compteurE = 0;
   for (int i = 0; i < longueurChaine; i++) {
       if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
           compteurE++;
       }
   }
%>

<p>Le nombre de lettres 'e' dans votre chaîne est : <%= compteurE %></p>



<h2>Exercice 2 : Affichage vertical</h2>

<%-- Affichage du texte en vertical --%>
<% for (int i = 0; i < longueurChaine; i++) { %>
    <p><%= chaine.charAt(i) %></p>
<% } %>

<h2>Exercice 3 : Retour à la ligne</h2>

<%-- Affichage du texte avec retour à la ligne --%>
<% String[] mots = chaine.split(" ");
   for (String mot : mots) { %>
    <p><%= mot %></p>
<% } %>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>

<%-- Affichage d'une lettre sur deux horizontalement avec les espaces --%>
<% for (int i = 0; i < longueurChaine; i += 2) { %>
    <%-- Check if the character is a space --%>
    <% if (chaine.charAt(i) == ' ') { %>
        <span>&nbsp;</span> <%-- Use &nbsp; for a non-breaking space --%>
    <% } else { %>
        <span><%= chaine.charAt(i) %></span>
    <% } %>
<% } %>

<h2>Exercice 5 : La phrase en verlant</h2>

<%-- Affichage du texte en verlant avec les espaces --%>
<% for (int i = longueurChaine - 1; i >= 0; i--) { %>
    <%-- Check if the character is a space --%>
    <% if (chaine.charAt(i) == ' ') { %>
        <span>&nbsp;</span> <%-- Use &nbsp; for a non-breaking space --%>
    <% } else { %>
        <span><%= chaine.charAt(i) %></span>
    <% } %>
<% } %>


<h2>Exercice 6 : Consonnes et voyelles</h2>
    <p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

    <%
       // Initialisation des compteurs
       int nombreVoyelles = 0;
       int nombreConsonnes = 0;

       // Conversion de la chaîne en minuscules pour simplifier la vérification
       String chaineMinuscules = chaine.toLowerCase();

       // Boucle pour compter les voyelles et les consonnes
       for (int i = 0; i < longueurChaine; i++) {
           char caractere = chaineMinuscules.charAt(i);
           if (Character.isLetter(caractere)) {
               if (caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u' || caractere == 'y') {
                   nombreVoyelles++;
               } else {
                   nombreConsonnes++;
               }
           }
       }
    %>

    <p>Nombre de voyelles dans votre texte : <%= nombreVoyelles %></p>
    <p>Nombre de consonnes dans votre texte : <%= nombreConsonnes %></p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
