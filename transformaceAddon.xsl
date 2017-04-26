<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="text"/>
 <xsl:template match="/">
  [
  <xsl:for-each select="gameSettings/addOns/addon[active=1]">
    <xsl:sort select="addonName" order="descending"/>
    {
    "Název": "<xsl:value-of select="@addonName"/>"
    }<xsl:if test="position() != last()">,</xsl:if>
  </xsl:for-each>
  ] 
 </xsl:template>
</xsl:stylesheet>