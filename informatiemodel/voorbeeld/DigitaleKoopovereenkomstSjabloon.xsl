<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:zvg="http://taxonomie.zorgeloosvastgoed.nl/def/zvg#"
	xmlns="http://www.w3.org/1999/xhtml"

	exclude-result-prefixes="xsl xs rdf"
>

<xsl:output method="html" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

<xsl:template match="rdf:RDF">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>KOOPAKTE BESTAANDE EENGEZINSWONING</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <style>
    a.concept {
      color: black;
      text-decoration-style: dotted;
    }
    a.link {
      background-color: lightgray;
    }
    td {
      vertical-align: text-top;
    }
    td.sign {
      border-bottom-width: 1;
      border-bottom-color: black;
      height: 60px;
      width: 200px;
      background-color: lightgray;
    }
    s a {
      color: black !important;
      text-decoration: line-through !important;
      text-decoration-style: solid !important;
    }
    span {
      background-color: lightgray;
    }
  </style>
</head>
<body>

<h1>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">KOOPOVEREENKOMST</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Woning">WONING</a>
</h1>

<p>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ModelKoopovereenkomst">Model koopovereenkomst</a>
voor een bestaande eengezinswoning (model 2018).
Vastgesteld door de Nederlandse Vereniging van Makelaars en Taxateurs in
onroerende goederen NVM, VastgoedPRO, VBO Makelaar, de Consumentenbond en Vereniging
Eigen Huis.
</p>

<p>
Gebruik van dit model is uitsluitend toegestaan indien de ingevulde, de toegevoegde of de
afwijkende tekst duidelijk als zodanig herkenbaar is.
</p>

<xsl:apply-templates select="zvg:Koop"/>

<p>* Doorhalen wat niet van toepassing is</p>

</body>

</html>
</xsl:template>

<xsl:template match="zvg:ObjectlocatieBinnenland">
  <span about="{@rdf:about}" typeof="zvg:ObjectlocatieBinnenland">
    <span property="zvg:woonplaatsNaam"><xsl:value-of select="zvg:woonplaatsNaam"/></span><xsl:text>, </xsl:text>
    <span property="zvg:openbareRuimteNaam"><xsl:value-of select="zvg:openbareRuimteNaam"/></span><xsl:text> </xsl:text>
    <span property="zvg:huisnummer"><xsl:value-of select="zvg:huisnummer"/></span><xsl:text> (</xsl:text>
    <span property="zvg:postcode"><xsl:value-of select="zvg:postcode"/></span><xsl:text>)</xsl:text>
  </span>
</xsl:template>

<xsl:template match="zvg:vertegenwoordigdDoor">
	<xsl:for-each select="*">
		<span about="{@rdf:about}" typeof="zvg:NatuurlijkPersoon">
			<a class="link" property="zvg:vertegenwoordigdDoor" href="{@rdf:about}"><xsl:value-of select="zvg:naam"/></a>,
			<a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Bereikbaar">bereikbaar</a> via
			<span property="zvg:contactGegevens" resource="_:cg"><span about="_:cg" typeof="zvg:Contactgegevens"><span property="zvg:telefoonnummer"><xsl:value-of select="zvg:contactGegevens/zvg:ContactGegevens/zvg:telefoonnummer"/></span></span></span>,
			<a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Legitimatie">legitimatie</a><xsl:text> </xsl:text>
			<a class="link" property="zvg:identificatie" href="{zvg:identificatie/@rdf:resource}"><xsl:value-of select="zvg:identificatie/@rdf:resource"/></a>
		</span>
	</xsl:for-each>
</xsl:template>

<xsl:template match="zvg:Verkoper">

<table>
  <tr>
    <td width="30">A.</td>
    <td><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">Verkoper</a>(s)</td>
  </tr>
  <tr property="zvg:aangebodenDoor" resource="{@rdf:about}">
    <td/>
    <td about="{@rdf:about}" typeof="zvg:Verkoper">
      <p>
        <a class="link" href="{@rdf:about}"><span property="zvg:statutaireNaam"><xsl:value-of select="zvg:statutaireNaam"/></span></a>,
        <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/GevestigdTe">gevestigd</a> te
        <a class="link" property="zvg:postlocatie" href="{zvg:postlocatie/@rdf:resource}"><xsl:apply-templates select="zvg:postlocatie/zvg:ObjectlocatieBinnenland"/></a>,
        <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/InschrijvingHandelsregister">ingeschreven in het Handelsregister van de Kamer van Koophandel</a> onder nummer
        <a class="link" href="{@rdf:about}"><span property="zvg:kvkNummer"><xsl:value-of select="zvg:kvkNummer"/></span></a>, ten dezen
        <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/VertegenwoordigdDoor">vertegenwoordigd door</a>:
      </p>
			<xsl:for-each select="zvg:vertegenwoordigdDoor">
				<p><xsl:value-of select="position()"/><xsl:text>. </xsl:text>
					<xsl:apply-templates select="."/>
				</p>
			</xsl:for-each>

      <p>Ten dezen
        <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/HandelendAls">handelend als</a> respectievelijk
        <span>................</span> en
        <span>................</span>
      </p>
    </td>
  </tr>
</table>
</xsl:template>

<xsl:template match="zvg:Koop">

<div about="{@rdf:about}" typeof="zvg:Koop">
<p><i>
Bij <a class="concept" href="{@rdf:about}">deze koopovereenkomst</a>
behoort de "Toelichting op de koopovereenkomst voor de consument".
</i></p>

<p><b>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/OndergetekendenKoopovereenkomst">De ondergetekende(n)</a>:
</b></p>

<xsl:apply-templates select="zvg:aangebodenDoor/zvg:Verkoper"/>

<p>De onder (A) genoemde perso(o)n(en) hierna (samen) te noemen "<a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>".</p>

<p>
  <s>Verkoper verklaart voor zover nodig te handelen met toestemming van zijn echtgeno(o)t(e)/geregistreerd partner die als bewijs daarvan deze akte medeondertekent.</s>
</p>

<table>
  <tr>
    <td width="30">B.</td>
    <td width="150"><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">Koper</a>(s)</td>
    <td width="250" />
    <td width="250">Echtgeno(o)t(e), geregistreerd partner of andere medekoper</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Naam">Naam</a>:</td>
    <td><a class="link" href="#">......................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Voornamen">Voornamen</a>:</td>
    <td><a class="link" href="#">.................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Geboorteplaats">Geboorteplaats</a>:</td>
    <td><a class="link" href="#">....................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Geboortedatum">Geboortedatum</a>:</td>
    <td><a class="link" href="#">...................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td>
      <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Straat">Straat</a>,
      <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Huisnummer">huisnummer</a>:
    </td>
    <td><a class="link" href="#">.....................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Postcode">Postcode</a>:</td>
    <td><a class="link" href="#">.....................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Woonplaats">Woonplaats </a></td>
    <td><a class="link" href="#">....................</a></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Mailadres">E-mailadres</a>:</td>
    <td><span>.......................</span></td>
    <td>.........................................</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Telefoon">Telefoon</a>:</td>
    <td><span>..........................</span></td>
    <td>.........................................</td>
  </tr>
</table>
<table>
  <tr>
    <td width="30" />
    <td width="300"><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/BurgerlijkeStaat">Burgerlijke staat</a>:</td>
    <td width="310"><s>gehuwd</s>/<s>geregistreerd partnerschap</s>/<s>ongehuwd en geen geregistreerd partnerschap</s>*</td>
  </tr>
  <tr>
    <td />
    <td><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Huwelijksgoederenrecht">Huwelijksgoederenrecht</a>:</td>
    <td><s>gemeenschap van goederen</s>/<s>huwelijkse voorwaarden</s>*</td>
  </tr>
</table>
<table>
  <tr>
    <td width="30" />
    <td width="150"><a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Legitimatie">Legitimatie<br />(soort en nummer)</a>:</td>
    <td width="250"><a class="link" href="https://changchozv.inrupt.net/profile/card#me">https://changchozv.inrupt.net/ profile/card#me</a></td>
    <td>.........................................</td>
  </tr>
