<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html" omit-xml-declaration="yes"
              doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
              doctype-system="http://www.w3.org/TR/html4/loose.dtd" />

  <xsl:template match="*"/>

  <xsl:template match="svn">
    <html>
      <head>
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <title>
          <xsl:if test="string-length(index/@base) != 0">
            <xsl:value-of select="index/@base"/>
            <xsl:text>: </xsl:text>
          </xsl:if>
          <xsl:value-of select="index/@path" />
          - {ServerName}
        </title>
        <link rel="stylesheet" type="text/css" href="/home.css" />
      </head>
      <body>
        <div class="svn">
          <xsl:apply-templates/>
        </div>
        <footer class="footer">
          <xsl:text>Powered by </xsl:text>
          <xsl:element name="a">
            <xsl:attribute name="href">
              <xsl:value-of select="@href"/>
            </xsl:attribute>
            <xsl:text>Subversion</xsl:text>
          </xsl:element>
        </footer>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="index">
    <div class="rev">
      <xsl:value-of select="@name"/>
      <xsl:if test="@base">
        <xsl:if test="@name">
          <xsl:text>:&#xA0; </xsl:text>
        </xsl:if>
        <xsl:value-of select="@base" />
      </xsl:if>
      <xsl:if test="@rev">
        <xsl:if test="@base | @name">
          <xsl:text> &#x2014; </xsl:text>
        </xsl:if>
        <xsl:text>Revision </xsl:text>
        <xsl:value-of select="@rev"/>
      </xsl:if>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="@path"/>
    </div>
    <xsl:apply-templates select="updir"/>
    <xsl:apply-templates select="dir"/>
    <xsl:apply-templates select="file"/>
  </xsl:template>

  <xsl:template match="updir">
    <div class="dir">
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="@href"/>
        </xsl:attribute>

        <img src="/dir.png"/>
        <xsl:text>&#160;</xsl:text>
        <xsl:text>..</xsl:text>

      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="dir">
    <div class="dir">
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="@href"/>
        </xsl:attribute>

        <img src="/dir.png"/>
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="@name"/>

        <xsl:text>/</xsl:text>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="file">
    <div class="file">
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="@href"/>
        </xsl:attribute>

        <img src="/file.png"/>
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="@name"/>

      </xsl:element>
    </div>
  </xsl:template>

</xsl:stylesheet>