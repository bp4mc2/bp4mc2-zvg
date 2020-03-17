# Tool requirements

Het beheer van de informatie in een gegevenscatalogus voor Zorgeloosvastgoed omvat de volgende drie typen informatie:

1. De **taxonomie** / thesaurus voor Zorgeloosvastgoed, met alle relevante begrippen, de uitleg hierover en de relaties tussen begrippen, inclusief de verwijzingen naar de relevante wet- en regelgeving.
2. De beschrijving van de **datasets** die beschikbaar zijn binnen het domein van Zorgeloosvastgoed en waaruit informatie uitgewisseld kan worden via informatieproducten of -services.
3. De **informatiemodellen** die een beschrijving geven met welke structuur de datasets zijn opgebouwd, inclusief een beschrijving van de betekenis van de afzonderlijke gegevenselementen in deze datasets. Deze beschrijving van de betekenis bestaat onder meer uit een verwijzing naar de begrippen uit de taxonomie van Zorgeloosvastgoed.

Het beheer van elk van deze typen informatie kan onderverdeeld worden in een aantal beheerfuncties:

1. **Invoeren en wijzigen** van informatie in de catalogus.
2. **Colleboratie en opslag** van verschillende versies van de informatie in de catalogus. Collaboratie omvat de ondersteuning voor het delen van elkaars werk, reviews hierop uitvoeren, gecontroleerde processen voor het beoordelen, goedkeuren en publiceren van nieuwe versies. Deze functie omvat ook het kunnen aangeven van issues met betrekking tot de informatie in de catalogus en het toewijzen van issues aan personen die hier vervolgens mee aan de slag gaan.
3. **Publicatie en visualisatie** van de informatie in de catalogus. De informatie zal getoond moeten worden, waarbij visualisaties nodig zijn om voor verschillende doelgroepen en vanuit verschillende invalshoeken naar de catalogus te kunnen kijken. Hieronder valt ook het kunnen zoeken in de catalogus.
4. **Controle en validatie** van de informatie in de catalogus. Voordat informatie als definitief gepubliceerd kan worden, is van belang dat controles uitgevoerd kunnen worden zodat de consistentie van de informatie in de catalogus gewaarborgd is.
5. **Delen van voorschriften** tussen auteurs van informatie in de catalogus. Bij het invoeren en wijzigen van informatie is het van belang dat alle auteurs dezelfde voorschriften hanteren, zodat een eenduidige catalogus ontstaat. Er is een hulpmiddel nodig om deze voorschriften te kunnen tonen en te bewerken, verbonden met de plek waar de voorschriften nodig zijn.

Door deze 5 functies en 3 typen informatie tegen elkaar uit te zetten, ontstaan 15 vlakken die betrekking hebben op de ondersteuning die een tool kan leveren. Afhankelijk van het belang dat een organisatie hecht aan een specifieke functie of type informatie, kan vervolgens gekeken worden wat de meeste urgentie heeft en de meest rijke (of juist minste) toolondersteuning nodig heeft.

|                                     |![](media/Taxonomie.png)                  |![](media/Datasets.png)                  |![](media/Informatiemodellen.png)                  |
|-------------------------------------|------------------------------------------|-----------------------------------------|---------------------------------------------------|
|![](media/InvoerenWijzigen.png)      |[1.1](Taxonomie-InvoerenWijzigen.md)      |[2.1](Datasets-InvoerenWijzigen.md)      |[3.1](Informatiemodellen-InvoerenWijzigen.md)      |
|![](media/CollaboratieOpslag.png)    |[1.2](Taxonomie-CollaboratieOpslag.md)    |[2.2](Datasets-CollaboratieOpslag.md)    |[3.2](Informatiemodellen-CollaboratieOpslag.md)    |
|![](media/PublicatieVisualisatie.png)|[1.3](Taxonomie-PublicatieVisualisatie.md)|[2.3](Datasets-PublicatieVisualisatie.md)|[3.3](Informatiemodellen-PublicatieVisualisatie.md)|
|![](media/ControleValidatie.png)     |[1.4](Taxonomie-ControleValidatie.md)     |[2.4](Datasets-ControleValidatie.md)     |[3.4](Informatiemodellen-ControleValidatie.md)     |
|![](media/DelenVoorschriften.png)    |[1.5](Taxonomie-DelenVoorschriften.md)    |[2.5](Datasets-DelenVoorschriften.md)    |[3.5](Informatiemodellen-DelenVoorschriften.md)    |

Op dit moment ligt de focus op de taxonomie. In onderstaand figuur is afgebeeld hoe de huidige toolondersteuning is geregeld. Een lege cel geeft aan dat dit onderdeel nog niet is opgepakt en hier dan ook nog geen ondersteuning voor is ingericht.

|                                     |![](media/Taxonomie.png)|![](media/Datasets.png)|![](media/Informatiemodellen.png)|
|-------------------------------------|------------------------|-----------------------|---------------------------------|
|![](media/InvoerenWijzigen.png)      |Beperkt (github editor) |                       |                                 |
|![](media/CollaboratieOpslag.png)    |Uitgebreid (github)     |                       |                                 |
|![](media/PublicatieVisualisatie.png)|Behoorlijk (dotwebstack)|                       |                                 |
|![](media/ControleValidatie.png)     |Beperkt (reports)       |                       |                                 |
|![](media/DelenVoorschriften.png)    |Beperkt (github wiki)   |                       |                                 |

Hieruit is duidelijk dat op dit moment veel belang wordt gehecht aan de collaboratie en visualisatie van de taxonomie.
