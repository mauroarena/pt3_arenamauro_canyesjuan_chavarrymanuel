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
        <header>
          <img src="../imatges/Logo-Delicias.png" alt="Logo"/>
        </header>
        <hr/>
        <nav>
          <ul style="display: flex; justify-content: center;">
            <li><a href="../Web/inicio.html">Inicio</a></li>
            <li><a href="../xml/receptes.xml">Recetas</a></li>
            <li><a href="../Web/contacto.html">Contacto</a></li>
            <li><a href="">Otras Cosas</a></li>
          </ul>
        </nav>
        <hr/>
        <!---->
        <main>
          <h2>Recetas disponibles</h2>
          <ul>
            <xsl:apply-templates select="recipes/recipe"/>
          </ul>
        </main>
        <row style="width: 100%; display: inline-block;">
          <footer>
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
            <a href="#">Instagram</a>
            <a href="#">Pinterest</a>
            <a href="#">Email</a>
            <a href="#">RSS</a>
          </footer>
        </row>       
        <!----> 
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

