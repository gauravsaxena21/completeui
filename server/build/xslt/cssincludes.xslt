<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="text" />
	
	<xsl:strip-space elements="*"/>
	
	<xsl:template match="/">
		<xsl:apply-templates select="includes/cssfile" />
	</xsl:template>

	<xsl:template match="cssfile"><xsl:value-of select="substring-before(@path,'client/style')" />client/style<xsl:text>,</xsl:text></xsl:template>

</xsl:stylesheet>