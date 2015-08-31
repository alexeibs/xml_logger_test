<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="build">
    <html>
      <head>
        <style type="text/css">
          table {
            border-collapse: collapse;
          }
          td, th {
            border-left: 1px solid #e0e0e0;
            border-right: 1px solid #e0e0e0;
            padding: 2px 5px;
          }
          th {
            border-top: 1px solid #e0e0e0;
            background: #e0e0e0;
          }
          tr:nth-child(odd) {
            background: #f0f0f0;
          }
          tr:last-child {
            border-bottom: 1px solid #e0e0e0;
          }
        </style>
      </head>
      <body>
        <table>
          <tr>
            <th>Code</th>
            <th>File</th>
            <th>Message</th>
          </tr>
          <xsl:apply-templates />
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="text()" />
  <xsl:template match="error">
    <tr>
      <td>
        <xsl:value-of select="@code" />
      </td>
      <td>
        <xsl:value-of select="@file" />
        <xsl:text> (</xsl:text>
        <xsl:value-of select="@line" />
        <xsl:text>:</xsl:text>
        <xsl:value-of select="@column" />
        <xsl:text>)</xsl:text>
      </td>
      <td>
        <xsl:value-of select="." />
      </td>
    </tr>
  </xsl:template>
  <xsl:template match="message|warning|errors|warnings|starttime|endtime|timeelapsed" />
</xsl:stylesheet>