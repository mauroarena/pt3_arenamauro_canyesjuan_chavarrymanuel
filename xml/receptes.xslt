<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Delicias Kitchen-Listado de Recetas</title>
        <link rel="stylesheet" href="../css/stylelistarecetas.css"/>
      </head>
      <body>
        <!-- El contenido de tu archivo HTML original va aquí -->
        <main>
          <h2>Recetas disponibles</h2>
          <ul>
            <xsl:apply-templates select="recipes/recipe"/>
          </ul>
        </main>
        <!-- El resto del contenido de tu archivo HTML original va aquí -->
      </body>
    </html>
  </xsl:template>

  <xsl:template match="recipe">
    <li>
      <h3>
        <a class="recetalink" href="{url}">
          <xsl:value-of select="name"/>
        </a>
      </h3>
      <img src="{image}"/>
      <p>
        <xsl:value-of select="description"/>
      </p>
      <main>
        <article>
          <div class="info">
            <p>Dificultad: <span class="difficulty">
              <xsl:value-of select="difficulty"/>
            </span></p>
            <p>Procedencia: <span class="origin">
              <xsl:value-of select="origin"/>
            </span></p>
          </div>
        </article>
      </main>
    </li>
  </xsl:template>
</xsl:stylesheet>

