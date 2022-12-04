<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>acontecimineto</title>
            </head>
            <body>
                <h1>Eventos</h1>
                <table border="1px">
                    <tr>
                        <th rowspan="2">EVENTOS</th>
                        <th colspan="3">FECHA</th>
                    </tr>
                    <tr>
                        <th>Dia</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="acon/evento">
                        <tr>
                            <td>
                                <xsl:value-of select="@nombre"></xsl:value-of>
                            </td>
                            <xsl:for-each select="fecha">
                                <td>
                                    <xsl:value-of select="dia"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="mes"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="año"></xsl:value-of>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>