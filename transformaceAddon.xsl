<?xml version="1.0" encoding="UTF-8"?>
<!-- https://github.com/HonzaSaibic/JazykySemestralniProjekt/blob/master/transformaceAddon.xsl -->
<!-- Transformace, která zjistí, které addony jsou aktivní a ty vypíše v JSON. Aktivní je ten addon, který je roven 1.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="text"/>
 <xsl:template match="/">
  [
  <xsl:for-each select="gameSettings/addOns/addon[active=1]">
    <xsl:sort select="addonName" order="ascending"/>
    {
    "Název": "<xsl:value-of select="@addonName"/>"
    }<xsl:if test="position() != last()">,</xsl:if>
  </xsl:for-each>
  ] 
 </xsl:template>
</xsl:stylesheet>