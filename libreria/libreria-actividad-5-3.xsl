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
            <xsl:if test="precio &gt; 12">
                <xsl:if test="autor = 'David Rodriguez'">
                
        <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="editor"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="numPaginas"/></td>
            
        </tr>
    </xsl:if>
</xsl:if>
        </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>