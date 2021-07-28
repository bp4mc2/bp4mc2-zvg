Inleiding
In dit document wordt de werkwijze beschreven om een bestaand document of formulier te dataficeren.
1. Bepalen belangrijkste begrippen voor basis taxonomie
   * Het model van een document of formulier is meestal beschikbaar als docx bestand of een vergelijk formaat.
   * Als eerste worden alle invulvelden gemarkeerd. Deze bevatten concepten die verwijzen naar 'dingen' waarover data worden vastgelegd.
   * Dit kan gewoon in Word of een andere tekst editor.

2. Met deze begrippen wordt een eerste versie van de taxonomie  opgebouwd. 
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
   * De bronbestanden worden ge-upload naar een publicatie omgeving. Op dit moemnt
# Informatiemodel
* Op basis van deze eerste versie van de taxonomie wordt een informatiemodel gegenereerd en vervolgens bijgeslepen. 
  * Hiervoor wordt Enterprise Architect gebruikt.
