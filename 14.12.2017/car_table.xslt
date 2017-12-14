<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:variable name="header">
            <tr>
  				<th>Name</th>
  				<th>Made in</th>
  				<th>Category</th>
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

    		<xsl:for-each select="/cars/car[@category='SUV']">
    		<tr>
      			<td><xsl:value-of select="name"/></td>
      			<td><xsl:value-of select="made_in"/></td>
                <td><xsl:value-of select="@category"/></td>
    		</tr>
    		</xsl:for-each>
  		</table><br />
		
		    	<h1>Sport cars</h1>
    	 <table>
			<!-- part for header-->
            <xsl:copy-of select="$header"/> 

    		<xsl:for-each select="/cars/car[@category='sport']">
    		<tr>
      			<td><xsl:value-of select="name"/></td>
      			<td><xsl:value-of select="made_in"/></td>
                <td><xsl:value-of select="@category"/></td>
    		</tr>
    		</xsl:for-each>
  		</table><br />
		
		    	<h1>Roadcoaster cars</h1>
    	 <table>
			<!-- part for header-->
            <xsl:copy-of select="$header"/> 

    		<xsl:for-each select="/cars/car[@category='roadster']">
    		<tr>
      			<td><xsl:value-of select="name"/></td>
      			<td><xsl:value-of select="made_in"/></td>
                <td><xsl:value-of select="@category"/></td>
    		</tr>
    		</xsl:for-each>
  		</table><br />
  
	</body>
</html>
</xsl:template>
</xsl:stylesheet>