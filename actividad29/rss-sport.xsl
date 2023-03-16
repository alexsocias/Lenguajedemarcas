<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
    <xsl:template match="/">


        <html>
            <head>
                <link rel="stylesheet" href="css/bootstrap.min.css"/>
                <link rel="stylesheet" href="index.css"/>
                <title>El País</title>
            </head>
            <body>
                <div>
                    <div class="position-fixed" style="float:left; width:10%">
                        <div class="card" style="width:100%;">
                            <img src="IMG/1.png" class="card-img-top" style="width:80%  "/>
                            <div class="card-body">
                                <h2 class="text-center"><a style="text-decoration:none; color:black;" href="https://elpais.com/">INICIO</a></h2>
                            </div>
                        </div>
                        <div class="card" style="width:100%;">
                            <img src="IMG/in.png" class="card-img-top" style="width:80%"/>
                            <div class="card-body">
                                <h2 class="text-center"><a style="text-decoration:none; color:black;" href="https://elpais.com/internacional">INTERNACIONAL</a></h2>
                            </div>
                        </div>
                        <div class="card" style="width:100%;">
                            <img src="IMG/op.png" class="card-img-top" style="width:80%"/>
                            <div class="card-body">
                                <h2 class="text-center"><a style="text-decoration:none; color:black;" href="https://elpais.com/opinion">OPINIÓN</a></h2>
                            </div>
                        </div>
                        <div class="card" style="width:100%;">
                            <img src="IMG/es.png" class="card-img-top" style="width:80%"/>
                            <div class="card-body">
                                <h2 class="text-center"><a style="text-decoration:none; color:black;" href="https://elpais.com/españa">ESPAÑA</a></h2>
                            </div>
                        </div>
                    </div>
                    <div style="float:right; width:90%">
                        <xsl:for-each select="rss/channel">
                            <header>
                                <div class="p-3 mb-2 bg-light">
                                    <div>
                                        <div class="p-3 mb-2 bg-black text-white">
                                            <h1 class="text-center">
                                                <xsl:value-of select="title"></xsl:value-of>
                                            </h1>
                                        </div>
                                    </div>
                                    <h4 class="text-center">
                                        <xsl:value-of select="description"></xsl:value-of>
                                    </h4>
                                    <div class="p-3 mb-2 bg-light text-black">
                                        <h5 class="text-center">
                                            <xsl:value-of select="lastBuildDate"></xsl:value-of>
                                        </h5>
                                    </div>
                                </div>
                            </header>
                            <main>
                                <div class="p-3 mb-2 bg-light text-black">
                                    <div class="container text-center">

                                        <div class="row">
                                            <xsl:for-each select="item">
                                                <div class="col-4">
                                                    <div class="border border-secondary">
                                                        <h1>
                                                            <xsl:value-of select="title"></xsl:value-of>
                                                        </h1>
                                                        <P>
                                                            <xsl:value-of select="pubDate"></xsl:value-of>
                                                        </P>
                                                        <p>
                                                            <xsl:value-of select="dc:creator"></xsl:value-of>
                                                        </p>
                                                        <p>
                                                            <xsl:value-of select="description"></xsl:value-of>
                                                        </p>
                                                        <p>
                                                            <xsl:value-of select="category"></xsl:value-of>
                                                        </p>
                                                        <!-- PONER LINKS DE EL PAIS, ESTETICA LO MAS
                                                        PARECIDA
                                        POSSIBLE,-->
                                                        <xsl:choose>
                                                            <xsl:when
                                                                test="media:content/@type='video/mp4'">
                                                                <video width="100%"
                                                                    src="{media:content/@url}"
                                                                    controls="true"></video>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <img width="100%"
                                                                    src="{media:content/@url}" />
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                        <p>
                                                            <xsl:value-of
                                                                select="media:content/media:credit"></xsl:value-of>
                                                        </p>
                                                        <p>
                                                            <xsl:value-of
                                                                select="media:content/media:title"></xsl:value-of>
                                                        </p>
                                                    </div>
                                                </div>
                                            </xsl:for-each>
                                        </div>

                                    </div>
                                </div>
                            </main>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>