</table>

<p>De onder (B) genoemde perso(o)n(en) hierna (samen) te noemen "<a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>".</p>

<p>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">Koper</a> verklaart voor zover nodig te handelen met
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/ToestemmingPartner">toestemming</a> van zijn echtgeno(o)t(e)/ geregistreerd partner, die door medeondertekening van deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> hierbij aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/ToestemmingPartner">toestemming</a> en een onherroepelijke
  <a class="concept" href="https://not.zorgeloosvastgoed.n/id/concept/Volmacht">volmacht</a> geeft de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> te
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Bezwaren">bezwaren</a>. Door medeondertekening verklaart de echtgeno(o)t(e)/geregistreerd partner tevens zich te zullen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/NietTegenwerken">onthouden van activiteiten die koper tegenwerken</a> bij het verkrijgen van de benodigde vergunningen en/of financieringen en/of Nationale Hypotheek Garantie en/of toezegging(en) en/of andere zaken.
</p>

<p>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">Verkoper</a> en
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> worden hierna gezamenlijk ook wel aangeduid als
  "<a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>".
</p>

<p>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">Verkoper</a> en
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> komen overeen:
</p>

<h2>Artikel 1
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVerkoopEnKoopOptieAEigendom">Verkoop en koop</a>
</h2>

<p><b>Optie A:
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVerkoopEnKoopOptieAEigendom">Eigendom</a>*
</b></p>

<p>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">Verkoper</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoop">verkoopt</a> aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>, die van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Aankoop">koopt</a> de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Eigendom">eigendom</a> van het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Perceel">perceel</a> grond met
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Woning">woning</a> en verdere
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Aanhorigheden">aanhorigheden</a>:
</p>

<table>
  <tr>
    <td>-</td>
    <td>
      <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/PlaatselijkBekend">plaatselijk bekend</a> (incl. postcode):
      <a class="link" href="http://bag.basisregistraties.overheid.nl/bag/id/nummeraanduiding/0356200000032392">Fakkelstede 1, 3431 HZ Nieuwegein</a>
    </td>
  </tr>
  <tr>
    <td>-</td>
    <td>
      <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/KadastraleAanduiding">kadastraal bekend</a> gemeente
      <a class="link" href="http://brk.basisregistraties.overheid.nl/id/begrip/gemeente/472">Jutphaas</a>, sectie
      <a class="link" href="http://brk.basisregistraties.overheid.nl/brk/id/sectie/JPS00-C">C</a> no.
      <a class="link" href="http://brk.basisregistraties.overheid.nl/brk/id/perceel/NL.IMKAD.KadastraalObject.26790224870000">2248</a>
    </td>
  </tr>
  <tr>
    <td>-</td>
    <td>
      <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Grootte">groot</a>
      <span>1424</span> m<sup>2</sup>,
    </td>
  </tr>
</table>

<p>hierna te noemen: "de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak,</a>"
</p>

<p>tegen een
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a> van
  €<span>1.100.000</span>, zegge <span>EEN MILJOEN HONDERDDUIZEND EURO</span>
</p>

<p>met inbegrip van de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Zaak">zaken</a> zoals omschreven in de bij deze koopovereenkomst behorende
  <a class="link" href="">lijst</a>.
</p>

<p>De in de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a> opgenomen
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/RoerendeZaak">roerende zaken</a> worden door partijen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/WaarderingRoerendeZaken">gewaardeerd</a> op
  €<span>1.200</span>, zegge <span>TWAALFHONDERD EURO</span>
</p>

<p><s><b>Optie B:
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVerkoopEnKoopOptieBErfpacht">Erfpacht</a>*
</b></s></p>

<p><s>
  <b>1.1.</b>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">Verkoper</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/Verkoop">verkoopt</a> aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/Koper">koper</a>, die van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/Aankoop">koopt</a> het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/doc/concept/Erfpacht">recht van erfpacht</a> op
</s></p>

<p><s>het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Perceel">perceel</a> grond met de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Woning">woning</a> en verdere
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Aanhorigheden">aanhorigheden</a>:
</s></p>

<table>
  <tr>
    <td>-</td>
    <td><s>
      <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/PlaatselijkBekend">plaatselijk bekend</a> (incl. postcode):
      <span>...............</span>
    </s></td>
  </tr>
  <tr>
    <td>-</td>
    <td><s>
      <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/KadastraleAanduiding">kadastraal bekend</a> gemeente
      <span>...............</span>, sectie
      <span>...............</span> no.
      <span>...............</span>
    </s></td>
  </tr>
  <tr>
    <td>-</td>
    <td><s>
      <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Grootte">groot</a>
      <span>...............</span> m<sup>2</sup>,
    </s></td>
  </tr>
</table>

<p><s>hierna te noemen: "de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak,</a>"
</s></p>

<p><s>tegen een
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a> van
  €<span>...............</span>, zegge <span>...............</span>
</s></p>

<p><s>met inbegrip van de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Zaak">zaken</a> zoals omschreven in de bij deze koopovereenkomst behorende
  <a href="">lijst</a>.
</s></p>

<p><s>De in de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a> opgenomen
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/RoerendeZaak">roerende zaken</a> worden door partijen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/WaarderingRoerendeZaken">gewaardeerd</a> op
  €<span>...............</span>, zegge <span>...............</span>
</s></p>

<p><s>
  <b>1.2.</b> Op de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> zijn de volgende
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Erfpachtvoorwaarden">erfpachtvoorwaarden</a> van toepassing:
  <span>...............</span>
</s></p>

<p><s>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/Koper">Koper</a> verklaart kennis te hebben genomen van de inhoud van de van toepassing zijnde
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Erfpachtvoorwaarden">voorwaarden</a>, die aan de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> zijn toegevoegd.
</s></p>

<p><s>
  <b>1.3.</b> Het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/doc/concept/Erfpacht">recht van erfpacht</a> is
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/EeuwigdurendeErfpacht">eeuwigdurend</a> /
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VoortdurendeErfpacht">voortdurend</a> /
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/TijdelijkeErfpacht">tijdelijk</a>* en
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/LooptijdErfpacht">loopt</a> tot en met
  <span>...............</span>
</s></p>

<p><s>Het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/doc/concept/Erfpacht">recht van erfpacht</a> kan voor het eerst worden
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/doc/concept/HerzieningErfpacht">herzien</a> per
  <span>...............</span>
</s></p>

<p><s><b>>1.4.</b> De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Canon">canon</a> is eeuwigdurend afgekocht/De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Canon">canon</a> is reeds vooruitbetaald tot en met <span>.........</span>*
</s></p>
<p><s>De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Canon">canon</a> dient
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/CanonBetaling">periodiek te worden voldaan</a> en
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/CanonJaarlijksBedrag">bedraagt</a> thans
  €<span>...............</span> per <span>...............</span>
</s></p>

<p><s>De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Canon">canon</a> kan voor het eerst worden
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/CanonAanpassing">aangepast</a> op
  <span>...............</span>
</s></p>

<p><s>De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Canon">canon</a> kan voor het eerst worden
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/CanonIndexering">geïndexeerd</a> op
  <span>...............</span>
</s></p>

<h2>Artikel 2
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelKostenOverdrachtsbelasting">Kosten/ Overdrachtsbelasting</a>
</h2>

<p>
  <b>2.1.</b> De
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/KostenEnOverdrachtsbelasing">kosten die op de eigendomsoverdracht betrekking hebben</a> en die de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> in rekening brengt, zoals
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Overdrachtsbelasting">overdrachtsbelasting</a>,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notariskosten">notariskosten</a> en
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Kadasterkosten">kadasterkosten</a>, zijn voor rekening van
  <span> koper/<s>verkoper</s></span>*. De
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> wordt aangewezen door
  <span><s>koper</s>/verkoper</span>*.
</p>

