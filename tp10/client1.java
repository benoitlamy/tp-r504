import java.io.*;
import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;

public class client1 {
    public static void main(String[] args) {
        // Vérifie si aucun argument n'a été fourni
        if (args.length == 0) {
            System.err.println("Erreur : Aucun argument fourni.");
            System.exit(1); // Quitte le programme avec un code d'erreur
        }
        
        // Crée un client HTTP
        CloseableHttpClient client = HttpClients.createDefault();
        
        // Construit l'URL avec le premier argument fourni
        String url = "http://" + args[0];
        
        // Crée une requête HTTP GET
        HttpGet request = new HttpGet(url);
        
        // Votre code continue ici...
        // Vous pouvez utiliser le client et la requête comme nécessaire pour envoyer des requêtes HTTP au serveur.
        
        // N'oubliez pas de gérer les exceptions appropriées pour la création du client et la création de la requête.
    }
}
