<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
    String url = "jdbc:mariadb://localhost:3306/films";
    String user = "mysql";
    String password = "mysql";

        // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);
    String searchYearParam = request.getParameter("searchYear");

    if (searchYearParam != null && !searchYearParam.isEmpty()) {
        try {
            int searchYear = Integer.parseInt(searchYearParam);
            String searchSql = "SELECT idFilm, titre, année FROM Film WHERE année = ?";
            PreparedStatement searchPstmt = conn.prepareStatement(searchSql);
            searchPstmt.setInt(1, searchYear);
            ResultSet searchRs = searchPstmt.executeQuery();

            out.println("<h2>Films de l'année " + searchYear + "</h2>");

            while (searchRs.next()) {
                String colonne1 = searchRs.getString("idFilm");
                String colonne2 = searchRs.getString("titre");
                String colonne3 = searchRs.getString("année");

                out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
            }

            searchRs.close();
            searchPstmt.close();
        } catch (NumberFormatException e) {
            out.println("<p>Erreur : Veuillez entrer une année valide.</p>");
        }
    }
    %>

<h2>Exercice 1 : Les films entre 2000 et 2015</h2>
<p>Extraire les films dont l'année est supérieur à l'année 2000 et inférieur à 2015.</p>


 <h2>Exercice 2 : Année de recherche</h2>
    <form action="" method="GET">
        <label for="searchYear">Année de recherche :</label>
        <input type="text" id="searchYear" name="searchYear">
        <input type="submit" value="Rechercher">
    </form>

<h2>Exercice 3 : Modification du titre du film</h2>
<p>Créer un fichier permettant de modifier le titre d'un film sur la base de son ID (ID choisi par l'utilisateur)</p>
 <form action="" method="POST">
        <label for="filmId">ID du film à modifier :</label>
        <input type="text" id="filmId" name="filmId" required>
        <br>
        <label for="newTitle">Nouveau titre :</label>
        <input type="text" id="newTitle" name="newTitle" required>
        <br>
        <input type="submit" value="Modifier Titre">
    </form>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Créer un formulaire pour saisir un nouveau film dans la base de données</p>
   <form action="" method="POST">
        <label for="newFilmTitle">Titre du nouveau film :</label>
        <input type="text" id="newFilmTitle" name="newFilmTitle" required>
        <br>
        <label for="newFilmYear">Année du nouveau film :</label>
        <input type="text" id="newFilmYear" name="newFilmYear" required>
        <br>
        <input type="submit" value="Ajouter Film">
    </form>

</body>
</html>
