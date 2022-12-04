<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>DISCOS</title>
            </head>
            <body>
                <h1>DISCOS</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>TITULO</th>
                        <th>ARTISTA</th>
                        <th>PAIS</th>
                        <th>DISCOGRAFICA</th>
                        <th>PRECIO</th>
                        <th>AÑO DE PUBLICACIÓN</th>
                    </tr>
                    <xsl:for-each select="disco/cd">
                        <tr>
                            <td><xsl:value-of select="titulo"></xsl:value-of></td>
                            <td><xsl:value-of select="artista"></xsl:value-of></td>
                            <td><xsl:value-of select="pais"></xsl:value-of></td>
                            <td><xsl:value-of select="discografica"></xsl:value-of></td>
                            <td><xsl:value-of select="precio"></xsl:value-of></td>
                            <td><xsl:value-of select="año"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