<p>De
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/KostenAflossingDoorhaling">kosten</a> die de notaris in rekening brengt in verband met de
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Aflossen">aflossing</a> van
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Overbruggingslening">overbruggingsleningen</a> en/of
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Aflossen">aflossing</a> en
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/DoorhalingHypotheek">doorhaling</a> van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/RechtVanHypotheek">hypotheken</a> en/of
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Beslag">beslagen</a> die op de onroerende zaak rusten, zijn voor rekening van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>.
</p>

<p>De
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/KostenVestigenHypotheek">kosten</a> die de notaris in rekening brengt in verband met het
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VestigingHypotheek">vestigen van een hypotheek</a> met betrekking tot de onroerende zaak zijn voor rekening van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>.
</p>

<p>Eventuele
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/OverigeNotariskosten">overige kosten</a> die de notaris in rekening brengt, zoals de kosten van een
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Volmacht">volmacht</a> en de kosten van een
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Tolk">tolk</a>, zijn voor rekening van de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> die hiervan gebruik maakt.
</p>

<p>
  <b>2.2.</b> Indien de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Overdrachtsbelasting">overdrachtsbelasting</a> voor rekening van koper komt en de heffingsgrondslag wordt
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/VerminderingOverdrachtsbelastingArt13">verminderd</a> door toepassing van
  <a class="concept" href="http://wetten.overheid.nl/jci1.3:c:BWBR0002740&amp;hoofdstuk=II&amp;afdeling=2&amp;artikel=13">artikel 13 Wet op belastingen van rechtsverkeer (WBR)</a>, zal koper aan verkoper
  <span>wel/<s>niet</s></span>* uitkeren het
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/VerrekeningOverdrachtsbelastingArt13">verschil</a>
tussen enerzijds de overdrachtsbelasting die zonder toepassing van artikel 13
WBR verschuldigd zou zijn en anderzijds de werkelijk verschuldigde overdrachtsbelasting
(hierna te noemen: "art. 13-verschil").
</p>

<p>Indien het
art. 13-verschil aan verkoper wordt uitgekeerd, dan zal koper daarover (ook)
overdrachtsbelasting verschuldigd zijn. Partijen spreken af dat de over het
art. 13-verschil verschuldigde overdrachtsbelasting in mindering wordt gebracht
op het aan verkoper uit te keren art. 13-verschil. Hiermee wordt bewerkstelligd
dat het totaalbedrag dat koper betaalt aan overdrachtsbelasting vermeerderd met
het aan verkoper uit te keren art. 13-verschil gelijk zal zijn aan het bedrag
dat koper aan overdrachtsbelasting verschuldigd zou zijn geweest zonder
toepassing van artikel 13 WBR.</p>

<p>Indien
partijen overeenkomen dat het genoemde verschil aan verkoper wordt uitgekeerd
zal dit via de notaris gelijktijdig met de betaling van de koopsom plaatsvinden.</p>

<h2>Artikel 3
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBetaling">Betaling</a>
</h2>

<p>De
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Betaling">betaling</a> van de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a>,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/KostenEnOverdrachtsbelasing">kosten en belastingen</a> vindt plaats via de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> bij het
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/PasserenAkteLevering">passeren</a> van de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/AkteVanLevering">akte van levering</a>.
</p>

<p>Verkoper stemt er mee in dat de notaris de koopsom onder zich houdt totdat zeker is dat de onroerende zaak wordt geleverd vrij van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/RechtVanHypotheek">hypotheken</a>,
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Beslag">beslagen</a> en
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/InschrijvingOpenbareRegisters">inschrijvingen</a> daarvan.
</p>

<h2>Artikel 4
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelEigendomsoverdracht">Eigendomsoverdracht</a>
</h2>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelEigendomsoverdrachtLid1">4.1.</a></b> De
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/AkteVanLevering">akte van levering</a> zal
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/PasserenAkteLevering">gepasseerd</a> worden op
  <span>31 januari 2019</span> of zoveel eerder of later als partijen tezamen nader overeenkomen, ten overstaan van een notaris verbonden aan notariskantoor
  <span>Sneep</span>, gevestigd te
  <span>Utrecht</span>, hierna verder te noemen
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelEigendomsoverdrachtLid2">4.2.</a></b> Verkoper staat in
voor zijn bevoegdheid tot verkoop en tot eigendomsoverdracht ten tijde van het
passeren van de akte van levering.
</p>

<p><b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelEigendomsoverdrachtLid3">4.3</a></b>. Indien sprake is
van de verkoop van een recht van erfpacht moet in deze koopovereenkomst voor
"eigendomsoverdracht" gelezen worden "de overdracht van het recht van erfpacht".
</p>

<h2>Artikel 5
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBankgarantieWaarborgsom">Bankgarantie/ Waarborgsom</a>
</h2>

<p>
  <b>5.1.</b> Tot zekerheid voor de nakoming van de verplichtingen van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> zal deze uiterlijk
  <span>één week na het vervallen van het financieringsvoorbehoud</span> een schriftelijke door een bankinstelling afgegeven
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Bankgarantie">bankgarantie</a> doen
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/StellenBankgarantie">stellen</a> voor een bedrag van
  €<span>110.000</span>, zegge <span>HONDERDTIENDUIZEND EURO</span>.
Deze bankgarantie moet onvoorwaardelijk zijn, voortduren tot ten minste één
maand na de overeengekomen datum van eigendomsoverdracht, en de clausule
bevatten dat de desbetreffende bankinstelling op eerste verzoek van de notaris
het bedrag van de garantie aan de notaris zal uitkeren. Indien het bedrag van
de garantie aan de notaris wordt uitgekeerd, zal deze daarmee handelen als in
artikel 11 is bepaald. Indien zich het gestelde in artikel 11.5 sub d voordoet,
dient de bankgarantie te worden verlengd bij gebreke waarvan partijen de
notaris ingevolge deze koopovereenkomst verplichten de bankgarantie te innen. Bij
dezen wordt de notaris verplicht en voor zover nodig onherroepelijk gemachtigd
om, zodra koper aan zijn verplichtingen heeft voldaan en de juridische levering
is voltooid, de bankinstelling te berichten dat de door koper gestelde
bankgarantie kan vervallen. Onder bankinstelling wordt in dit artikel begrepen
een bank of verzekeraar in de zin van artikel 1:1 Wet op het financieel
toezicht.</p>

<p><b>5.2.</b> In plaats van deze bankgarantie te stellen kan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> een
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Waarborgsom">waarborgsom</a>
  storten ter hoogte van het in artikel 5.1 genoemde bedrag in handen van de notaris via diens
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Kwaliteitsrekening">derdenrekening</a>.
</p>

<p>De waarborgsom moet uiterlijk op de in artikel 5.1 genoemde dag zijn bijgeschreven op genoemde rekening.</p>

<p>Deze waarborgsom zal, behoudens het in artikel 11 bepaalde, met de koopsom worden
verrekend voor zover de koopsom en het overige door koper verschuldigde niet uit
een door koper aangegane geldlening worden voldaan. Het gedeelte van de
waarborgsom dat niet wordt verrekend, wordt aan koper terugbetaald zodra hij
aan zijn verplichtingen op grond van deze koopovereenkomst heeft voldaan.</p>

<p>Over de waarborgsom wordt door verkoper geen rente vergoed.</p>

<p>Als de notaris over de waarborgsom rente vergoedt, komt deze rente aan koper toe.</p>

<p><b>5.3.</b> Indien
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> in staat van
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Faillisement">faillissement</a> wordt verklaard of is toegelaten tot de
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Schuldsaneringsregeling">schuldsaneringsregeling</a>
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/NatuurlijkPersoon">natuurlijke personen</a> en de
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Curator">curator</a> of
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Bewindvoerder">bewindvoerder</a>
deze koopovereenkomst niet gestand wenst te doen, zal het in artikel 5.1
genoemde bedrag van de bankgarantie respectievelijk de waarborgsom van
rechtswege als boete bedoeld in artikel 11.2 aan verkoper zijn
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Verbeuren">verbeurd</a>.
</p>

