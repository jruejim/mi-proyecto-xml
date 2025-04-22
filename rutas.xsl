<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Rutas de Senderismo</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background: #cccccc;
            color: #333;
            padding: 20px;
            padding-top: 0;
          }
          h1 {
            text-align: center;
            color: #008080;
            font-size: 2.5em;
            font-weight: 1000;
            margin-bottom: 30px;
            margin-top: 40px;
          }
          .ruta {
            border: 1px solid #aaa;
            background: white;
            border-radius: 20px;
            padding: 15px;
            margin: 0 auto 20px auto;
            box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
            width: 80%;
          }
          .titulo {
            font-size: 1.2em;
            font-weight: bold;
            text-decoration: underline;
          }
          ul {
            list-style-type: none;
            padding-left: 0;
            margin-top: 10px;
          }
          li {
            margin-bottom: 5px;
          }
          .descripcion {
            font-size: 0.9em;
            display: block;
            margin-top: 2px;
          }
        </style>
      </head>
      <body>
        <h1>Rutas de Senderismo</h1>
        <xsl:for-each select="rutas/ruta">
          <div class="ruta">
            <div class="titulo">
              <xsl:value-of select="nombre"/> – 
              <xsl:value-of select="pais"/> 
              (<xsl:value-of select="dificultad"/>)
            </div>
            <div>
              <strong>Puntos de interés:</strong>
              <ul>
                <xsl:for-each select="puntosInteres/punto">
                  <li>
                    <strong><xsl:value-of select="nombre"/>:</strong>
                    <span class="descripcion">
                      <xsl:value-of select="descripcion"/>
                    </span>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>


