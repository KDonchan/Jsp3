/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author donch
 */
public class SqlMain {
    
    //統合認証での接続文字作成
    public static String makeUrl(String wServer,String wDbName){
        String wUrl="";
        return wUrl;
    }
    
    //ローカル認証での接続文字作成
    public static String makeUrl(String wServer,String wDbName,String wUser,String wPass){
        String wUrl = "";
        return wUrl;
    }
    
    public static Connection makeConnection(HttpServletRequest request) throws SQLException, ClassNotFoundException{
        Connection wcon = null;
        String wUrl =null;
        ServletContext application = request.getServletContext();
        String integratedFlg = application.getInitParameter("a_integratedFlg");
        String server = application.getInitParameter("a_sqlServer");
        String dbName = application.getInitParameter("a_dbName");
        System.out.println("Init param ->" + server + ":" + dbName + ":" + integratedFlg);
                
        return wcon;
    }
}