<h2>Artikel 6
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelStaatOnroerendeZaakGebruik">Staat van de onroerende zaak/ Gebruik</a>
</h2>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelRechtenAanspraken">6.1.</a></b>
De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> zal aan koper in eigendom worden overgedragen in de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/StaatOnroerendeZaak">staat</a> waarin deze zich
bij het tot stand komen van deze koopovereenkomst bevindt, derhalve met alle
daarbij behorende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/RechtenAanspraken">rechten en aanspraken</a>,
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/HeersendeErf">heersende erfdienstbaarheden</a> en
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/KwalitatieveRechten">kwalitatieve rechten</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ZichtbareEnOnzichtbareGebreken">zichtbare en onzichtbare gebreken</a> en vrij van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/RechtVanHypotheek">hypotheken</a>,
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Beslag">beslagen</a> en
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/InschrijvingOpenbareRegisters">inschrijvingen</a> daarvan. Koper aanvaardt deze staat en daarmee ook de op de onroerende zaak rustende
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/PubliekrechtelijkeBeperking">publiekrechtelijke beperkingen</a> voor zover dat geen
  "<a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/BijzondereLasten">bijzondere lasten</a>" zijn.
</p>

<p><b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelLasten">6.2</a>.</b>
Koper aanvaardt uitdrukkelijk alle
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/DienendeErf">lijdende erfdienstbaarheden</a>,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/BijzondereLasten">bijzondere lasten</a> en beperkingen, afzonderlijke
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/ZakelijkRecht">zakelijke rechten</a>,
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Kettingbeding">kettingbedingen</a> en
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/KwalitatieveVerplichting">kwalitatieve verplichtingen</a> die op de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> rusten, e.e.a. voor zover blijkend en/of voortvloeiend uit de laatste en voorgaande notariële
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/AkteVanLevering">akten van levering</a> en/of van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VestigenBeperktRecht">vestiging van een beperkt recht</a> op de onroerende zaak, dan wel blijkend en/of voortvloeiend uit een afzonderlijke
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/NotarieleAkte">notariële akte</a>.
</p>

<p>Verkoper heeft van al deze notariële akten de letterlijke tekst (in kopie) aan koper ter hand gesteld.</p>

<p>Koper verklaart kennis te hebben genomen van de inhoud van deze akten.</p>

<p>Verkoper heeft aan koper medegedeeld dat de volgende
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/PubliekrechtelijkeBeperking">publiekrechtelijke beperkingen</a> op de onroerende zaak rusten:
  <span>geen</span>
</p>

<p>Koper verklaart deze bijzondere (publiekrechtelijke) lasten uitdrukkelijk te aanvaarden.</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelEigenschappenNormaalGebruik">6.3.</a></b> De onroerende zaak zal bij de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a> de feitelijke eigenschappen bezitten die nodig zijn voor een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/EigenschappenNormaalGebruik">normaal gebruik</a> als:
  <span>particulier woonhuis</span>
</p>

<p>Indien de
feitelijke levering eerder plaatsvindt, zal de onroerende zaak op dat moment de
eigenschappen bezitten die voor een normaal gebruik nodig zijn.</p>

<p>Verkoper
staat niet in voor andere eigenschappen dan die voor een normaal gebruik nodig
zijn. Gebreken die het normale gebruik belemmeren en die aan koper bekend of
kenbaar zijn op het moment van het tot stand komen van deze koopovereenkomst
komen voor rekening en risico van koper.</p>

<p>Voor
<a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/GebrekenBelemmeringNormaalGebruik">gebreken die het normale gebruik belemmeren</a> en die niet aan koper bekend of
kenbaar waren op het moment van het tot stand komen van deze koopovereenkomst
is
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> uitsluitend
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/AansprakelijkZijn">aansprakelijk</a> voor de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Herstelkosten">herstelkosten</a>. Bij het
vaststellen van de herstelkosten wordt rekening gehouden met de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/AftrekNieuwVoorOud">aftrek "nieuw voor oud"</a>.
</p>

<p> Verkoper is niet aansprakelijk voor overige (aanvullende) schade, tenzij verkoper een
verwijt treft.</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVerontreiniging">6.4.1.</a></b> Aan verkoper is
  <span>niet bekend of/<s>Aan koper is bekend dat</s></span>* de onroerende zaak
    <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verontreiniging">verontreiniging</a>
bevat die ten nadele strekt van het in artikel 6.3 omschreven gebruik of die
heeft geleid of zou kunnen leiden tot een verplichting tot
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schoning">schoning</a>
van de onroerende zaak, dan wel het nemen van andere maatregelen.</p>

<p><b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOndergrondseTankVoorHetOpslaanVanVloeistoffen">6.4.2.</a></b>
Voor zover aan verkoper bekend is in de onroerende zaak
  <span><s>wel</s>/geen</span>*
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/OndergrondseTankVoorHetOpslaanVanVloeistoffen">ondergrondse tank voor het opslaan van (vloei)stoffen</a> aanwezig.
</p>

<p>Voor zover
verkoper bekend is met de aanwezigheid van een ondergrondse tank voor het
opslaan van (vloei)stoffen, verklaart hij met betrekking tot het al dan niet
nog in gebruik zijn en/of het volgens wettelijke voorschriften onklaar gemaakt
zijn, het volgende:
  <span>...............</span>
</p>

<p><b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelAsbest">6.4.3.</a></b>
  <span><s>Aan verkoper is niet bekend of/</s>Aan koper is bekend dat</span>* in de onroerende zaak
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Asbest">asbest</a> is verwerkt.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBeschikkingWetBodemsanering">6.4.4.</a></b>
  <span>Aan verkoper is niet bekend of/<s>Aan koper is bekend dat</s></span>* ten aanzien van de onroerende zaak
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Beschikking">beschikkingen</a> of
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Bevel">bevelen</a> in de zin van
  <a class="concept" href="http://wetten.overheid.nl/jci1.3:c:BWBR0003994&amp;hoofdstuk=IV&amp;paragraaf=3&amp;artikel=55">artikel 55 van de Wet Bodembescherming</a> zijn genomen door het
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/BevoegdGezag">bevoegd gezag</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelInspectie">6.5.</a></b>
Koper heeft het recht om direct voorafgaand aan het passeren van de akte van levering de onroerende zaak van binnen en van buiten te
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Inspectie">inspecteren</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelAanschrijvingOverheidNutsbedrijf">6.6.</a></b>
Verkoper staat ervoor in dat tot op
de dag dat hij deze koopovereenkomst heeft ondertekend door de overheid of door nutsbedrijven geen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/AanschrijvingOverheidNutsbedrijf">verbeteringen of herstellingen zijn voorgeschreven</a>
of aangekondigd die nog niet, of niet naar behoren zijn uitgevoerd.
</p>

<p>Indien op
of na de dag van ondertekening en voor het moment van levering een verbetering
of herstelling door de overheid of nutsbedrijven wordt aangekondigd of
voorgeschreven, zijn de gevolgen van de aankondiging of aanschrijving voor
rekening en risico van koper. De aankondiging of aanschrijving komt voor
rekening en risico van verkoper indien deze verband houdt met het niet-nakomen
van uit de wet of deze koopovereenkomst voor verkoper voortvloeiende
verplichtingen.</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelMonument">6.7.1.</a></b>
  <span><s>Aan verkoper is niet bekend of</s>/Aan koper is bekend dat</span>*
de onroerende zaak is aangewezen of is betrokken in een procedure tot aanwijzing:<br />
a. als
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Rijksmonument">rijksmonument</a> in de zin van de
  <a class="concept" href="http://wetten.overheid.nl/jci1.3:c:BWBR0037521">Erfgoedwet</a>;<br />
