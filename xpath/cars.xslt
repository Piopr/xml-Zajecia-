<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<html>
	<head>
		<title>chodzmydodomupls</title>
	</head>
	<body>
		<xsl:for-each select="/cars/car">
		<div>
			<xsl:value-of select="name"/> (<xsl:value-of select="made_in" /> )
			
		</div>
		</xsl:for-each>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>