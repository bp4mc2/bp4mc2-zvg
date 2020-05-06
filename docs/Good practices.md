# Good practices

Dit document bevat werkafspraken en conventies waar de werkgroep Taxonomie van Zorgeloos Vastgoed en waar als werkgroep een besluit over is genomen.

## SCHRIJFWIJZE

De gebruikelijke conventies zijn:

* Conventie voor identificatie van concepten: UpperCamelCase
* Conventie voor identificatie van eigenschappen: lowerCamelCase
* Conventie voor labels van concepten: Eerste woord met een hoofdletter, volgende woorden kleine letters, tenzij..
* Conventie voor naamgeving van wetsartikelen: conform [de aanwijzingen voor de regelgeving, paragraaf 3.3](https://wetten.overheid.nl/jci1.3:c:BWBR0005730&hoofdstuk=3&paragraaf=3.3)

## UITLEG VAN BEGRIPPEN
* De rdfs:comment is bedoeld voor de uitleg op B2 niveau (uitleg in klare taal).
* De uitleg op B2 niveau moet wel onder regie van de juridisch verantwoordelijken gebeuren. Deze uitleg zal nooit waterdicht zijn. Juristen zeggen dat als het zo gemakkelijk was ze de zaak ook wel zo eenvoudig hadden geformuleerd. Daarom zal er ook altijd een disclaimer nodig zijn die de status van de B2 uitleg duidelijk maakt.

## VERWIJZINGEN

* Linktool op wetten.nl. Begrippen worden zoveel mogelijk gerelateerd aan de onderliggende wetgeving. Dit kan via de optie ‘Maak een permanente link’ bij ieder artikel op http://wetten.overheid.nl.
* Verwijzingen naar externe bronnen worden geplaatst in een concept met dcterms:source <url> en kan een label worden meegegeven met <url> rdfs:label "label voor url". Deze manier van verwijzen naar externe bronnen kan voor alle concepten (act, actor, agent, object en record).
* Bij bijvoorbeeld een koopovereenkomst wordt verwezen naar wetsartikelen. Deze wetsartikelen worden niet als aparte concepten opgenomen in de taxonomie. In plaats daarvan nemen we links naar wetsartikelen op in (het onderdeel van) de koopovereenkomst met behulp van dcterms:source.

## RELATIES  

* skosthes:broaderGeneric en skosthes:narrowerGeneric gebruiken in plaats van skos:broader en skos:narrower (skosthes is aanvulling op basis van iso standaard voor thesauri) in situaties waarbij we een specifieker begrip willen relateren aan een algemener begrip.
* skosthes:broaderPartitive en skothes:narrowerPartitive gebruiken in plaats van skos:broader en skos:narrower in situaties waarbij we een onderdeel willen relateren.
* Aanvullend op bovenstaande 2 punten gebruiken we skosthes:broaderGeneric/narrowerGeneric/broaderPartitive/narrowerPartitive in plaats van skos:broader/narrower, omdat skosthes meer informatie meegeeft over de relatie tussen 2 concepten dan skos mogelijk is. Voorbeeld: een onderhandse akte is een specialisatie van een akte (skosthes:broaderGeneric) en; notariskosten maken onderdeel uit van een notariele akte (skosthes:broaderPartitive). Voor meer info, zie: https://bp4mc2.org/modelleringswijze/.
* Bij het leggen van relaties hanteren we de volgende basisregels:
  1. Het gaat 1 kant uit. Van meest ingewikkelde begrip naar meer eenvoudige en
  2. De begrippen die in de definitie van een begrip A worden gebruikt, dan verwijs je naar deze begrippen vanuit begrip A.
  3. Als we aan bovenstaande regels niet kunnen voldoen, omdat het geen recht doet aan de werkelijkheid, dan geven we in commentaar aan waarom we hiervan afwijken.

## SCOPE

* In de eerste versie beperken we ons tot het scenario van de koopovereenkomst (tot en met het ondertekenen). Deze scope zorgt ervoor dat er voor Zorgeloos Vastgoed relevante begrippen op dit moment niet meegenomen worden.  
* Begrippen die relevant zijn binnen een domein, maar geen toegevoegde waarde hebben in de Zorgeloos Vastgoed taxonomie, worden niet opgekone. Een goed voorbeeld is het onderscheid tussen notaris, waarnemend notaris, toegevoegd notaris en kandidaat notaris. Zeer relevant in het Notariaat. Voor Zorgeloos Vastgoed niet en daarom weggelaten.

## DOMEINEN  

* Bij de naamgeving dan de domeinen is gekozen voor een zo breed mogelijke en toekomstbestendige naamgeving. Geen NVM, maar MAK. De NVM kan van naam veranderen en makelaars die niet zijn aangesloten bij de NVM zouden ook kunnen aansluiten.
* Welke domeinen maken wel en niet deel uit van de taxonomie: zoveel mogelijk de (wettelijke) bronhouders. Dit impliceert dat bijvoorbeeld de meeste begrippen van ECH door de KNB als representant van Het Notariaat worden beheerd.
* Begrippen die relevant zijn binnen een domein, maar geen toegevoegde waarde hebben in de Zorgeloos Vastgoed taxonomie, worden niet opgenomen. Een goed voorbeeld is het onderscheid tussen notaris, waarnemend notaris, toegevoegd notaris en kandidaat notaris. Zeer relevant in het Notariaat. Voor Zorgeloos Vastgoed niet en daarom weggelaten.We verwijzen direct naar de begrippen van andere domeinen en proberen begrippen zoveel mogelijk in een domein thuis te brengen. Zakelijk recht zou kunnen worden ondergebracht in zowel het domein van het Kadaster als die van het Notariaat. Per geval wordt bekeken door de werkgroep in welk domein een begrip het beste is onder te brengen.

## HANDELINGEN

* Handeling stellen we centraal in de ZV-taxonomie. Meer over handelingen, zie; [Handelingen](Handelingen.md) en [Roles and classes](roles-and-classes.md).
* Probeer zoveel mogelijk werkwoorden te gebruiken voor handelingen.

## CONCEPTEN

* Uitleg met voorbeelden wanneer een concept een actor, agent, handeling, object of record is, is hier te vinden: [Roles and classes]. Enkele voorbeelden aan de hand van de Zorgeloos Vastgoed taxonomie: 
  1. Een notaris kan handelen (actor), maar wordt benoemd als agent gezien, omdat hij/zij faciliteert in de aan- en verkoop van een huis. De notaris zet niet aan tot handelen hierin, dat zijn de koper en verkoper. Een notaris is daarom een agent.
  2. In een koopovereenkomst wordt gesproken over de werkelijke grootte van een perceel en bij deze werkelijke grootte hoort een afmeting van X vierkante meter. We nemen de werkelijke grootte daarom op in de taxonomie. Er is bij deze echter geen sprake van een object (misschien wel een record). Voor nu gekozen dit alleen als concept op te nemen.
* Er zijn concepten die, afhankelijk van de handeling, een actor, agent, object of record kunnen zijn. We maken daarom onderscheid in de rol die een concept kan aannemen (dus: afhankelijk van de handeling) en in de hoedanigheid van een concept (dat wat het is). Bijvoorbeeld: het concept huis is altijd een object, onafhankelijk van welke handeling dan ook. Maar een verkrijger kan een actor zijn (in het verkrijgen van een huis) en dat is tevens de hoedaningheid van dit concept. Echter, als een notaris de verkrijger identificeert, dan krijgt de de verkrijger bij deze handeling de rol van object. Ander voorbeeld, een notaris is een agent bij het kopen van een huis (een notaris besluit niet een huis te kopen, dat doet de koper en in die zin is een notaris geen actor). De hoedanigheid van het concept notaris is agent. Echter, bij de registratie van een akte, neem de notaris de rol aan van actor (want het is de notaris die de registratie uitvoert). Zo kan een handeling ook de rol aannemen van object (bijvoorbeeld bij een audit als een handeling onder de loep wordt gelegd).
* Bij boomstructuren van concepten die bestaat uit onderliggende concepten of een onderdeel zijn een bovenliggend concept, houden we aan dat deze altijd van hetzelfde skoslex-type zijn. Dus: specialisaties van een akte zijn authentieke en onderhandse akte en een voorbeeld van een onderhandse akte is de koopovereenkomst. Koopovereenkomst is gecategoriseerd als een record. De andere begrippen zijn ook records.
