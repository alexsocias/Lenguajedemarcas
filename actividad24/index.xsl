<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes" />
    <xsl:template match="/">
    {
        "catalogo": {
          "cd": [
            <xsl:for-each select="disco/cd">
                    {
              "TITULO": " <xsl:value-of select="titulo" /> ",
              "ARTISTA": "<xsl:value-of select="artista" />",
              "PAIS": "<xsl:value-of select="pais" />",
              "DISCOGRAFIA": "<xsl:value-of select="discografia" />",
              "PRECIO": "<xsl:value-of select="precio" />",
              "AÑO DE PUBLICACIÓN": "<xsl:value-of select="año" />"
                    }
                    <xsl:if test="position() &lt; last()">,</xsl:if>
            </xsl:for-each>
                ]
            }
                    }
</xsl:template>
</xsl:stylesheet>