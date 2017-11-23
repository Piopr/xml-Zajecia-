<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/book">

<html>
<head>
<meta charset="utf-8"/>
<title>Dokument bez názvu</title>
</head>

<body>

	<title>moja ksionszka xD</title>
	<img src="book.jpg" />
	<h1><xsl:value-of select="text()" /></h1>
	

</body>
</html>

</xsl:template>
</xsl:stylesheet>
