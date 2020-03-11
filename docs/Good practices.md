# Good practices

* Persoon als concept opnemen, met Natuurlijk Persoon en Rechtspersoon als specialisaties.
* Gebruikelijke conventies:
  * Conventie voor identificatie van concepten: UpperCamelCase
  * Conventie voor identificatie van eigenschappen: lowerCamelCase
  * Conventie voor labels van concepten: Eerste woord met een hoofdletter, volgende woorden kleine letters, tenzij..
* Verkrijger en vervreemder zijn relevante begrippen. Synoniem van koper en verkoper, of breder begrip waar bijvoorbeeld ook hypotheeknemer en hypotheekgever onder valt?
* Zakelijk recht is ook een concept – domein KNB of Kadaster?
* Onderscheid notaris, waarnemer/waarneming, kandidaat notaris, toegevoegd notaris. – notaris is dan breedste begrip, maar dan ontbreekt volgens mij ‘dé notaris’ naast de 3 andere engere begrippen.
* Repertorium meenemen? (nu al in scenario Koopovereenkomst?) – nu nog niet
* Domein concept ‘Borg’? synoniem waarborgsom, domein KNB
waarborgsom en bankgarantie weglaten of toch opnemen omdat ze in de koopovereenkomst voorkomen? – wel meenemen
* Rechtstreekse toegang tot de triple store?
* Archiveren Minuut nog niet meegenomen
* Artikel 260 lid 1 lijkt mij correct als bron voor de begrippen hypotheekgever en hypotheekhouder (met hypotheeknemer als synoniem). Zo staat het ook in de Kadaster taxonomie.
* De rdfs:comment is bedoeld voor de uitleg in klare taal. Een opmerking als ‘ Oorspronkelijke tekst uit het wetboek: Authentieke akten zijn akten in de vereiste vorm en bevoegdelijk opgemaakt door ambtenaren, aan wie bij of krachtens de wet is opgedragen op die wijze te doen blijken van door hen gedane waarnemingen of verrichtingen. Als authentieke akten worden tevens beschouwd de akten, waarvan het opmaken aan ambtenaren is voorbehouden, doch waarvan de wet het opmaken in bepaalde gevallen aan anderen dan ambtenaren opdraagt.’  zou ik als skos:editorialNote opnemen.
* Linktool op wetten.nl. Begrippen worden zoveel mogelijk gerelateerd aan de onderliggende wetgeving. Dit kan via de optie ‘Maak een permanente link’ bij ieder artikel op http://wetten.overheid.nl.
* skosthes:broaderGeneric gebruiken ipv skos:broader (skosthes is aanvulling op basis van iso standaard voor thesauri)
* Wie maakt wel deel van de taxonomie: zoveel mogelijk de (wettelijke) bronhouders. Dit impliceert dat bijvoorbeeld de meeste begrippen van ECH door de KNB als representant van Het Notariaat worden beheerd.
* De uitleg op B2 niveau moet wel onder regie van de juridisch verantwoordelijken gebeuren. Deze uitleg zal nooit waterdicht zijn. Juristen zeggen dat als het zo gemakkelijk was ze de zaak ook wel zo eenvoudig hadden geformuleerd. Daarom zal er ook altijd een disclaimer nodig zijn die de status van de B2 uitleg duidelijk maakt.
* Probeer zoveel mogelijk werkwoorden te gebruiken voor handelingen.
* We verwijzen direct naar de begrippen van andere domeinen en proberen begrippen zoveel mogelijk in een domein thuis te brengen.
* Handeling stellen we centraal in de ZV-taxonomie. Meer over handelingen, zie; https://github.com/bp4mc2/bp4mc2-zvg/blob/master/docs/Handelingen.md
* Bij het leggen van relaties hanteren we de volgende basisregels: 1) Het gaat 1 kant uit. Van meest ingewikkeld naar meest makkelijk en 2) De begrippen die in de definitie van een begrip A worden gebruikt, dan verwijs je naar de begrippen vanuit begrip A. Over deze basisregel; als we daar niet aan kunnen voldoen, omdat het geen recht doet aan de werkelijkheid, dan geven we in commentaar aan waarom we hiervan afwijken.
Er zijn concepten die, afhankelijk van de handeling, een actor, agent of object kunnen zijn. We maken daarom onderscheid in de rol die een concept kan aannemen (dus: afhankelijk van de handeling) en in de hoedanigheid van een concept (dat wat het is). Bijvoorbeeld: het concept huis is altijd een object, onafhankelijk van welke handeling dan ook. Maar een verkrijger kan een actor zijn (in het verkrijgen van een huis) en dat is tevens de hoedaningheid van dit concept. Echter, als een notaris de verkrijger identificeert, dan krijgt de de verkrijger bij deze handeling de rol van object. Ander voorbeeld, een notaris is een agent bij het kopen van een huis (een notaris besluit niet een huis te kopen, dat doet de koper en in die zin is een notaris geen actor). De hoedanigheid van het concept notaris is agent. Echter, bij de registratie van een akte, neem de notaris de rol aan van actor (want het is de notaris die de registratie uitvoert). Zo kan een handeling ook de rol aannemen van object (bijvoorbeeld bij een audit als een handeling onder de loep wordt gelegd).
