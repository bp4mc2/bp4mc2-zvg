# Inleiding
* De inleiding bevat een korte toelichting, geen inhoud. 
* De relevante begrippen zijn 'Koopovereenkomst' en 'Model koopovereenkomst'.
* 'deze koopovereenkomst' bestaat uit 3 onverbrekelijk verbonden onderdelen: 
  * de voor mensen leesbare tekst.
  * de voor computers leesbare data conform de ontologie. Deze data hebben links naar de data die 'resolven' vanuit de datakluis van de koper/verkoper. Deze data is verbonden met de concepten in de taxonomie. De opzet is dat de data daarmee 1 op 1 dezelfde status en betekenis heeft als de voor mensen leesbare tekst. De link bij 'deze koopovereenkomst' gaat naar deze data.
  * de uitleg van alle in de koopovereenkomst gebruikte begrippen.
# Voorblad
* Het voorblad met 'De ondergetekenden' gaat over het eerste deel van de overeenkomst waar de partijen worden benoemd. Als onderdeel van de koopovereenkomst is dit een skoslex:Record.
* De belangrijkste eigenschap van dit concept is de uitleg. Die is integraal overgenomen uit de toelichting op de koopovereenkomst. 
* Het voorblad bevat alle concepten die relevant zijn in relatie tot de koper en verkoper, eventuele vertegenwoordigers, partners en andere belanghebbenden, inclusief de onderlinge semantische relaties tussen deze concepten. N.B. het is een taxonomie. Daarin is bijvoorbeeld het begrip 'Partner' semantisch verbonden met het begrip 'Natuurlijk Persoon', maar ook niet meer dan dat. Het is geen datamodel of ontologie, waarin je aan kunt geven dat meneer x gehuwd is met meneer y. 
* Koper, verkoper, etc. zijn een skoslex:Object. Zij zijn verderop skoslex:Actor in skoslex:Acts.
* De laatste alinea bevat 2 zinnen die kunnen worden gezien als een soort mini-(rechts)handeling: 'Koper verklaart ...' en 'Door medeondertekening verklaart de echtgeno(o)t(e)/geregistreerd partner ...' Deze zijn niet expliciet als skoslex:Act gemodelleerd. De rationale is dat de onderlinge samenhang van de concepten primair betekenis geeft aan het (mede)ondertekenen en geen relevante data bevat.
# Artikel 1
* Artikel 1 is het hoofdartikel van de koopovereenkomst. Hierin wordt de koop beschreven.
* De taxonomie bestaat uit 3 onderdelen:
  * Het skoslex:Record waarin de rechtshandeling is beschreven, met als belangrijkst eigenschap de uitleg.  Die is integraal overgenomen uit de toelichting op de koopovereenkomst. 
  * De beschrijving van de rechtshandeling, de skoslex:Act. Dit gebeurt altijd in de vorm van een werkwoord, in dit geval kopen/verkopen. De actoren zijn net als bij alle andere artikelen de koper en verkoper.
  * Het object/de objecten van handeling, het skoslex:Object. In dit artikel is dat de onroerende zaak met eventuele roerende zaken die daarbij horen.