b. als
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/ProvinciaalMonument">provinciaal monument</a> of
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/GemeentelijkMonument">gemeentelijk monument</a> krachtens een provinciale
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Verordening">verordening</a>, gemeentelijke
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Verordening">verordening</a> of
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Bestemmingsplan">bestemmingsplan</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBeschermdStadsDorpsgezicht">6.7.2.</a></b>
Aan verkoper is niet bekend of /<s>Aan koper is bekend dat</s>*
de onroerende zaak is gelegen binnen een gebied dat is
aangewezen of waarvoor een procedure loopt tot aanwijzing:<br />
a. als
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/BeschermdStadsDorpsgezicht">rijksbeschermd stads- of dorpsgezicht</a> als bedoeld in
  <a class="concept" href="http://wetten.overheid.nl/jci1.3:c:BWBR0037521&amp;hoofdstuk=9&amp;artikel=9.1">artikel 9.1 lid 1 onder a van de Erfgoedwet</a>.<br />
b. als
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/BeschermdStadsDorpsgezicht">beschermd stads- of dorpsgezicht</a> krachtens een provinciale
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Verordening">verordening</a>,
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Verordening">verordening</a>, gemeentelijke
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Verordening">verordening</a> of
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/Bestemmingsplan">bestemmingsplan</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVerplichtingenDerden">6.8.</a></b>
Verkoper verklaart dat ten aanzien
van de onroerende zaak geen verplichtingen ten opzichte van derden bestaan
wegens
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Voorkeursrecht">voorkeursrecht</a>,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Optierecht">optierecht</a>, recht van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Wederinkoop">wederinkoop</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelWetVoorkeursrechtGemeenten">6.9.</a></b>
Voor zover aan verkoper bekend is de onroerende zaak
  <span><s>wel</s>/niet</span>* opgenomen in een (voorlopige)
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/AanwijzingWVG">aanwijzing als bedoeld in de Wet voorkeursrecht gemeenten</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelWegneemrechtHuurder">6.10.</a></b>
In de koop is niet begrepen datgene waarop huurders krachtens hun wettelijk
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Wegneemrecht">wegneemrecht</a> rechten doen gelden.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/ArtikelOppervlakte">6.11.</a></b> Verschil tussen de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/OpgegevenGrootte">opgegeven</a> en de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/doc/concept/WerkelijkeGrootte">werkelijke grootte</a>
verleent aan geen der partijen enig recht. In afwijking hiervan komen partijen het volgende overeen:
  <span>niet van toepassing</span>
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/ArtikelLastenVoorgaandeJaren">6.12.</a></b>
Verkoper verklaart dat de lasten over voorgaande jaren, voor zover de aanslagen zijn opgelegd en de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/doc/concept/Canon">canons</a> die verschuldigd zijn geworden, zijn voldaan.
</p>

<p>
Voor zover
de genoemde aanslagen en/of canons nog niet zijn voldaan, verklaart verkoper
deze op eerste verzoek te voldoen.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/doc/concept/ArtikelOnbekenheidsverklaring">6.13.</a></b>
De enkele
verklaring dat verkoper niet bekend is met bepaalde feiten of omstandigheden
houdt geen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Garantie">garantie</a> of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VrijwaringStaatOnroerendeZaak">vrijwaring</a>
in voor koper of verkoper.
</p>

<h2>Artikel 7 Feitelijke levering/ Overdracht aanspraken
</h2>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelFeitelijkeLevering">7.1.</a></b> De
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/FeitelijkeLevering">feitelijke levering en aanvaarding</a> vindt plaats op het moment van het ondertekenen van de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/AkteVanLevering">akte van levering</a> zoals weergegeven in artikel 4.1, tenzij tussen verkoper en koper een ander tijdstip is overeengekomen, vrij van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurovereenkomst">huur-</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Leaseovereenkomst">lease</a>- en/of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurkoopovereenkomst">huurkoopovereenkomsten</a> met uitzondering van de volgende overeenkomsten welke door koper gestand worden
gedaan: <br />
  <span>Niet van toepassing</span>
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOngevorderdLeeg">7.2</a></b>.
Voor zover uit het
artikel 7.1 niet anders voortvloeit staat verkoper ervoor in dat de onroerende zaak
bij de feitelijke levering vrij is van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/AanspraakTotGebruik">aanspraken tot gebruik</a>,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Ongevorderd">ongevorderd</a>
is, en behoudens de eventueel meeverkochte roerende zaken,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/LeegEnOntruimd">leeg en ontruimd</a> is.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelHuurLeaseHuurkoopovereenkomsten">7.3.</a></b>
Indien koper de
    <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a>
 geheel of gedeeltelijk aanvaardt onder gestanddoening van
lopende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurovereenkomst">huur</a>-,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Leaseovereenkomst">lease</a>- of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurkoopovereenkomst">huurkoopovereenkomsten</a>:<br />
a. staat verkoper
  ervoor in dat hij ten tijde van de feitelijke levering niet reeds
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/BetalingToekomstigeTermijn">betalingen</a>
  heeft ontvangen voor toekomstige termijnen en dat er tevens geen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/BeslagToekomstigeTermijn">beslag</a> is
  gelegd op dergelijke termijnen;<br />
b. staat verkoper ervoor in dat vanaf het tot stand komen van deze koopovereenkomst bestaande
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurovereenkomst">huur</a>-,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Leaseovereenkomst">lease</a>- en/of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Huurkoopovereenkomst">huurkoopovereenkomsten</a> niet worden gewijzigd, de onroerende zaak niet geheel of gedeeltelijk wordt verhuurd, in
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Huurkoop">huurkoop </a>wordt gegeven of op enigerlei andere wijze in gebruik wordt afgestaan, tenzij met schriftelijke toestemming van koper; en<br />
c. verklaart
  koper bekend te zijn met de inhoud van de over te nemen genoemde huur-, lease- en/of
  huurkoopovereenkomsten.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOverdrachtAanspraken">7.4.</a></b>In deze
koopovereenkomst is voor zover mogelijk begrepen de overdracht van alle
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Aanspraak">aanspraken</a> die
verkoper ten aanzien van de onroerende zaak kan of zal kunnen doen gelden
tegenover derden, waaronder begrepen de bouwer(s), (onder)aannemer(s), installateur(s),
architect(en) en leverancier(s), zoals wegens verrichte werkzaamheden of ter
zake van aan de onroerende zaak toegebrachte schade, zonder dat verkoper tot
vrijwaring verplicht is. Deze overdracht vindt plaats per de datum van de
eigendomsoverdracht. Vindt de feitelijke levering op een eerdere datum plaats dan
de ondertekening van de akte van levering, dan wordt de overdracht van bovenvermelde
aanspraken effectief per die eerdere datum.</p>

<p>In dat
laatste geval, verplicht verkoper zich hierbij de hem bekende gegevens ter zake
aan koper te verstrekken en machtigt verkoper koper hierbij, voor zover nodig,
deze overdracht van aanspraken voor rekening van koper te doen mededelen aan de
desbetreffende derden overeenkomstig de wettelijke bepalingen.</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBatenLastenCanons">Artikel 8 Baten, lasten en canons</a></h2>

<p>De
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bate">baten</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Last">lasten</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Belasting">belastingen</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Heffing">heffingen</a> en verschuldigde
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Canon">canons</a> komen voor rekening van
koper met ingang van
  <span>de datum der eigendomsoverdracht</span>.
</p>

<p>De dan lopende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bate">baten</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Last">lasten</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Belasting">belastingen</a>,
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Heffing">heffingen</a> en
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Canon">canons</a>, zullen per die datum tussen
partijen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/NaarRatoVanTijd">naar rato van tijd</a> worden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerrekeningBatenLastenCanons">verrekend</a>. Deze verrekening vindt
gelijktijdig plaats met de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Betaling">betaling</a> van de koopsom. Voor zover er met
betrekking tot de onroerende zaak
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Belasting">belastingen</a> en/ of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Heffing">heffingen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/TenLasteGebruik">ten laste van het gebruik</a> worden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Heffing">geheven</a> zullen deze niet tussen partijen worden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerrekeningBatenLastenCanons">verrekend</a>.</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelHoofdelijkheid">Artikel 9 Hoofdelijkheid</a></h2>

