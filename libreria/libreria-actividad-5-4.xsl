<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi biblioteca personal</h1>
        <table>
            <tr bgcolor="#0000FF">
                <th>isbn</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>editor</th>
                <th>precio</th>
                <th>numPaginas</th>
            </tr>
            <xsl:for-each select="libreria/libro">
        <tr>
            <xsl:choose>
                <xsl:when test="autor = 'Javier Rodriguez'">
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="editor"/>
                    </td>
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="precio"/>
                    </td>
                    <td bgcolor="#F902C1">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                    
                </xsl:when>
                <xsl:when test="precio &gt; 25.50">
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="editor"/>
                    </td>
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="precio"/>
                    </td>
                    <td bgcolor="#FE2300">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                    
                </xsl:when>

                <xsl:when test="precio &lt; 25.50">
                    <td bgcolor="#27F902">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#27F902">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#27F902">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#27F902">
                        <xsl:value-of select="editor"/>
                    </td>
                    <td bgcolor="#27F902">
                        <xsl:value-of select="precio"/>
                    </td>
                    <td bgcolor="#27F902">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                    
                </xsl:when>

                    <xsl:otherwise>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="isbn"/>
                        </td>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="editor"/>
                        </td>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="precio"/>
                        </td>
                        <td bgcolor="#D5E204">
                            <xsl:value-of select="numPaginas"/>
                        </td>
                        
                    </xsl:otherwise>
                </xsl:choose>
        </tr>
        </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>