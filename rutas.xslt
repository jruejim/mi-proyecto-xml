<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Rutas moderadas</title>
        <style>
          table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px;
            font-family: Arial, sans-serif;
          }
          th, td {
            border: 1px solid #333;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #008080;
            color: white;
          }
          .espana {
            background-color: yellow;
          }
        </style>
      </head>
      <body>
        <h1>Rutas moderadas</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>País</th>
            <th>Puntos de interés</th>
          </tr>
          <xsl:for-each select="rutas/ruta[dificultad='moderada']">
            <xsl:sort select="nombre" data-type="text" order="ascending"/>
            <tr>
              <xsl:attribute name="class">
                <xsl:if test="pais='España'">espana</xsl:if>
              </xsl:attribute>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="pais"/></td>
              <td>
                <ul>
                  <xsl:for-each select="puntosInteres/punto">
                    <li>
                      <strong><xsl:value-of select="nombre"/>:</strong>
                      <xsl:text> </xsl:text>
                      <xsl:value-of select="descripcion"/>
                    </li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