* Het waarderen van de onroerende zaken wordt niet beschouwd als een aparte rechtshandeling, maar als de waardering die is gerelateerd aan de roerende zaken.
* Wanneer het erfpacht betreft zijn er enkele subartikelen. Ieder subartikel kan worden gezien als een rechtshandeling/afspraak, maar bij artikelen 1.2, 1.3 en 1.4 worden geen expliciete handelingen benoemd anders dan 'verklaart kennis te hebben genomen van ...'. Net als de laatste alinea bij het voorblad worden deze dan ook niet expliciet als skoslex:Act gemodelleerd. De onderlinge samenhang van de concepten geeft ook hier voldoende betekenis aan de relevante data.
# Artikel 2
* Alle overige artikelen beschrijven onderdelen van de koop.
* De taxonomie van ieder (sub)artikel is opgebouwd uit dezelfde 3 onderdelen als hierboven beschreven:
   * Het skoslex:Record met de beschrijving (en in de taxonomie de uitleg).
   * De skoslex:Act met de rechtshandeling. Actoren zijn altijd koper en/of verkoper.
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
# Artikel 4
* Ook hier is sprake van een notaris (skoslex:Agent), die de Akte van levering (skoslex:Object) zal passeren (skoslex:Act).
* Artikel 4.2 en 4.3 bevatten een nadere verduidelijking van 4.1, maar geven geen extra informatie. Daarom worden deze niet verder semantisch geduid.
# Artikel 5
* De koper (skoslex:Actor) stelt (skolex:Act) een bankgarantie (skoslex:Object).
* Of de koper (skoslex:Actor stort (skoslex:Act) een waarborgsom (skoslex:Object) op de derdenrekening (skoslex:Object) van de notaris (skoslex:Agent).
* Bij faillisement (skoslex:Object) van de koper (skoslex:Object) - faillisement koper is de conditie - wordt de bankgarantie (skoslex:Object) of de waarborgsom (skoslex:Object) verbeurd (skoslex:Act) aan de verkoper (skoslex:Actor).
# Artikel 6
* Artikel 6.1 gaat over de staat (mak:StaatOnroerendeZaak), rechten (een heel lijstje) en beperkingen (ook een heel lijstje, met een aparte zin voor publiekrechtelijke beperkingen) van de onroerende zaak (kad:OnroerendeZaak).  
  * Er staat een juridische formulering dat de koper deze rechten en beperkingen aanvaardt, maar dit is artikel is primair een nadere specificatie van onroerende zaak als het object van koop en is daarom niet semantisch geduid als rechtshandeling.
* Artikel 6.2 heeft dezelfde structuur. Ook hier gaat het primair om een nadere specificatie van de onroerende zaak.
  * Hier staan 3 juridische formuleringen, namelijk (1) dat de verkoper verklaart deze akten aan de koper te hebben gegeven, (2) dat de koper deze heeft gelezen en (3) een door de koper meegedeeld/opgesteld lijstje van publiekrechtelijke beperkingen (die overigens onderwerp zijn van 6.1). Ook deze 3 formeleringen zijn niet expliciet semantisch geduid als rechtshandelingen.
* Artikel 6.3 gaat over de eigenschappen voor normaal gebruik, gebreken die normaal gebruik belemmeren en herstelkosten.
  * De aansprakelijkheid van de verkoper voor de herstelkosten (waarvoor de aftrek nieuw voor oud geldt)is expliciet benoemd als rechtshandeling.
  * De overige zinnen niet.
* Artikel 6.4 t/m 6.13 zijn allemaal semantisch geduid als beschrijvingen.
* De formulering is hier en daar nog wel belangrijk: soms verklaart de verkoper dat hij 'niet bekend is met' en soms verklaart de koper dat hij 'bekend is met'. Dit resulteert in een juridische aansprakelijkheid die, zeker als dit een keuze is terug komt in het datamodel.
# Artikel 7
* Artikel 7.1 is een standaard clausule over de feitelijke levering (not:FeitelijkeLevering) en ook over de bij de aan de onroerende zaak horende huurovereenkomsten (mak:Huurovereenkomst), leaseovereenkomsten (mak:Leaseovereenkomst) en huurkoopovereenkomsten (mak:Huurkoopovereenkomst). Dit is niet echt een aparte rechtshandeling en wordt dus ook niet als zodanig geduid.
* Dit geldt ook voor artikel 7.2
* Artikel 7.3 beschrijft 2 potentiële rechtshandelingen, namelijk betalingen van toekomstige termijnen (mak:BetalingToekomstigeTermijn) en beslagen (mak:BeslagToekomstigeTermijn)van toekomstige termijnen op huurovereenkomsten (mak:Huurovereenkomst), leaseovereenkomsten (mak:Leaseovereenkomst) en huurkoopovereenkomsten (mak:Huurkoopovereenkomst).
* Artikel 7.4 zegt eigenlijk alleen maar dat aanspraken (mak:aanspraak) overgaan van verkoper naar koper, dus onderdeel zijn van de koop (mak:ArtikelOverdrachtAanspraken skosthes:broaderPartitive mak:Koopovereenkomst).
# Artikel 8
* Het eerste deel gaat over baten (mak:Bate), lasten (mak:Last), belastingen (mak:Belasting), heffingen (mak:Heffing) en canons (kad:Canon), namelijk dat die op een datum (onderdeel van de ontologie) overgaan op de koper.
* Het tweede deel is een eventuele rechtshandeling, namelijk de verrekening (mak:VerrekeningBatenLasten,Canons) van de baten, lasten, belastingen, heffingen en canons.
# Artikel 9
* Artikel 9 begint met een 'als' met als concepten de koper (mak:Koper) en verkoper (mak:Verkoper) en het feit dat die 2 of meer (rechts)personen (zv:Persoon) zijn.
* Artikel 9a zegt dat de actoren (mak:Koper) en verkoper (mak:Verkoper) die meerdere (rechts)personen (zv:Persoon) alleen samen (mak:Gezamenlijkheid) de objecten rechten (kad:Recht) en verplichtingen (mak:Verplichting) kunnen uitoefenen (mak:Uitoefenen) respectievelijk nakomen (mak:Nakomen), beiden rechtshandelingen.
* Artikel 9b is vergelijkbaar opgebouwd, maar dan over de handeling volmacht verlenen aan elkaar (not:VerlenenVolmacht met not:Volmacht als object). 
* Artikel 9c idem, maar dan over hoofdelijkheid, niet gemodelleerd als een expliciete rechtshandeling, maar als een concept dat iets zegt over de kopers/verkopers (mak:Hoofdelijkheid).
# Artikel 10
* In artikel 10.1 gaat over de handeling van het regelen van de overgang (mak:RisicoOvergang) van het object risico (mak:Risico) op de onroerende zaak (kad:OnroerendeZaak) door  de actoren (mak:Koper en mak:Verkoper). Semantisch is dit een onderdeel van het passeren van de akte van levering (not:PasserenAkteLevering) of van de feitelijke levering (not:FeitelijkeLevering). 
* Artikel 10.2 gaat over de gebeurtenissen beschadigen (mak:Beschadigen) of verloren gaan (mak:VerlorenGaan) van het object (kad:OnroerendeZaak). Actoren zijn verkoper en koper. Het 'onverwijld in kennis stellen' is niet expliciet gemodelleerd als rechtshandeling.
* Artikel 10.3 gaat over het van rechtswege ontbonden zijn (not:VanRechtswegeOntbonden) van de koopovereenkomst (mak:Koop, die betreft de rechtshandeling, mak:Koopovereenkomst betreft de vastlegging daarvan). 
* 10.3a is lastig. Je kunt het 'verlangen van' de uitvoering van de koopovereenkomst (i.c. de levering) zien als de handeling waar het om gaat. Maar eigenlijk gaat het om het (toch) leveren (de feitelijke rechtshandeling. Het tweede deel gaat dan over alle rechten (mak:RechtenAanspraken) in relatie tot het onheil (mak:Onheil) die ook van de verkoper op de koper overgaan bij de levering.
* 10.3b gaat over herstel (mak:Herstel) door de verkoper (mak:Verkoper) voor de levering (not:Levering). De laatste zin gaat over de koper in relatie tot de verkoper.
* 10.4 gaat over het risico na ontbinding van de koop op goede gronden, dus niet van rechtswege (mak:OntbindingTekortkoming) na de levering (not:Levering).
# Artikel 11
