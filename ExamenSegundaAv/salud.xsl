<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="css/bootstrap.min.css"/>
                <title>Centro de Salud y Bienestar</title>
            </head>
            <body>
            <xsl:for-each select="salud">
                <header class="bg-light text-center">
                    <h1>Centro de Salud y Bienestar</h1>
                </header>
                <main class="bg-dark">
                    <div class="container text-center">
                        <div class="row">
                    <xsl:for-each select="servicio">
                        <div class="col-4 mb-3">
                    <div class="card text-black text-center bg-light">
                        <div class="card-body">
                            <h4>Servicio:<xsl:value-of select="nombre"></xsl:value-of></h4>
                            <xsl:for-each select="precio">
                            <h5>Cuota:<xsl:value-of select="@cuota"></xsl:value-of></h5>
                            <h5>Bono: <xsl:value-of select="@bono"></xsl:value-of></h5>
                            </xsl:for-each>
                            <h5>Precio: <xsl:value-of select="precio"></xsl:value-of></h5>
                            <h5>Plazas: <xsl:value-of select="plazas"></xsl:value-of></h5>
                            <xsl:for-each select="plazas">
                            <h5>Reserva: <xsl:value-of select="@reserva"></xsl:value-of></h5>
                            </xsl:for-each>
                            <h5>Dias: <xsl:value-of select="dias"></xsl:value-of></h5>
                            <h5>Horario: <xsl:value-of select="horario"></xsl:value-of></h5>
                            <h5>Empleado: <xsl:value-of select="empleado"></xsl:value-of></h5>
                        </div>
                    </div>
                </div>
                    </xsl:for-each>
                </div>
                    </div>
                </main>
                <footer class="bg-secondary text-center">
                    <h4><a class="text-warning" href="https://alexsocias.cf/">Aviso legal</a></h4>
                    <h4><a class="text-warning" href="https://alexsocias.cf/">Política de privacidad</a></h4>
                    <h4><a class="text-warning" href="https://alexsocias.cf/">Política de cookies</a></h4>

                </footer>
            </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>