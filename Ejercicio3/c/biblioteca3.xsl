<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Adrián Merino</p>
                <xsl:for-each select="bib/libro">
                    <xsl:sort select="/precio" order="ascending" data-type="integer"/>
                    <xsl:value-of select="precio"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="titulo"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="@año"/>
                    <br></br>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 