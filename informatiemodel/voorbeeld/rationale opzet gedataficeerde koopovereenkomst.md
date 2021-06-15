# Inleiding
* De inleiding bevat een korte toelichting, geen inhoud. 
* De relevante begrippen zijn 'Koopovereenkomst' en 'Model koopovereenkomst'.
* 'deze koopovereenkomst' bestaat uit 3 onverbrekelijk verbonden onderdelen: 
  * de voor mensen leesbare tekst.
  * de voor computers leesbare data conform de ontologie. Deze data hebben links naar de data die 'resolven' vanuit de datakluis van de koper/verkoper. Deze data is verbonden met de concepten in de taxonomie. De opzet is dat de data daarmee 1 op 1 dezelfde status en betekenis heeft als de voor mensen leesbare tekst. De link bij 'deze koopovereenkomst' gaat naar deze data.
  * de uitleg van alle in de koopovereenkomst gebruikte begrippen.
# Voorblad
* Het voorblad met 'De ondergetekenden' gaat over het eerste deel van de overeenkomst waar de partijen worden benoemd. Als onderdeel van de koopovereenkomst is dit een skoslex:record.
* De belangrijkste eigenschap van dit concept is de uitleg. Die is integraal overgenomen uit de toelichting op de koopovereenkomst. 
* Het voorblad bevat alle concepten die relevant zijn in relatie tot de koper en verkoper, eventuele vertegenwoordigers, partners en andere belanghebbenden, inclusief de onderlinge semantische relaties tussen deze concepten. N.B. het is een taxonomie. Daarin is bijvoorbeeld het begrip 'Partner' semantisch verbonden met het begrip 'Natuurlijk Persoon', maar ook niet meer dan dat. Het is geen datamodel of ontologie, waarin je aan kunt geven dat meneer x gehuwd is met meneer y. 
* Koper, verkoper, etc. zijn een skoslex:Object. Zij zijn verderop skoslex:Actor in skoslex:Acts.
* De laatste alinea bevat 2 zinnen die kunnen worden gezien als een soort mini-(rechts)handeling: 'Koper verklaart ...' en 'Door medeondertekening verklaart de echtgeno(o)t(e)/geregistreerd partner ...' Deze zijn niet expliciet als skoslex:Act gemodelleerd. De rationale is dat de onderlinge samenhang van de concepten primair betekenis geeft aan het (mede)ondertekenen en geen relevante data bevat.
# Artikel 1
* Artikel 1 is het hoofdartikel van de koopovereenkomst. Hierin wordt de koop beschreven.
* De taxonomie bestaat uit 3 onderdelen:
  * Het skoslex:Record waarin de rechtshandeling is beschreven, met als belangrijkst eigenschap de uitleg.  Die is integraal overgenomen uit de toelichting op de koopovereenkomst. 
  * De beschrijving van de rechtshandeling, de skoslex:act. Dit gebeurt altijd in de vorm van een werkwoord, in dit geval kopen/verkopen. De actoren zijn net als bij alle andere artikelen de koper en verkoper.
  * Het object/de objecten van handeling, in dit artikel de onroerende zaak met eventuele roerende zaken die daarbij horen.
* Het waarderen van de onroerende zaken wordt niet beschouwd als een aparte rechtshandeling, maar als de waardering die is gerelateerd aan de roerende zaken.
* Wanneer het erfpacht betreft zijn er enkele subartikelen. Ieder subartikel kan worden gezien als een rechtshandeling/afspraak, maar bij artikelen 1.2, 1.3 en 1.4 worden geen expliciete handelingen benoemd anders dan 'verklaart kennis te hebben genomen van ...'. Net als de laatste alinea bij het voorblad worden deze dan ook niet expliciet als skoslex:Act gemodelleerd. De onderlinge samenhang van de concepten geeft ook hier voldoende betekenis aan de relevante data.
# Artikel 2
* Alle overige artikelen beschrijven onderdelen van de koop.
* De taxonomie van ieder (sub)artikel is opgebouwd uit dezelfde 3 onderdelen als hierboven beschreven:
   * Het skoslex:Record met de beschrijving (en in de taxonomie de uitleg).
   * De skoslex:Act met de rechtshandling. Actoren zijn altijd koper en/of verkoper.
   * Het/de skoslex:Object(s) met de onderwerpen.
* Artikel 2 bevat geen expliciete rechtshandelingen. Deze worden dan ook benoemd.
* Artikel 2.1 bevat 4 _onderwerpen_:
   * de kosten die op de eigendomsoverdracht betrekking hebben, in relatie tot een koper of verkoper en in relatie hiermee de aanwijzing van de notaris door een koper of verkoper.
   * de kosten die de notaris in rekening brengt in verband met aflossing en doorhaling in relatie tot een verkoper.
   * kosten die de notaris in rekening brengt in verband met het vestigen van een hypotheek in relatie tot een koper.
   * de overige kosten in relatie tot een partij (die hier gebruik van maakt).
* Omdat er geen skoslex:Act is worden deze onderwerpen via skoslex:isAbout verbonden aan het skoslex:Record.
* Artikel 2.2 beschrijft het verrekenen (skoslex:Act) van het 'artikel 13 verschil' (skoslex:Object). Hier is het skoslex:Record wel de neerslag van de rachtshandeling: zv:VerrekeningOverdrachtsbelastingArt13 (skoslex:Act) is via skoslex:record verbonden met mak:Artikel13Verschil (skoslex:Record).
# Artikel 3
* De eerste zin is een mooi voorbeeld van een zin die bijna volledig semantisch worden beschreven in de vorm van een aantal samenhangende concepten: De _Betaling_ (skoslex:act) van de _Koopsom_ (skoslex:Object) via de _Notaris_ (skoslex:Agent) als _OnderdeelVan (skosthes:broaderPartitive) het _PasserenAktelevering (skoslex:Act).
* De tweede zin is opnieuw een impliciete afspraak die niet is gemodelleerd als skoslex:act. Dit is een puur informatieve zin.
