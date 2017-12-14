<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:variable name="header">
            <tr>
  				<th>Name</th>
  				<th>Screen size</th>
  				<th>Color</th>
				<th>RAM</th>
				<th>Procesor</th>
				<th>Icon</th>
  			</tr>

</xsl:variable>
<xsl:template match="/">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Tables of cars</title>
        <style type="text/css">
			table {
    			width: 100%;
			}
			th, td {
   				 border-bottom: 1px solid #ddd;
				 text-align: left;
			}
		</style>
	</head>
	<body>
    	<h1>SUV cars</h1>
    	 <table>
			<!-- part for header-->
            <xsl:copy-of select="$header"/> 

    		<xsl:for-each select="/smart/tablets/tablet">
    		<tr>
      			<td><xsl:value-of select="name"/></td>
      			<td><xsl:value-of select="screen_size"/></td>
                <td><xsl:value-of select="color"/></td>
				<td>GB<xsl:choose>
				<xsl:when test="ram &gt;2"> <xsl:value-of select="ram"/>
				</xsl:when>
				<xsl:otherwise>
				<xsl:value-of select="ram"/>
				</xsl:otherwise>
				
				</xsl:choose>
				</td>
				
				
				<td><xsl:value-of select="procesor"/></td>
				<td><xsl:if test="@category='action'"><img src="action.png"></img></xsl:if>
				<xsl:if test="@category='top'"><img src="top.png"></img></xsl:if>
				</td>
    		</tr>
    		</xsl:for-each>
  		</table><br />
		
		<h1>SUV cars</h1>
    	 <table>
			<!-- part for header-->
            <xsl:copy-of select="$header"/> 

    		<xsl:for-each select="/smart/phones/phone">
    		<tr>
      			<td><xsl:value-of select="name"/></td>
      			<td><xsl:value-of select="screen_size"/></td>
                <td><xsl:value-of select="color"/></td>
				<td>GB<xsl:choose>
				<xsl:when test="ram &gt;2"><p style="background-color:red" ><xsl:value-of select="ram"/></p>
				</xsl:when>
				<xsl:otherwise>
				<xsl:value-of select="ram"/>
				</xsl:otherwise>
				
				</xsl:choose></td>
				<td><xsl:value-of select="procesor"/></td>
				<td><xsl:if test="@category='action'"><img src="action.png"></img></xsl:if>
				<xsl:if test="@category='top'"><img src="top.png"></img></xsl:if>
				</td>
    		</tr>
    		</xsl:for-each>
  		</table><br />
		

  
	</body>
</html>
</xsl:template>
</xsl:stylesheet>