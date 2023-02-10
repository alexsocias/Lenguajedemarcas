<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="css/bootstrap.min.css" />
                <link rel="stylesheet" href="index.css" />
                <link rel="stylesheet" href="alex.css"/>
                <title>Academia de baile</title>
            </head>
            <body class="bg-danger text-white">
                <header>
                    <xsl:for-each select="academia">
                        <h1 class="text-center fs-1 fw-bolder">
                            <xsl:value-of select="@nombre"></xsl:value-of>
                        </h1>
                    </xsl:for-each>
                </header>
                <main>
                    <div class="container text-center">
                        <div class="row">
                    <xsl:for-each select="academia/baile">
                    
                        <div class="col-4 mb-3">
                        <div class="card text-black text-center"  style="width: 18rem;">
                            <img src="IMG/{nombre}.jpg" class="card-img-top alex" alt="18rem"/>
                            <div class="card-body">
                                <h4 class="card-title">Baile:<xsl:value-of select="nombre"></xsl:value-of></h4>
                                <xsl:for-each select="precio">
                                <h5>Cuota:<xsl:value-of select="@cuota"></xsl:value-of></h5>
                                <h5>Pago:<xsl:value-of select="@pago"></xsl:value-of></h5>
                                </xsl:for-each>
                                <h5>Precio:<xsl:value-of select="precio"></xsl:value-of></h5>
                                <h5>Plazas:<xsl:value-of select="plazas"></xsl:value-of></h5>
                                <h5>Inicio:<xsl:value-of select="inicio"></xsl:value-of></h5>
                                <h5>Fin:<xsl:value-of select="finalizacion"></xsl:value-of></h5>
                                <h5>Dias:<xsl:value-of select="dias"></xsl:value-of></h5>
                                <h5>Profesor:<xsl:value-of select="profesor"></xsl:value-of></h5>
                                <h5>Sala:<xsl:value-of select="sala"></xsl:value-of></h5>
                            </div>
                        </div>
                        </div>
                    </xsl:for-each>
                        </div>
                    </div>
                   
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>