<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Adrián Merino</p>
                    <h1>IES Nuestra Sra. de los Remedios</h1>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:sort select="nombre" order="ascending"/>
                            <xsl:value-of select="nombre"/>
                            <xsl:text> - </xsl:text>
                            <xsl:value-of select="decretoTitulo/@año"/>
                            <br/>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>