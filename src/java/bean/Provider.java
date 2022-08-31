
package bean;


public interface Provider {
    
    String DRIVER="com.mysql.cj.jdbc.Driver";
    String USERNAME="root";
    String PASSWORD="n0m3l0";
    String HOST="localhost";
    String PORT="3306";
    String DATABASE="bdlogin";
    String CLASSNAME="com.mysql.cj.jdbc.Driver";
    boolean useSSL=false;
    String publicKey = "true"; 
    String autoReconnect = "true";
    String CONNECTION_URL= "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE+"?user="+USERNAME+"&password="+PASSWORD+"&autoReconnect="+autoReconnect+"&allowPublicKeyRetrieval="+publicKey+"&useSSL="+useSSL;
    
}
