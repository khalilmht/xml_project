<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:template match="/">
        <html>
            <head>
<title>Biblio</title>                
            </head>
<body>
    <h2>Bibliotheque</h2>
<xsl:for-each select="biblio/etudiant">
    <ul>
        <li><xsl:value-of select="@nom"/></li>
    </ul>
    <table width="90%" border="1">
        <tr><th>Nom</th><th>Prenom</th><th>Livre</th></tr>
        <tr><td><xsl:value-of select="@nom"/></td><td><xsl:value-of select="@prenom"/></td>
        
            <xsl:for-each select="livre">
                <td><xsl:value-of select="@titre"/>
                </td>
            </xsl:for-each>
        </tr>
 
    </table>
</xsl:for-each>
</body>
        </html>
    </xsl:template>
</xsl:stylesheet>