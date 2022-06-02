<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
    <body>
    <h3>Top 25 animea svih vremena (prema MyAnimeList)</h3>
    <table border="1">
        <tr bgcolor="#5b73a8">
            <th>Rank</th>
            <th>Naslov</th>
            <th>Slika</th>
            <th>Broj Epizoda</th>
            <th>Status</th>
            <th>Ocjena</th>
        </tr>
        <xsl:for-each select="TopLista/Anime">
        <tr>
            <td><xsl:value-of select="Rank"/></td>
            <td><xsl:value-of select="Naslov"/></td>
            <td><xsl:apply-templates select="Slika" /></td>
            <td><xsl:value-of select="BrojEpizoda"/></td>
            <td><xsl:value-of select="Status"/></td>
            <td><xsl:value-of select="Ocjena"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>

<xsl:template match="Slika">
    <img src="{@url}" />
</xsl:template>

</xsl:stylesheet>
    