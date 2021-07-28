In dit document wordt de werkwijze beschreven om een bestaand document of formulier te dataficeren.

1. Bepalen belangrijkste begrippen voor basis taxonomie
   * Het model van een document of formulier is meestal beschikbaar als docx bestand of een vergelijk formaat.
   * Als eerste worden alle invulvelden gemarkeerd. Deze bevatten concepten die verwijzen naar 'dingen' waarover data worden vastgelegd.
   * Dit kan gewoon in Word of een andere tekst editor.

2. Opbouwen van een eerste versie van de taxonomie met deze begrippen. 
   * Voor deze taxonomie worden al deze begrippen met elkaar verbonden op basis van:
     * *skos*. Skos is dé standaard om een taxonomie te publiceren op het web en staat als zodanig op de pas-toe-leg-uit lijst van het Forum Standaardisatie. 
     * *skosthes*. Skosthes is een uitbreiding op skos die de taxonomie ISO compiant maakt. Strikt genomen spreek je dan over een thesaurus. Hiermee kunnen generalisaties en speciallisaties worden beschreven die transitief (als een beperkt recht een zakelijk recht is en een zakelijk recht is een recht, dan is een beperkt recht ook een recht) en gespiegeld (als een beperkt recht een specialisatie van een zakelijk recht is, is een zakerlijk recht een generalisatie van een beperkt recht) zijn. Hiermee wordt een strikte definitie van concepten in relatie tot elkaar mogelijk. Er ontstaat een samenhangend begrippenkader, waar je via de semantische relaties over kunt redeneren. In de context van Zorgeloos Vastgoed, waar het om (juridische) duidelijkheid gaat, is dit essentieel.
     * *skoslex*. Skoslex maakt het mogelijk om (rechts)handelingen/gebeurtenissen, actoren die die handelingen uitvoeren, objecten van handeling en de vastlegging van die handeling in een document te benoemen. Hierdoor ontstaat nog meer (juridische) duidelijkheid hoe het stelsel werkt.
   * Waar mogelijk wordt verwezen naar de bron in wetgeving. Dit is een link naar het betreffende artikel in wetten.nl, die wordt opgehaald met de linktool van wetten.nl.
   * Waar het om gegevens uit basisregistraties gaat wordt 1 op 1 aangesloten bij de taxonomie van de betreffende basisregistratie. Als een basisregistratie niet expliciet een taxonomie heeft gepubliceerd wordt deze afgeleid uit het informatiemodel. 
   * De verwachting is dat de stelselcatalogus voor de basisregistraties dergelijke taxonomieën voor alle basisregistraties volgens dezelfde opzet gaat publiceren. Andere stelselcatalogi zoals de catalogus voor het DSO doen dit al. Daarmee wordt de Zorgeloos Vastgoed taxonomie een taxonomie die is verbonden met taxonomieën uit andere digitale stelsels. 

   * De concepten uit de taxonomie worden verdeeld over de domeinen 
     * *zv (algemeen ZV). Dit domein bevat alle domeinoverstijgende begrippen.
     * *kad (Kadaster)*. Dit domein bevat alle concepten die in de basisregistratie al zijn beschreven.
     * *not (notariaat)*. Dit domein bevat alle concepten die nog niet in een basisregistratie zijn beschreven, maar essentieel zijn voor het vastleggen van rechten en plichten in akten.
     * *fin (financieel)*. Dit domein bevat alle concepten in het financiële domein, voorzover niet al beschreven in zv, kad of not.
     * *mak (makelaardij)*. Dit domein bevat alle concepten in het makelaars domein, voorzover niet al beschreven in zv, kad, not of fin.
     * Deze domein vormen ieder voor zich 1 concept schema en samen 1 Zorgeloos Vastgoed concept schema.
   * De bronbestanden waarin deze begrippen worden beschreven staan in de github repository. 
   * Bewerken kan met een editor (direct in github) of via een taxonomie editor.
   * De bronbestanden worden ge-upload naar een publicatie omgeving: https://taxonomie.zorgeloosvastgoed.nl. 

