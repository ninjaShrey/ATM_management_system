package com.atm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

  private Connection connection;

  public UserDAO(Connection connection) {
    this.connection = connection;
  }

  public boolean authenticateUser(String username, String password) {
    try {
      String sql = "SELECT * FROM users WHERE username = ? AND pin = ?";
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, username);
      statement.setString(2, password);
      ResultSet resultSet = statement.executeQuery();
      return resultSet.next();
    } catch (SQLException e) {
      e.printStackTrace();
      return false;
    }
  }

  public void deposit(String username, double amount) {
    try {
      String sql = "UPDATE users SET balance = balance + ? WHERE username = ?";
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setDouble(1, amount);
      statement.setString(2,username);
      statement.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public void withdraw(String username, double amount) {
    try {
      String sql = "UPDATE users SET balance = balance -? WHERE username =?";
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setDouble(1, amount);
      statement.setString(2, username);
      statement.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public double getBalance(String username) {
    try {
      String sql = "SELECT balance FROM users WHERE username =?";
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, username);
      ResultSet resultSet = statement.executeQuery();
      if (resultSet.next()) {
        return resultSet.getDouble("balance");
      } else {
        return 0;
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return 0;
    }
  }
}