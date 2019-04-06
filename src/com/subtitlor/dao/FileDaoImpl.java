package com.subtitlor.dao;

import com.subtitlor.bean.File;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FileDaoImpl implements FileDao {

    private DaoFactory daoFactory;

    FileDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }


    @Override
    public void ajouter(File file) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO name(fileName) VALUES(?);");
            preparedStatement.setString(1, file.getNameFile());

            // Execution de la requête préparée
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<File> lister() {
        List<File> files = new ArrayList<File>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT fileName FROM name;");

            while (resultat.next()) {
                String nameFile = resultat.getString("fileName");

                File file = new File();
                file.setNameFile(nameFile);

                files.add(file);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return files;
    }
}
