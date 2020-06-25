<%-- 
    Document   : aes
    Created on : 30 Mar, 2018, 8:19:55 PM
    Author     : admin
--%>
<%@page import="aes.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="javax.crypto.Cipher" %>
        <%@page import="javax.crypto.KeyGenerator" %>
        <%@page import="javax.crypto.SecretKey" %>
        <%@page import="javax.xml.bind.DatatypeConverter" %>
        <% String plainText=request.getParameter("plainText");  %> 
        <% 
            SecretKey secKey = aes.getSecretEncryptionKey();

        byte[] cipherText = aes.encryptText(plainText, secKey);

        String decryptedText = aes.decryptText(cipherText, secKey);

         

        out.println("Original Text:" + plainText);%><br>

        <%out.println("AES Key (Hex Form):"+aes.bytesToHex(secKey.getEncoded()));%><br>

        <%out.println("Encrypted Text (Hex Form):"+aes.bytesToHex(cipherText));%><br>

        <%out.println("Descrypted Text:"+decryptedText);%><br>

         

     
        
    </body>
</html>
