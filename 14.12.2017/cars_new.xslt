<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head><title>Marek Mostowiak przypala trawke</title></head>
	<body>
		
      <xsl:for-each select="/cars/car">
	          	<div>
		<!-- <xsl:if test="@category = 'sport'"> -->
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="photo"/> 
			</xsl:attribute>
			</img>
			<xsl:choose>
			<xsl:when test="@category='sport'">
				<div style="color:red"><xsl:value-of select="name" /> (	<xsl:value-of select="made_in" />)</div>
			</xsl:when>			
			
			<xsl:when test="@category='SUV' ">
				<div style="color:green"><xsl:value-of select="name" /></div>  (	<xsl:value-of select="made_in" />)
			</xsl:when>
			<xsl:otherwise>
				<div><xsl:value-of select="name" />  (<xsl:value-of select="made_in" />)	</div>
			</xsl:otherwise>
			</xsl:choose>
	   
	   <!--</xsl:if>-->
	   
		   
            </div>
      </xsl:for-each>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
