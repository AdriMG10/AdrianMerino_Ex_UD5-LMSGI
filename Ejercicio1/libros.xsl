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
                <xsl:for-each select="bib/book">
                    <li>
                        <xsl:value-of select="title"/>
                        <xsl:text> - </xsl:text>
                        <xsl:text>"</xsl:text>
                        <xsl:value-of select="publisher"/>
                        <xsl:text>"</xsl:text>
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="year"/>
                        <xsl:text>)</xsl:text>
                    </li>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>