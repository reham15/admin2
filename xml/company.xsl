<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/">
 <html>
  <body>
    <h2>company</h2>
    <table border="1">
    <tr bgcolor="#9acd32">
      <th align="left">Name</th>
      <th align="left">Email</th>
      <th align="left">Mobile Phone</th>
      <th align="left">Address</th>
    </tr>
    <xsl:for-each select="company/employee">
    <tr>
      <td><xsl:value-of select="/name"/></td>
      <td><xsl:value-of select="/email"/></td>
      <td><xsl:value-of select="/phone[@Type = 'mobile']"/></td>
      <td><xsl:value-of select="/address/region"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
