<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
factura:
<xsl:for-each select="factura">
    num: <xsl:value-of select="@num"></xsl:value-of>
    Inicio: <xsl:for-each select="Inicio">
        empresa: <xsl:value-of select="empresa"></xsl:value-of>
        direccion: <xsl:value-of select="direccion"></xsl:value-of>
        localidad: <xsl:value-of select="localidad"></xsl:value-of>
        cif: <xsl:value-of select="cif"></xsl:value-of>
        telefono: <xsl:value-of select="telefono"></xsl:value-of>
        fax: <xsl:value-of select="fax"></xsl:value-of>
        data: <xsl:for-each select="Inicio/data">
        fecha: <xsl:value-of select="fecha"></xsl:value-of>
        pedido: <xsl:value-of select="pedido"></xsl:value-of>
        pago: <xsl:value-of select="pago"></xsl:value-of>
    </xsl:for-each>
    </xsl:for-each>
    datoscliente: <xsl:for-each select="datoscliente">
        numcliente: <xsl:value-of select="numcliente"></xsl:value-of>
        nombre: <xsl:value-of select="nombre"></xsl:value-of>
        direccionenvio: <xsl:value-of select="direccionenvio"></xsl:value-of>
        población: <xsl:value-of select="población"></xsl:value-of>
        codpostal: <xsl:value-of select="codpostal"></xsl:value-of>
        provincia: <xsl:value-of select="provincia"></xsl:value-of>
</xsl:for-each>
    datosfactura: <xsl:for-each select="datosfactura">
       - ref: <xsl:value-of select="ref"></xsl:value-of>
         descripcion: <xsl:value-of select="descripcion"></xsl:value-of>
         cant: <xsl:value-of select="cant"></xsl:value-of>
         precio: <xsl:value-of select="precio"></xsl:value-of>
         iva: <xsl:value-of select="iva"></xsl:value-of>
         importe: <xsl:value-of select="importe"></xsl:value-of>
</xsl:for-each>
    total: <xsl:for-each select="total">
        baseimporte: <xsl:value-of select="baseimporte"></xsl:value-of>
        poriva: <xsl:value-of select="poriva"></xsl:value-of>
        iva: <xsl:value-of select="iva"></xsl:value-of>
</xsl:for-each>
    
    totalfactura: <xsl:value-of select="totalfactura"></xsl:value-of>

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>