<p>Indien
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> en/of
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> twee of meer
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Persoon">(rechts)personen</a> zijn, geldt het volgende: <br />
a. de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Persoon">(rechts)personen</a> die
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>, respectievelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> zijn, kunnen slechts
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Gezamenlijkheid">gezamenlijk</a> de voor hen uit deze koopovereenkomst voortvloeiende
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">rechten</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Uitoefenen">uitoefenen</a>, respectievelijk de voor hen uit deze koopovereenkomst voortvloeiende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">nakomen</a>;<br />
b. de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Persoon">(rechts)personen</a> die
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>, respectievelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> zijn,
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VerlenenVolmacht">verlenen</a> elkaar bij
  dezen onherroepelijk
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Volmacht">volmacht</a> om namens elkaar de uit deze koopovereenkomst
  voortvloeiende
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">rechten</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Uitoefenen">uit te oefenen</a>, respectievelijk de voor hen uit deze koopovereenkomst
  voortvloeiende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">na te komen</a>; en<br />
c. de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Persoon">(rechts)personen</a> die
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>, respectievelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> zijn, zijn
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Hoofdelijkheid">hoofdelijk verbonden</a>
  voor de uit deze koopovereenkomst voortvloeiende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a>.<br />
</p>
<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOvermachtRisicoVerzekeringen">artikel 10 Risico-overgang/ Beschadiging door overmacht</a></h2>
<p>
  <b>10.1.</b>
De
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/RisicoOvergang">is</a> met ingang
van het moment van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/PasserenAkteLevering">tekenen van de akte van levering</a> voor
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Risico">risico</a> van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>,
tenzij de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/FeitelijkeLevering">feitelijke levering</a> eerder plaatsvindt, in welk geval het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Risico">risico</a> per
dat moment overgaat op
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>.
</p>

<p>
  <b>10.2.</b>
Indien de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> voor het
tijdstip van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/RisicoOvergang">risico-overgang</a> wordt
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Beschadigen">beschadigd</a> dan wel geheel of gedeeltelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerlorenGaan">verloren gaat</a>, is
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> verplicht
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> hiervan onverwijld in kennis te
stellen.
</p>

<p>
  <b>10.3.</b>
Indien de onroerende zaak door
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Overmacht">overmacht</a> voor het tijdstip van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/RisicoOvergang">risico-overgang</a> wordt <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Beschadigen">beschadigd</a> dan wel geheel of gedeeltelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerlorenGaan">verloren gaat</a>, is deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a>
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VanRechtswegeOntbonden">van rechtswege ontbonden</a>, tenzij binnen vier weken na het onheil, maar in ieder geval vóór de
overeengekomen dag van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a>:<br />
a. <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">uitvoering van deze koopovereenkomst</a> verlangt, in welk geval
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> -zonder
  enige bijzondere tegenprestatie naast de vastgestelde
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a>- aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> op
  de overeengekomen dag van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a> de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a>
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">aflevert</a> in de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/StaatOnroerendeZaak">staat</a> waarin deze zich dan bevindt, met daarbij alle
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/RechtenAanspraken">rechten</a> welke
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> ter
  zake van het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Onheil">onheil</a> -hetzij uit hoofde van verzekering, hetzij uit anderen
  hoofde- jegens derden toekomen. De levering van deze rechten geschiedt
  overeenkomstig het bepaalde in artikel 7.4; dan wel<br />
b. <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> verklaart de schade voor zijn rekening te zullen
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Herstel">herstellen</a> vóór de
  overeengekomen dag van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a> dan wel indien het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Onheil">onheil</a> zich
  voordoet in de vier weken voorafgaande aan de overeengekomen dag van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a>, binnen vier weken na het onheil. In het laatste geval
  verschuift een eerder overeengekomen datum van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a> naar de dag
  volgend op die waarop die vier weken na het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Onheil">onheil</a> zijn verstreken. Vindt
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Herstel">herstel</a> niet ten genoegen van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> plaats, dan is deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> alsnog
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VanRechtswegeOntbonden">van rechtswege ontbonden</a>, tenzij
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> binnen veertien dagen nadat op basis van dit artikel
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Herstel">herstel</a> plaatsgevonden behoort te hebben, verklaart alsnog gebruik te willen
  maken van het hem onder sub a. van dit artikel 10.3 toegekende recht, in welk
  geval de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a> plaatsvindt op de overeengekomen datum dan wel,
  indien het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Onheil">onheil</a> zich voordoet binnen vier weken voorafgaande aan de
  overeengekomen dag van
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a>, uiterlijk zes weken na het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Onheil">onheil</a>.
</p>

<p>Ingeval
zowel
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> als
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> verklaren gebruik te willen maken van de in artikel
10.3 toegekende rechten, prevaleert de keuze van koper.</p>

<p>
  <b>10.4.</b>
Indien
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> na de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">eigendomsoverdracht</a>
de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koop</a> op goede gronden heeft
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/OntbindingTekortkoming">ontbonden</a> als bedoeld in artikel 7:10 lid 3 BW,
blijft het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Risico">risico</a> in afwijking van die bepaling voor koper tot aan het moment
van de terugoverdracht aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a>, indien en voor zover dat
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Risico">risico</a> door
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> is verzekerd of - bij gebreke daarvan - indien en voor zover dat risico bij
een object als het verkochte door een gebruikelijke opstalverzekering pleegt te
worden gedekt. Voor de overige risico's waartegen koper niet is verzekerd en die
bij een object als het verkochte ook niet plegen te worden verzekerd, blijft
het bepaalde in artikel 7:10 leden 3 en 4 BW van kracht.
</p>

<h2>artikel 11 Ingebrekestelling/ Ontbinding</h2>
<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelIngebrekestelling">11.1.</a></b>
Indien één van de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>, na
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ingebrekestellen">in gebreke te zijn gesteld</a>, gedurende acht dagen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/NalatigZijn">nalatig is</a> of blijft in de
nakoming van één of meer van haar uit deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> voortvloeiende
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a>, kan de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a> van de nalatige
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a>
zonder rechterlijke tussenkomst
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinden</a> door middel van een schriftelijke
verklaring aan de nalatige partij.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOntbindenTekortkoming">11.2.</a></b>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">Ontbinding</a> op grond van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Tekortkoming">tekortkoming</a>
 is slechts mogelijk na voorafgaande
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ingebrekestellen">ingebrekestelling</a>. Bij
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinding</a>
 van de koopovereenkomst op grond van toerekenbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">Ontbinding</a> zal
de nalatige
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> ten behoeve van de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a> een zonder rechterlijke tussenkomst
terstond opeisbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> van tien procent (10%) van de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a>
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Verbeuren">verbeuren</a>, onverminderd
het recht op aanvullende schadevergoeding, indien de daadwerkelijke
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schade">schade</a>
hoger is dan de onmiddellijk opeisbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a>, en onverminderd vergoeding van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerhaalKosten">kosten van verhaal</a>.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelSchadevergoeding">11.3.</a></b>
Indien de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a> geen gebruik
maakt van haar
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">recht</a> de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> te
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinden</a> en
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">nakoming</a> verlangt, zal
de nalatige
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> ten behoeve van de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a> na afloop van de in artikel 11.1
vermelde termijn van acht dagen voor elke sedertdien verstreken dag tot aan de
dag van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">nakoming</a> een onmiddellijk opeisbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> verschuldigd zijn van drie
promille (3‰) van de
  koopsom met een maximum van tien procent (10%) van de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a>, onverminderd het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">recht</a> op aanvullende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schadevergoeding">schadevergoeding</a>, indien de
daadwerkelijke
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schade">schade</a> hoger is dan de onmiddellijk opeisbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a>, en onverminderd
vergoeding van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerhaalKosten">kosten van verhaal</a>.
</p>

