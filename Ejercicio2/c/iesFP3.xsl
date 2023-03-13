<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <style type="text/css">
                li {
                    text-indent: 25px;
                }
            </style>
            <body>
                <p>Nombre y apellidos: Adrián Merino</p>
                <xsl:for-each select="ies/ciclos/ciclo">
                    <li>
                        <xsl:value-of select="nombre"/>
                        <xsl:text> ( </xsl:text>
                        <xsl:value-of select="grado"/>
                        <xsl:text> )</xsl:text>
                    </li>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>