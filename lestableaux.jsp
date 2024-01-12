<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les tableaux</h1>
    <form action="#" method="post">
        <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>

    <% if (chaine != null) { %>

        <%-- Division de la chaîne de chiffres séparés par des espaces --%>
        <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
        <p>Le tableau contient <%= tableauDeChiffres.length %> valeurs</p>
        <p>Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></p>
        <p>Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></p>
        <p>Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>

        <h2>Exercice 1 : La carré de la première valeur</h2>
        <p>Le carré de la première valeur est : <%= Math.pow(Integer.parseInt(tableauDeChiffres[0]), 2) %></p>

        <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
        <p>La somme des deux premières valeurs est : <%= Integer.parseInt(tableauDeChiffres[0]) + Integer.parseInt(tableauDeChiffres[1]) %></p>

        <h2>Exercice 3 : La somme de toutes les valeurs</h2>
        <%
            int somme = 0;
            for (String chiffre : tableauDeChiffres) {
                somme += Integer.parseInt(chiffre);
            }
        %>
        <p>La somme de toutes les valeurs est : <%= somme %></p>

        <h2>Exercice 4 : La valeur maximum</h2>
        <%
            int max = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (valeur > max) {
                    max = valeur;
                }
            }
        %>
        <p>La valeur maximale saisie par l'utilisateur est : <%= max %></p>

        <h2>Exercice 5 : La valeur minimale</h2>
        <%
            int min = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (valeur < min) {
                    min = valeur;
                }
            }
        %>
        <p>La valeur minimale saisie par l'utilisateur est : <%= min %></p>

        <h2>Exercice 6 : La valeur la plus proche de 0</h2>
        <%
            int plusProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (Math.abs(valeur) < Math.abs(plusProcheDeZero)) {
                    plusProcheDeZero = valeur;
                }
            }
        %>
        <p>La valeur la plus proche de 0 est : <%= plusProcheDeZero %></p>

                <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
        <%
            int plusProcheDeZeroPositif = Integer.MAX_VALUE;
            int plusProcheDeZeroNegatif = Integer.MIN_VALUE;

            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (valeur >= 0 && valeur < plusProcheDeZeroPositif) {
                    plusProcheDeZeroPositif = valeur;
                } else if (valeur < 0 && valeur > plusProcheDeZeroNegatif) {
                    plusProcheDeZeroNegatif = valeur;
                }
            }

            int resultatExercice7 = (Math.abs(plusProcheDeZeroPositif) <= Math.abs(plusProcheDeZeroNegatif)) ? plusProcheDeZeroPositif : plusProcheDeZeroNegatif;
        %>
        <p>La valeur la plus proche de 0 (2° version) est : <%= resultatExercice7 %></p>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