<p>Indien de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a>
na verloop van tijd de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> alsnog
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbindt</a> dan zal de nalatige
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a>
een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> verschuldigd zijn van tien procent (10%) van de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a>
verminderd met het reeds in de vorm van een dagboete betaalde bedrag, onverminderd
het recht op aanvullende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schadevergoeding">schadevergoeding</a>, indien de daadwerkelijke
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schade">schade</a>
hoger is dan de onmiddellijk opeisbare
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a>, en onverminderd vergoeding van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/VerhaalKosten">kosten van verhaal</a>.</p>

<p>
  <b>11.4.</b>
Indien de nalatige
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> na
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ingebrekestellen">ingebreke te zijn gesteld</a> binnen de voormelde termijn van acht dagen alsnog haar
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">nakomt</a>, is de nalatige
  betalen desalniettemin gehouden aan de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a>
 diens
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schade">schade</a> als gevolg van de niet-tijdige
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Nakomen">nakoming</a> te vergoeden.
</p>

<p>
  <b>11.5.</b>
De
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> wordt bij dezen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplicht</a>, en voor zover nodig door partijen onherroepelijk
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/VerlenenVolmacht">gemachtigd</a>, om:<br />
a. indien
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> is verschuldigd, het bedrag van deze boete uit het aan de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a>
  uitgekeerde bedrag van de
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Bankgarantie">bankgarantie</a> dan wel uit de bij de notaris gestorte
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Waarborgsom">waarborgsom</a>,
  aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> te betalen;<br />
b. indien
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> is verschuldigd, de aan de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> ter hand gestelde
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Bankgarantie">bankgarantie</a>
  aan de bankinstelling
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Terugzenden">terug te zenden</a> dan wel de door
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> bij de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a>
  gestorte
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Waarborgsom">waarborgsom</a> aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Terugbetalen">terug te betalen</a>;<br />
c. indien
  het geval van artikel 5.3 zich voordoet het bedrag van de
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Bankgarantie">bankgarantie</a>
  respectievelijk de
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Waarborgsom">waarborgsom</a> als
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boete</a> aan
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> te
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Betalen">betalen</a>;<br />
d. indien
  beide
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Tekortschieten">tekortschieten</a> of de notaris onvoldoende kan beoordelen wie van
  beide partijen tekortschiet dan wel of er sprake is van tekortschieten, -
  behoudens eensluidende betalingsopdracht van partijen - de
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Bankgarantie">bankgarantie</a> of
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/Waarborgsom">waarborgsom</a>
   <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/OnderZichHouden">onder zich te houden</a> totdat bij in kracht van gewijsde gegane
  uitspraak of uitvoerbaar bij voorraad verklaard vonnis is beslist aan wie hij
  het bedrag moet afdragen.
</p>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelVervallenBoeteregeling">11.6.</a></b>
Er kunnen geen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boetes</a> meer worden
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Verbeuren">verbeurd</a> op grond van artikel 11.2 en/of artikel 11.3 zodra de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopsom">koopsom</a> is
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Betalen">betaald</a> en de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Levering">levering</a> van de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/OnroerendeZaak">onroerende zaak</a> heeft plaatsgevonden. De
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boetes</a>
die tot dat moment ingevolge artikel 11.3 zijn
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Verbeuren">verbeurd</a>, blijven verschuldigd. De
omstandigheid dat geen
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Boete">boetes</a> meer kunnen worden
  <a class="concept" href="https://fin.zorgeloosvastgoed.nl/id/concept/Verbeuren">verbeurd</a> krachtens artikel
11.2 en/of artikel 11.3 (nadat de koopsom is betaald en de onroerende zaak aan
koper is geleverd), laat onverlet dat een
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Schadevergoeding">schadevergoeding</a> kan
  <a class="concept" href="https://mak.zorgeloosvastgoed.nl/id/concept/Vorderen">vorderen</a>
indien aan de daarvoor geldende wettelijke eisen is voldaan.
</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelWoonplaats">Artikel 12 Woonplaats</a></h2>

<p>
Deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a>
wordt verzonden naar de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> en
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a> kiezen ter zake van deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a>
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/GekozenWoonplaats ">woonplaats</a> ten kantore van de notaris.
</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelRegistratieKoopovereenkomst">Artikel 13 Registratie koopovereenkomst</a></h2>

<p><s>
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">Partijen</a>
geven de
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Notaris">notaris</a> hiermee wel/niet* de opdracht deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> zo spoedig
mogelijk
   <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/InschrijvenKoopovereenkomst">in de openbare registers in te laten schrijven</a>in de openbare registers in te laten schrijven. De inschrijving vindt
niet eerder plaats dan <span>...........</span>.</s>
</p>

<p><s>
De aan deze inschrijving verbonden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Inschrijvingskosten">kosten</a> komen voor rekening van
  <span>koper/verkoper*.</span>
</s></p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelIdentiteitPartijen">Artikel 14 Identiteit partijen</a></h2>

<p>Koper en
verkoper stemmen ermee in, dat indien één van partijen daarom verzoekt, de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">wederpartij</a>
zich jegens de verzoekende
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> zal
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Identificeren">identificeren</a> door het tonen van een
geldig
  <a class="concept" href="http://not.zorgeloosvastgoed.nl/id/concept/Identiteitsdocument">identiteitsbewijs</a>.
</p>

<h2>Artikel 15 Ontbindende voorwaarden</h2>

<p>
  <b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOntbindendeVoorwaarden">15.1.</a></b>
Deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> kan door
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> worden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbonden">ontbonden</a> indien uiterlijk:<br />
a. op
  <span>.........</span>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a> voor de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Financieringsvoorbehoud">financiering van de onroerende zaak</a> voor een bedrag van
  <span>.........</span>, zegge
  <span>.........</span>
geen
  <a class="concept" href="http://fin.zorgeloosvastgoed.nl/id/concept/BindendeOfferte">bindend aanbod</a> tot een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/HypothecaireGeldlening">hypothecaire geldlening</a> van een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ErkendeBankinstelling">erkende geldverstrekkende bankinstelling</a> heeft verkregen, <s>zulks
tegen geen hogere
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/BrutoJaarlast">bruto jaarlast</a> dan <span>..............</span> zegge <span>.........</span>, of een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Rentepercentage">rentepercentage</a>
niet hoger dan <span>.......</span>, bij de volgende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Hypotheekvorm">hypotheekvorm</a>: <span>........</span></s>.<br />
  Onder bankinstelling wordt in dit artikel begrepen een bank of verzekeraar in de zin
  van artikel 1:1 Wet op het financieel toezicht; <s>of<br />
b. op <span>.....................</span> koper geen met de aangevraagde hypothecaire geldlening
  corresponderende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/NationaleHypotheekgarantie">Nationale Hypotheek Garantie</a> heeft verkregen; of <br />
c. op <span>.....................</span> uit het rapport van een
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/BouwkundigeKeuring;">bouwtechnische keuring</a> uitgevoerd door
<span>.......... (naam keurder) / nader te bepalen</span>* blijkt dat de kosten van direct
noodzakelijk
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Herstel;">herstel</a> van
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Gebrek;">gebreken</a> en
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/AchterstalligOnderhoud;">achterstallig onderhoud</a> een bedrag van <span>..................</span>,
zegge <span>............</span>, te boven gaan of als aanvullend
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/SpecialistischOnderzoek;">specialistisch onderzoek</a>
wordt aanbevolen. Als de keurder bij onderdelen in het rapport een bandbreedte
in de herstelkosten aanhoudt, wordt uitgegaan van het hoogste bedrag.</s>
</p>

<p><b>15.2.</b>Deze koopovereenkomst kan door
ieder van de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a> worden
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbonden</a> indien verkoper ingevolge de
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/AanwijzingWVG">Wet voorkeursrecht gemeenten</a> niet in staat is om de eigendom van de onroerende zaak
op de overeengekomen dag over te dragen. Verkoper is verplicht om zodra duidelijk
is dat hij ingevolge genoemde wet niet of niet tijdig aan zijn verplichting tot
levering kan voldoen, koper daarvan schriftelijk op de hoogte te stellen.
</p>

