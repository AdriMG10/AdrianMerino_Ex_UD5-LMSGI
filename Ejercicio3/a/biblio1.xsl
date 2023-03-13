<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Adrián Merino</p>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                    <xsl:sort select="apellido" order="ascending" data-type="text"/>
                            <li>
                                <xsl:value-of select="apellido"/>
                                <text> , </text>
                                <xsl:value-of select="nombre"/>
                            </li>
                    </xsl:for-each>
                </ol>    
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>