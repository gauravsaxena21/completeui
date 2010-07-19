<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" />
	
	<xsl:strip-space elements="*"/>

	<xsl:template match="/">
		<xsl:apply-templates select="includes/*" />
	</xsl:template>

	<xsl:template match="jsfile">
		<xsl:if test="not(contains(@path,'/expire.js')) and not(contains(@path,'/domain.js'))">
			<xsl:value-of select="@path" /><xsl:text>,</xsl:text>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="xslfile">
		<xsl:value-of select="@path" /><xsl:text>,</xsl:text>
	</xsl:template>
	
	<xsl:template match="xmlfile">
		<xsl:value-of select="@path" /><xsl:text>,</xsl:text>
	</xsl:template>
</xsl:stylesheet>