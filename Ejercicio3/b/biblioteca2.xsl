<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Adrián Merino</p>
                <ol>
                    <xsl:for-each select="bib/libro">
                        <xsl:choose>
                            <xsl:when test="precio &lt; 100">
                                <li>
                                    <xsl:value-of select="titulo"/>
                                </li>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </ol>    
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 