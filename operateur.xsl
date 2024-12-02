<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  
<xsl:template match="/">
    
    <html>
        <head>
            
        </head>
        <body>
            <h2>Liste des clients</h2>
            <ul>
            <xsl:for-each select="operateur/client">
              
                  <li>
                      Nom du client : <xsl:value-of select="@nom"/>
                      <table width="90%"  border="1">
                          <tr>
                              <th>
                                  Num
                              </th>
                              
                              <th>
                              Type
                              </th>
                              
                              <th>
                              Date
                              </th>
                              <th>Total Factures</th>
                          </tr>
                          <xsl:for-each select="abonnement">
                              <tr>
                                  <td>
                                      <xsl:value-of select="@numero"/>
                                  </td>
                                  <td>
                                      <xsl:value-of select="@type"/>
                                      
                                  </td>
                                  <td>
                                      <xsl:value-of select="@dateAb"/>
                                  </td>
                                  <td> <xsl:value-of select="sum(facture/@montant)"/></td>
                              </tr>
                          </xsl:for-each>
                          <tr><td colspan="3">Le nombre d'abonnement</td>
                          <td> <xsl:value-of select="count(abonnement)"/></td>
                          </tr>
                      </table>
                  </li>
            </xsl:for-each>
            <li> Nombre de clients:<xsl:value-of select="count(operateur/client)"/></li>
                
                <li> Nombre d'abonnements :<xsl:value-of select="count(operateur/client/abonnement)"/></li>
                <li>Total des factures : <xsl:value-of select="sum(operateur/client/abonnement/facture/@montant)"/></li>
                <li> Total des factures non reglee :<xsl:value-of select="sum(//facture[@reglee='NON']/@montant)"/></li>
                <li> Total des factures reglee :<xsl:value-of select="sum(//facture[@reglee='OUI']/@montant)"/></li>
            </ul>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>