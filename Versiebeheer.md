# Basisconcepten
##	Work versus expression
De standaard voor het verwijzen naar bibliografische bronnen is frbr (Functional Requirements for Bibliographic Records). Frbr is een breed gedragen standaard die is ontwikkeld door de IFLA (International Federation of Library Associations and Institutions). Hij wordt onder andere gebruikt in wetten.nl. Frbr maakt het mogelijk te verwijzen naar ‘iets’ (in het algemeen) en naar dat ‘iets’ zoals dat op een bepaald moment bekend was. Frbr kent daartoe 2 belangrijke concepten:
*	Frbr:work 	Een beschrijving, zonder dat expliciet wordt verwezen naar een specifieke versie.
*	Frbr:expression	Een specifieke versie van een werk.
##	Geldigheid
In het kader van rechtszekerheid is de (juridische) geldigheid van belang, maar ook wat wanneer bekend was. Zo kan een wet die over een week in gaat al vast worden gepubliceerd. Maar het kan ook voorkomen dat iets formeel al wel geldig zou moeten zijn, maar niet tijdig is gepubliceerd. Dan kun je hier ook niet op worden aangesproken, want je had het niet kunnen weten.
*	Juridische geldigheid kent een perdiode van t/m
*	Publicatie kent een datum
##	Semantic versioning en status
Een praktisch bruikbare een veelgebruikte wijze van versionering is semantic versioning. Hierbij wordt een reeks van drie cijfers gebruikt, waarbij de cijfers staan voor major, minor en patch. 
*	Major	grote wijziging niet backwords compatible		
*	Minor	backwords compatible wijziging, vaak nieuwe functionaliteit		
*	Patch	herstel fouten, geen nieuwe functionaliteit, altijd backwords compatable		

Optionele pre-release-tags (-alpha, -beta) en build-metatags lijken niet relevant voor modellen, ontologieën en schema’s. Wel lijkt het nuttig om de status van een bepaalde versie (met name voor major versies waarvoor in de regel een openbare review nodig is) te kunnen vastleggen. De gangbare standaard hiervoor is adms:status (Asset Description Metadata Schema). Dit is een W3C/EU toepassingsprofiel op dcat (datacatalogus/dataset. http://standaarden.overheid.nl/dcatnl/terms/Distributiestatuskent benoemt de volgende statussen:
*	In ontwikkeling	<http://purl.org/adms/status/UnderDevelopment> 
*	Teruggetrokken	<http://purl.org/adms/status/Withdrawn> 
*	Verouderd	<http://purl.org/adms/status/Deprecated> 
*	Volledig	<http://purl.org/adms/status/Completed> 
#	Toepassing binnen het ZV stelsel
##	Informatiemodellen
Van achteren naar voren redenerend is versionering in ieder geval nodig op informatiemodellen en de direct daaruit gegenereerde serialisaties. De serialisaties zijn de representaties in een voor mensen leesbare vorm (in een ReSpec html pagina, bijvoorbeeld <https://docs.geostandaarden.nl/mim/mim10/>) en in een machine leesbare vorm (CSV, XML, Json schema, owl:ontology). Doordat we modelgedreven werken hebben deze allemaal dezelfde versie. Ontwikkelaars bouwen op basis van een versie met status ‘volledig’ hun interfaces en kunnen op basis van een versie met status ‘in ontwikkeling’ in een openbare consultatie feedback geven.

*	Als het principe van backwords compatabiliteit strak wordt gehanteerd blijven alle eerdere minor en patch versies binnen 1 major release gewoon bruikbaar.
*	Good practice is om bij een nieuwe major release een overgangsfase in te bouwen waarin de vorige versie nog geldig is. Gedurende zo'n overgangsfase moeten alle deelnemers aan Zorgeloos Vastgoed beide versies kunnen hanteren. Op het internet is dit gebruikelijk, bijvoorbeeld IP4 en IP6 bestaan al jaren naast elkaar en vrijwel alle programmatuur kan met beiden omgaan.

De objecten en attrubuten in het informatiemodel verwijzen voor hun betekenis naar begrippen in de taxonomie. Het maakt het leven een stuk eenvoudiger als daarbij wordt verwezen naar het begrip als ‘work’. Dan kan een onduidelijke uitleg van een begrip worden verbeterd (waardoor een nieuwe versie ontstaat), zonder dat het informatiemodel hoeft te worden aangepast.
### Eenheid van beheer
De eenheid van beheer van een informatiemodel is het informatiemodel in zijn geheel. Iedere keer als er een aanpassing wordt 'gecommit', ontstaat een nieuwe versie van het model. Dat betekent dat er een nieuwe Respec pagina en bijbehorende uitwisselingsspecificaties (XML, Json en LD ontologie) worden gegenereerd. Het versienummer en de datum wordt in EA vastgelegd. 
##	Begrippenstelsel
De taxonomie kent begrippen en collecties (bijvoorbeeld de lijst met belangrijkste begrippen (zie <http://taxonomie.zorgeloosvastgoed.nl/>)
*	Het begrip als ‘work’ heeft een id die gedurende zijn hele levenscyclus gelijk blijft, bijvoorbeeld <https://mak.zorgeloosvastgoed.nl/id/begrip/Koopovereenkomst>. De objecten en attributen in het informatiemodel verwijzen naar deze id-uri.
*	Het begrip als ‘expression’ wordt gerepresenteerd door de documentatie over het begrip op een bepaald moment, bijvoorbeeld <https://mak.zorgeloosvastgoed.nl/doc/begrip/Koopovereenkomst>. Deze uri verwijst default naar de laatste versie, maar als een datum wordt meegegeven in de aanroep wordt de documentatie op die datum teruggegeven. Zo kan altijd worden gereconstrueerd wat op enig moment was gepubliceerd.
*	Begrippen verdwijnen nooit uit de taxonomie, maar door een einddatum aan te geven kan wel worden aangegeven dat we ze niet meer willen gebruiken. Bijvoorbeeld ‘kan niet’, ‘wil niet’, ‘kluis’, etc.

Mutatis mutandis geldt hetzelfde voor collecties.
### Eenheid van beheer
Begrippen en collecties worden beheerd in een bepaalde ‘eenheid van beheer’. Dit is bijvoorbeeld <https://github.com/bp4mc2/bp4mc2-zvg/blob/master/taxonomieën/zv.ttl>. Wanneer in Github een aantal wijzigingen zijn doorgevoerd en een commit wordt gedaan, wordt deze ‘eenheid van beheer’ gepubliceerd in een ‘named graph’, in dit geval <http://zorgeloosvastgoed.nl/data/zv>. Als we het versiebeheer volledig hebben geïmplementerd zal dit iets worden als <http://zorgeloosvastgoed.nl/data/zv20201029.> Deze data wordt als metadata vastgelegd in het betreffende bronbestand.

Het Zorgeloos Vastgoed begrippenstelsel is versieloos: <http://taxonomie.zorgeloosvastgoed.nl/id/stelsel>. Dat is er gewoon en groeit naarmate het ouder wordt. De beschrijving van dit begrippenstelsel als adms:asset heeft wel een adms:status. Zo is de status nu nog ‘in ontwikkeling’. Als het voldoende is uitgekristalliseerd en de externe review is afgerond, wordt de status ‘volledig’. 
 
##	API specificaties
#	Eisen, normen, policies
