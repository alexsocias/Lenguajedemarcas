<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:dc="http://purl.org/dc/elements/1.1/"
xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<xsl:template match="/">


<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <title>El País</title>
    </head>
    <body>
        <xsl:for-each select="rss/channel">
        <header>
            <h1 class="text-center"><xsl:value-of select="title"></xsl:value-of></h1>
            <p class="text-center"><xsl:value-of select="description"></xsl:value-of></p>
            <h4 class="text-center"><xsl:value-of select="language"></xsl:value-of></h4>
            <h5 class="text-center"><xsl:value-of select="link"></xsl:value-of></h5>
            <p class="text-center"><xsl:value-of select="lastBuildDate"></xsl:value-of></p>
        </header>
        <main>
            <div class="container text-center">
                <div class="row">
                    <xsl:for-each select="item">
                  <div class="col-4">
                        <h1><xsl:value-of select="title"></xsl:value-of></h1>
                <P><xsl:value-of select="pubDate"></xsl:value-of></P>
                <p><xsl:value-of select="link"></xsl:value-of></p>
                <p><xsl:value-of select="dc:creator"></xsl:value-of></p>
                <p><xsl:value-of select="description"></xsl:value-of></p>
                <p><xsl:value-of select="category"></xsl:value-of></p>
                <!-- PONER LINKS DE EL PAIS, ESTETICA LO MAS PARECIDA POSSIBLE,-->
            
                <xsl:choose>
                    <xsl:when test="media:content/@type='video/mp4'">
                      <video width="100%" src="{media:content/@url}" controls="true" ></video>
                    </xsl:when>
                    <xsl:otherwise>
                        <img width="100%" src="{media:content/@url}"/>
                    </xsl:otherwise>
                  </xsl:choose> 
            
                <p><xsl:value-of select="media:content/media:credit"></xsl:value-of></p>
                <p><xsl:value-of select="media:content/media:title"></xsl:value-of></p>
                <p><xsl:value-of select="media:content/media:text"></xsl:value-of></p>
                  </div>
            </xsl:for-each>
                </div>
            </div>      
      </main>
      </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