3. Op basis van deze eerste versie van de taxonomie wordt een informatiemodel gegenereerd en vervolgens bijgeslepen. 
   * Het informatiemodel wordt opgesteld conform het MIM (Metamodel voor Informatie Modellen). Het MIM is een aanbevolen standaard van het Forum Standaardisatie.
   * Onder andere ook het Kadaster gebruikt het MIM voor haar informatiemodellen. 
     * Dat maakt het mogelijk net als bij de taxonomie hele stukken informatiemodel over te nemen van bronnen zoals de BRK en de BAG.
     * Dat maakt ook dat het Zorgeloos Vastgoed informatiemodel bruikbaar is voor een ODS (online data store) ofwel PDM (Personal Data Manager), waarin een consument/burger persoonlijke data kan opslaan en ter beschikking kan stellen aan anderen. Dit informatiemodel laat zien hoe, langs welke 'toegangspaden' de PDM (na toestemming van de consument/burger) kan worden bevraagd door de diverse partners in Zorgeloos Vastgoed. Een PDM zal echter ook op andere domeinen worden ingezet. Door standaardisatie op informatimodellen (MIM en overname structuur basisregistraties) wordt deze PDM ook bevraagbaar in andere sectoren.
   * Voor het maken van het informatiemodel wordt Enterprise Architect, met het MIM profiel, gebruikt.
   * Daarnaast wordt de tool Imvertor gebruikt, waarmee vanuit het informatiemodel een voor mensen leesbare versie en machine leesbare versies (XML en Json) voor gegevensuitwisseling worden gegenereerd.
     * De voor mensen (in de praktijk ontwikkelaars) leesbare versie wordt gepubliceerd op http:developer.zorgeloosvastgoed.nl/informatiemodel. Dit gebeurt in de vorm van een ReSpec document. ReSpec is een standaard voor het publiceren van specificaties die is ontwikkeld door de W3C.

4. Vanuit het informatimodel wordt een ontologie gegenereerd.
   * Het genereren van de ontologie gebeurt nu nog met een apart tooltje, maar kan ook worden toegevoegd aan Imvertor, waardoor deze er in stap 3 al uitrolt.

5. Parallel aan het maken van het informatiemodel wordt de taxonomie volledig gemaakt. 
   * Toelichtingen op stukken tekst, die normaliter in een apart document of in noten worden opgenomen, worden opgenomen als uitleg (rdfs:comment) bij de betreffende stukken tekst, die zijn geannoteerd als skoslex:Record.
     * Hiermee wordt het gedataficeerde en digitale document zelf-uitleggend.
   * Een document zoals een koopovereenkomst is meer dan een verzameling data. Het bevat ook:
     * de beschrijving en duiding van concepten die de data in de tekst uitleggen.
     * de beschrijving en duiding van concepten in teksten die, ook zonder data, een juridische strekking hebben. Dit gebeurt door de hele tekst uit te pluizen en alle rechtshandelingen, actoren en of 'agents' en objecten van handeling te beschrijven.
     * Hiermee ontstaat een genuanceerde annotatie van de tekst.
 
 6. Van de oorspronkelijke tekst wordt een model gemaakt dat de volgende elementen bevat:
    * een specificatie van alle data-elementen in de text conform de ontologie
    * een specificatie van alle concepten in de text conform de taxonomie
    * een specificatie van alle toelichtingen op de text conform de taxonomie (van skoslex:records)
 
 7. Bij een nieuwe use case worden de stappen 1 t/m 5 herhaald.
    * De taxonomie wordt uitgebreid met de nieuwe begrippen.
    * Het informatiemodel wordt uitgebreid met de nieuwe packages. Uiteindelijk ontstaat 1 samenhangend informatiemodel.
    * De ontologie wordt uitgebreid met de nieuwe objecten. Zo ontstaat een Vastgoed Knowlegde Graph.
