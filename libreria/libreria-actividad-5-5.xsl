<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi biblioteca personal</h1>
        <xsl:apply-templates/>
        
    </body>
</html>
</xsl:template>
<xsl:template match="libreria">
    <table>
        <tr bgcolor="#0000FF">
            <th>isbn</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>editor</th>
            <th>precio</th>
            <th>numPaginas</th>
</tr>
<xsl:apply-templates select="libro"/>
    </table>
</xsl:template>
<xsl:template match="libro">
    <tr>
        <xsl:apply-templates select="isbn"/>
        <xsl:apply-templates select="titulo"/>
        <xsl:apply-templates select="autor"/>
        <xsl:apply-templates select="editor"/>
        <xsl:apply-templates select="precio"/>
        <xsl:apply-templates select="numPaginas"/>
        
    </tr>


    
<xsl:choose>
        <xsl:when test="numPaginas &gt; 150">
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
                
            </xsl:choose>
        </xsl:template>
        
        <xsl:template match="isbn">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>
        <xsl:template match="titulo">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="autor">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="editor">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="precio">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="numPaginas">
        <td bgcolor="DDEEDD">
        <xsl:value-of select="."/></td>
    </xsl:template>

</xsl:stylesheet>