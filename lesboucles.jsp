<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>

<%-- Boucle for pour afficher un carré d'étoiles --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
        <%= "*"%>
    <% } %>
    </p>
<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>

<%-- Boucle for pour afficher un triangle rectangle gauche --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int i = 1; i <= j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 3 : Triangle rectangle inversé</h2>

<%-- Boucle for pour afficher un triangle rectangle inversé --%>
<% for (int j = cpt; j >= 1; j--) { %>
    <p>
    <% for (int i = 1; i <= j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 4 : Triangle rectangle 2</h2>

<%-- Boucle for pour afficher un triangle rectangle aligné sur la droite --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <%-- Espace avant les étoiles --%>
    <% for (int k = 1; k <= cpt - j; k++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <%-- Étoiles --%>
    <% for (int i = 1; i <= j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 5 : Triangle isocele</h2>

<%-- Boucle for pour afficher un triangle isocèle aligné sur la droite --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int k = 1; k <= cpt - j; k++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int i = 1; i <= j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 6 : Le demi losange</h2>

<%-- Boucle for pour afficher un demi-losange --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int k = 1; k <= cpt - j; k++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int i = 1; i <= j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>

<%-- Espace entre les deux demi-losanges --%>
<br>

<%-- Boucle for pour afficher l'autre moitié du losange avec une ligne supplémentaire --%>
<% for (int j = 1; j <= cpt; j++) { %>
    <p>
    <% for (int k = 1; k <= j; k++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int i = 1; i <= cpt-j; i++) { %>
        <%= "*" %>
    <% } %>
    </p>
<% } %>


<h2>Exercice 7 : La table de multiplication</h2>

<%-- Boucle for pour afficher la table de multiplication --%>
<% for (int i = 1; i <= 5; i++) { %>
    <p>
    <%= "5 x " + i + " = " + (5 * i) %>
    </p>
<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
