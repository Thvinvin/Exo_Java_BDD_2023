<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeur1" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" id="inputValeur2" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" id="inputValeur3" name="valeurC"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<% String valeurA = request.getParameter("valeurA"); %>
<% String valeurB = request.getParameter("valeurB"); %>
<% String valeurC = request.getParameter("valeurC"); %>

<%-- Vérification de la condition entre les deux valeurs --%>
<% if (valeurA != null && valeurB != null && valeurC != null) { %>
    <%-- Conversion des valeurs en entiers pour la comparaison --%>
    <% int intValeurA = Integer.parseInt(valeurA); %>
    <% int intValeurB = Integer.parseInt(valeurB); %>
    <% int intValeurC = Integer.parseInt(valeurC); %>

    <%-- Condition if pour comparer les valeurs --%>
    <% if (intValeurC >= intValeurA && intValeurC <= intValeurB) { %>
        <p>Oui, C est compris entre A et B.</p>
    <% } else { %>
        <p>Non, C n'est pas compris entre A et B.</p>
    <% } %>

<% } %>

 <h2>Exercice 2 : Pair ou Impair ?</h2>
    <form action="#" method="post">
        <p>Saisir un nombre : <input type="text" id="inputNombre" name="nombre"></p>
        <p><input type="submit" value="Vérifier"></p>
    </form>

    <%-- Récupération du nombre saisi --%>
    <% String nombre = request.getParameter("nombre"); %>

    <%-- Vérification de la parité du nombre --%>
    <% if (nombre != null) { %>
        <%-- Conversion du nombre en entier --%>
        <% int intNombre = Integer.parseInt(nombre); %>

        <%-- Condition if pour vérifier la parité du nombre --%>
        <% if (intNombre % 2 == 0) { %>
            <p>Le nombre saisi est pair.</p>
        <% } else { %>
            <p>Le nombre saisi est impair.</p>
        <% } %>

    <% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
