<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compact" />

    <xsl:template match="/">

        <html lang="en">

        <head>
            <meta charset="UTF-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

            <link rel="stylesheet" type="text/css" href="css/styles.css"/>
            <script src="js/fontawasome.js"></script>


            <title>SerPhora</title>
        </head>

        <body>
            <div class="header">
                <h1>SerPhora</h1>
                <h1>Venta de plantas</h1>
            </div>
        </body>

        <div class="row">
            <div class="pad test">
                <div class="padcolor">
                <br></br>
                </div>
                <xsl:for-each select="/catalogo/planta">

                    <xsl:if test="position() mod 2 = 0">
                        <div class="row white">
                            <div class="two-column">
                                <h3><i class="far fa-leaf-heart"></i><xsl:value-of select="nomCien"/></h3>
                                <p class="text-2 padtext"><i class="fas fa-map-signs brown tam"></i>: <xsl:value-of select="zonaTaller"/></p>
                                <p class="text-2 padtext"><i class="fad fa-sun yellow tam"></i>: <xsl:value-of select="luz"/></p>
                                <p class="descrip padtext"><i class="fas fa-file-medical green tam"></i>: <xsl:value-of select="cuidado"/></p>
                                <h4><xsl:value-of select="precio"/></h4>

                            </div>

                            <div class="two-column">
                                <img class="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                </img>
                            </div>
                        </div>
                    </xsl:if>

                    <xsl:if test="position() mod 2 = 1">
                        <div class="row white ">
                            <div class="two-column">
                                <img class="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                </img>
                            </div>

                            <div class="two-column">
                                <h3><i class="far fa-leaf-heart"></i><xsl:value-of select="nomCien"/></h3>
                                <p class="text-2"><i class="fas fa-map-signs brown tam"></i>: <xsl:value-of select="zonaTaller"/></p>
                                <p class="text-2"><i class="fad fa-sun yellow tam"></i>: <xsl:value-of select="luz"/></p>
                                <p class="descrip"><i class="fas fa-file-medical green tam"></i>: <xsl:value-of select="cuidado"/></p>
                                <h4><xsl:value-of select="precio"/></h4>
                            </div>
                        </div>
                    </xsl:if>
                   <div class="padcolor">
                    <br></br>
                   </div>
                </xsl:for-each>
            </div>
        </div>

        </html>
    </xsl:template>
</xsl:stylesheet>