<p><b><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOntbindingVoorwaarden">15.3.</a></b>
Partijen verplichten zich over en
weer al het redelijk mogelijke te doen teneinde de hierboven bedoelde financiering
en/of Nationale Hypotheek Garantie en/of toezegging(en) en/of andere zaken te
verkrijgen.
</p>

<p>De partij
die de ontbinding inroept, dient er zorg voor te dragen dat de mededeling dat de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinding</a> wordt ingeroepen, uiterlijk op de
  <span>eerste</span>
werkdag na de datum waarvan in de betreffende
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/OntbindendeVoorwaarde">ontbindende voorwaarde</a> sprake is
door de wederpartij of diens makelaar is ontvangen.
</p>

<p>
Deze mededeling dient schriftelijk
en goed gedocumenteerd via gangbare<br />
communicatiemiddelen
te geschieden. Indien koper de ontbinding wenst in te roepen als gevolg van het
(tijdig) ontbreken van een financiering als bedoeld in artikel 15.1 onder sub a.
wordt, tenzij partijen anders overeenkomen, onder "goed gedocumenteerd"
verstaan dat één afwijzing van een erkende geldverstrekkende bankinstelling aan
verkoper of diens makelaar dient te worden overgelegd<s>. In aanvulling
  <span>hierop/In afwijking hiervan</span>*
komen partijen overeen dat koper de/het volgende stuk(ken)
dient over te leggen om te voldoen aan het vereiste van "goed gedocumenteerd":
  <span>...........</span>
Indien koper de ontbinding wenst in te roepen als
gevolg van de bouwtechnische keuring als bedoeld in artikel 15.1 onder c wordt
onder "goed gedocumenteerd" verstaan dat een kopie van het keuringsrapport, met
daarin een overzicht van de kosten voor het direct noodzakelijk herstel van
gebreken en het achterstallig onderhoud, aan verkoper of diens makelaar dient
te worden overgelegd</s>. Alsdan
zijn beide partijen van deze koopovereenkomst bevrijd. De door koper reeds
gedane stortingen worden vervolgens gerestitueerd. Degenen die deze stortingen
onder zich hebben worden daartoe bij dezen verplicht, en voor zover nodig
onherroepelijk gemachtigd.
</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelBedenktijd">Artikel 16 Bedenktijd</a></h2>

<p>
De
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koper">koper</a>
die een
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/NatuurlijkPersoon">natuurlijke persoon</a> is en niet handelt in de uitoefening van een beroep
of bedrijf heeft
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bedenktijd">bedenktijd</a> om deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> te
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinden</a>. De
bedenktijd duurt drie dagen en begint om 0.00 uur van de dag die volgt op de
dag dat de door partijen ondertekende koopovereenkomst (in kopie) aan koper ter
hand gesteld is.
</p>

<p>
Indien de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bedenktijd">bedenktijd</a> op een zaterdag, zondag of algemeen erkende feestdag eindigt, wordt
deze verlengd tot en met de eerstvolgende dag die niet een zaterdag, zondag of
algemeen erkende feestdag is.
</p>

<p>
De
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bedenktijd">bedenktijd</a> wordt, zo nodig, zoveel verlengd, dat daarin ten minste twee dagen
voorkomen die niet een zaterdag, zondag of algemeen erkende feestdag zijn.
</p>

<p>
Als koper
binnen de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bedenktijd">bedenktijd</a> de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> wil
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbinden">ontbinden</a>, moet hij ervoor
zorgdragen dat de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ontbindingsverklaring">ontbindingsverklaring</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verkoper">verkoper</a> of diens
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Makelaar">makelaar</a> voor het einde
van de
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Bedenktijd">bedenktijd</a> bereikt.
</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelOndertekening">Artikel 17 Schriftelijke vastlegging</a></h2>

<p>
  <b>17.1.</b>
Uit deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> vloeien
pas
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Verplichting">verplichtingen</a> voort als beide
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a> deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> hebben
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekend</a>.
</p>

<p><b>17.2.</b>
De
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> die deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a>
als eerste
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekent</a>, doet dit onder
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Voorbehoud">voorbehoud</a> dat hij uiterlijk op de
  <span>vijfde</span>
werkdag nadat hij de koopovereenkomst ondertekend heeft
(een kopie van) de door beide
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekende</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> heeft ontvangen.
Indien de
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> die als eerste heeft
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekend</a> niet tijdig (een kopie van)
de door beide
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekende</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a> heeft ontvangen, heeft
deze
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partij</a> het
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">recht</a> zich op het
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Voorbehoud">voorbehoud</a> te beroepen, waardoor hij niet
(meer) gebonden is. Dit
  <a class="concept" href="http://kad.zorgeloosvastgoed.nl/id/concept/Recht">recht</a> vervalt als daar niet uiterlijk op de tweede werkdag
nadat alsnog (een kopie van) de door beide
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/Partij">partijen</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Ondertekenen">ondertekende</a>
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koopovereenkomst">koopovereenkomst</a>
is ontvangen, gebruik van is gemaakt.
</p>

<h2><a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/ArtikelNederlandsRecht">Artikel 18 Nederlands recht</a></h2>

<p>
Op deze
  <a class="concept" href="http://mak.zorgeloosvastgoed.nl/id/concept/Koop">koopovereenkomst</a> is
  <a class="concept" href="http://taxonomie.zorgeloosvastgoed.nl/id/concept/NederlandsRecht">Nederlands recht</a> van toepassing.
</p>

<h2>Artikel 19 Bijlagen</h2>

<p>
Tot deze koopovereenkomst behoren de volgende bijlagen: <br />
- kadastrale inzage<br />
- kadastrale kaart<br />
- voorgaande akte van levering<br />
- toelichting NVM koopakte<br />
</p>

<h2>Artikel 20 Nadere afspraken</h2>

<p><s>
  <span>...................</span>
</s></p>

<p>
Verkoper
en koper verklaren dat zij, voordat zij deze koopovereenkomst ondertekend
hebben, kennis hebben genomen van de bepalingen, zoals nader uitgelegd in de
bij deze koopovereenkomst behorende toelichting en dat zij zodanige informatie
hebben ontvangen, dat de inhoud en de gevolgen van deze koopovereenkomst hun voldoende
voor ogen staan.
</p>

<table>
  <tr>
    <td><p>Verkoper(s)</p></td>
    <td width="50"/>
    <td />
  </tr>
  <tr>
    <td class="sign" />
    <td />
    <td class="sign" />
  </tr>
  <tr>
    <td>naam:</td>
    <td />
    <td>naam:</td>
  </tr>
  <tr>
    <td>plaats:</td>
    <td />
    <td>plaats:</td>
  </tr>
  <tr>
    <td>datum:</td>
    <td />
    <td>datum:</td>
  </tr>
  <tr>
    <td><br /><p>Koper(s)</p></td>
    <td />
    <td />
  </tr>
  <tr>
    <td class="sign" />
    <td />
    <td class="sign" />
  </tr>
  <tr>
    <td>naam:</td>
    <td />
    <td>naam:</td>
  </tr>
  <tr>
    <td>plaats:</td>
    <td />
    <td>plaats:</td>
  </tr>
  <tr>
    <td>datum:</td>
    <td />
    <td>datum:</td>
  </tr>
  <tr>
    <td><br /><p>Voor akkoord</p></td>
    <td />
    <td />
  </tr>
  <tr>
    <td><p>Echtgeno(o)t(e)/Geregistreerd partner verkoper</p></td>
    <td />
    <td><p>Echtgeno(o)t(e)/Geregistreerd partner koper</p></td>
  </tr>
  <tr>
    <td class="sign" />
    <td />
    <td class="sign" />
  </tr>
  <tr>
    <td>naam:</td>
    <td />
    <td>naam:</td>
  </tr>
  <tr>
    <td>plaats:</td>
    <td />
    <td>plaats:</td>
  </tr>
  <tr>
    <td>datum:</td>
    <td />
    <td>datum:</td>
  </tr>
</table>

</div>

</xsl:template>

</xsl:stylesheet>
