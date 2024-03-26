<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />

                <link rel="stylesheet" type="text/css" href="stile_pag.css" />
                <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
                <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
                <!-- Font awesome -->
                <script src="https://kit.fontawesome.com/631a8dead6.js" crossorigin="anonymous"></script>
            </head>
            <body>

                <h1 class="title">
                    <xsl:value-of select="tei:TEI[@xml:id='terzo_fascicolo']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:id='pagina3']" />
                </h1>
                <figure class="statua">
                    <a href="pagina.html">
                        <img src="img_ciano1.jpeg" />
                    </a>
                </figure>
                <main>
                    <section id="descrizione" class="descrizione">
                        <img src="statua3_ciano_pag1.jpeg" alt="risorsa_primaria_img" />
                        <div id="card_descrizione">
                            <h2>Caratteristiche Fascicolo 1</h2>
                            <div>
                                <p><xsl:apply-templates select="//tei:sourceDesc[@xml:id='fascicolo_tre']" /></p>
                            </div>
                        </div>
                    </section>

                    <!-- Descrizione fisica -->
                    <section class="descrizione">   
                        <div class="card_descrizione" id="order_2">
                            <xsl:apply-templates select="//tei:msDesc/tei:physDesc[@xml:id='risorsa3']" />
                        </div>
                    </section>
                    <!-- Storia editoriale -->
                    <section class="descrizione">
                        <div class="card_descrizione">
                            <xsl:apply-templates select="//tei:history[@xml:id='h_tre']" />
                        </div>
                    </section>
                    <nav id="info">
                        <h2> I documenti</h2>
                        <div class="card">
                            <div class="container">
                                <a href="fascicolo1.html">
                                    <img src="statua1_ciano_pag1.jpeg" alt="fascicolo1" style="width:100%" />
                                    <h4><b>Fascicolo 1</b></h4> 
                                    <p>Descrizione Fascicolo 1</p> 
                                </a>
                            </div>
                            
                            <div class="container">
                                <a href="fascicolo2.html">
                                    <img src="statua2_ciano_pag1.jpeg" alt="fascicolo2" style="width:100%" />
                                    <h4><b>Fascicolo 2</b></h4> 
                                    <p>Descrizione Fascicolo 2</p> 
                                </a>
                            </div>
                            
                            
                        </div>
                        <ul class="navbar">
                            <h2>Informazioni sui documenti</h2>
                            <li><a href="pagina.html">Torna alla Home Page</a></li>
                            <li><a href="pagina_persone.html">Vai alla lista delle persone</a></li>
                            <li><a href="pagina_organizzazioni.html">Vai alla lista delle organizzazioni</a></li>
                            <li><a href="pagina_posti.html">Vai alla lista dei luoghi</a></li>
                             <li><a href="pagina_oggetti.html">Vai alla lista delle navi</a></li>
                        </ul>
                    </nav>
                    <section class="documenti">
                        <!-- Slide show documenti-->
                        <div class="slide">
           
                            <button id="indietro"><i class="fa-solid fa-angle-left fa-6x"></i></button>
                            <button id="avanti"><i class="fa-solid fa-angle-right fa-6x"></i></button>
                            <xsl:apply-templates select="//tei:facsimile" />
                            <p><span id="testo_foto"></span></p>
                        </div>
                        <div class="testi"> 
                                <xsl:apply-templates select="//tei:body[@xml:id='fascicolo_testo3']"/>
                            <span id="testo"></span>
                        </div>    
                    </section>
                    
                    
                </main>
                <!-- footer -->
                <figure class="statua">
                    <img src="immagine_ciano2.jpeg" />
                </figure>
                <footer class="riferimenti">
                    <section>
                        <div>
                            <h2>Credits</h2>
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt" />
                        </div>
                        <div>
                            <h2>Il progetto</h2>
                            <p>
                            Il progetto nasce dal corso magistrale di Storia Pubblica Digitale della facoltà Informatica Umanistica dell'università di Pisa.
                            <a href="https://www.unipi.it/"> </a>
                            </p>
                        </div>
                        <div id="logo">
                            <img src="cherubino_white.png" />
                        </div>
                    </section>
                    
                </footer>
                <!-- javaScript -->
                <script src="fascicolo3.js"></script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tei:sourceDesc[@xml:id='fascicolo_tre']">
        <h1><xsl:value-of select="//tei:title[@xml:id='pagina3']" /></h1>
        <h3>Titolo:</h3>
        <p><xsl:value-of select="//tei:title[@xml:id='pagina3']"/></p>
        <h3>Identificativo documento:</h3>
        <p><xsl:value-of select="//tei:idno[@xml:id='id_tre']"/></p>
        <h3>Conservazione:</h3>
        <p><xsl:value-of select="//tei:msIdentifier/tei:repository"/></p>
    </xsl:template>
    <xsl:template match="tei:physDesc[@xml:id='risorsa3']">
    
        <h2>Descrizione fisica</h2>
        <h3>Supporto:</h3>
        <p><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:support"/></p>
        <h3>Condizioni del documento:</h3>
        <p><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:condition"/></p>
        <h3>Firme</h3>
        <p><xsl:value-of select="//tei:handDesc"/></p>

    </xsl:template>
     <xsl:template match="tei:history[@xml:id='h_tre']">
        <h2>Storia editoriale</h2>
        <p><xsl:value-of select="tei:origin/tei:p"/></p>
    </xsl:template>

    <!-- Template immagini e mappatura -->
    <xsl:template match="tei:facsimile[@xml:id='fascicolo3']">
        <xsl:for-each select="tei:surface">
            <xsl:element name="img">
                <xsl:attribute name="class">foto</xsl:attribute>
                <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
                <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
                <xsl:attribute name="alt">slide-foto</xsl:attribute>
            </xsl:element>
            <xsl:element name="map">
                <xsl:attribute name="name"><xsl:value-of select="@xml:id" /></xsl:attribute>
                <xsl:variable name="Width">
                    <xsl:value-of select="concat(substring-before(tei:graphic/@width, 'px'), '')"/> <!-- rimozione di 'px' dalla stringa-->   
                </xsl:variable>          
                <xsl:variable name="ratio" select="500 div $Width"/> <!-- ratio = rapporto tra l’attuale dimensione della foto (500) e la dimensione della foto prima della sua scalatura -->
                <xsl:for-each select="tei:zone">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="concat(@ulx*$ratio, ',', @uly*$ratio, ',', @lrx*$ratio, ',', @lry*$ratio)"/> <!-- calcolo nuove coordinate aree adattate alle dimensioni della foto-->
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    
    

    <!-- testo --> 
    <xsl:template match="tei:body[@xml:id='fascicolo_testo3']">
        <xsl:for-each select="tei:div">
            <xsl:element name="b">
                <xsl:attribute name="class">sezione</xsl:attribute>
                <xsl:attribute name="id">
                Sezione <xsl:value-of select="@facs" />
                </xsl:attribute>
            </xsl:element>
            
            <xsl:element name="span">
                <xsl:attribute name="class">testo</xsl:attribute>
                <xsl:for-each select="tei:ab">
                    <!--suddivisione tra ab e item-->
                    <xsl:choose>
                        <xsl:when test="tei:list/tei:item">
                            <h3>Sezione <xsl:value-of select="@n" /></h3>
                            <xsl:for-each select="tei:list/tei:item">
                                <xsl:element name="b">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="@facs" />
                                    </xsl:attribute>
                                    <xsl:attribute name="class">
                                        numero
                                    </xsl:attribute>
                                    <h3>Elemento <xsl:value-of select="@n" /></h3>
                                    <xsl:apply-templates/>
                                    <br />
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="b">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="@facs" />
                                    </xsl:attribute>
                                    <xsl:attribute name="class">
                                        numero
                                    </xsl:attribute>
                                    <h3>Sezione <xsl:value-of select="@n" /></h3>
                                    <xsl:apply-templates/>
                                    <br />
                                </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
    


    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <del><xsl:apply-templates /></del>
    </xsl:template>
    
    <!-- Aggiunte -->
    <xsl:template match="tei:add">
        <xsl:choose>
            <xsl:when test="current()[@place='margin']">
                <add><b>&lt;</b><i>(<xsl:apply-templates />)<b>&gt;</b></i></add>
            </xsl:when>
            <xsl:otherwise>
                <add><b>^</b><i>(<xsl:apply-templates />)</i></add>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- Supplied -->
    <xsl:template match="tei:supplied">
         <xsl:element name="b">
            <xsl:attribute name="class">suppl</xsl:attribute>
                   <add><b>*</b><i>(<xsl:apply-templates />)</i></add>
        </xsl:element>

    </xsl:template>
    
    <!-- Forma originale -->
    <xsl:template match="tei:orig">
        <xsl:element name="b">
            <xsl:attribute name="class">orig</xsl:attribute>
            <orig><xsl:apply-templates /></orig>
        </xsl:element>
    </xsl:template>
    
    <!-- Forma regolarizzata (reg) -->
    <xsl:template match="tei:reg">
        <xsl:element name="span">
            <xsl:attribute name="class">reg</xsl:attribute>
            <reg><xsl:apply-templates /></reg>
        </xsl:element>
    </xsl:template>
    
   
    
    
    <!-- Abbreviazioni -->
    <xsl:template match="tei:abbr">
        <xsl:element name="b">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="current()" />
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            -<i><xsl:value-of select="current()" /></i>-
        </xsl:element>
    </xsl:template>
  
    
    <!-- Elementi mancanti --> 
    <xsl:template match="tei:gap">
        <span class="gap">?</span>
    </xsl:template>

    <!--crediti Footer-->
    <xsl:template match="tei:editionStmt">
        <p><xsl:value-of select="tei:origin"/></p>
        <xsl:for-each select="tei:respStmt"> 
            <p><xsl:value-of select="tei:resp"/></p>
            <ul>
            <xsl:for-each select="tei:name">
                <li><xsl:apply-templates/></li>
            </xsl:for-each> 
            </ul>
        </xsl:for-each> 
    </xsl:template>

    
</xsl:stylesheet>
