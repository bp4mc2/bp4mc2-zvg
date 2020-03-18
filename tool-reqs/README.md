# Tool requirements

## Capabilities: typen informatie versus beheerfuncties

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
|![](media/InvoerenWijzigen.png)      |[1.1](taxonomie/InvoerenWijzigen.md)      |[2.1](datasets/InvoerenWijzigen.md)      |[3.1](informatiemodellen/InvoerenWijzigen.md)      |
|![](media/CollaboratieOpslag.png)    |[1.2](taxonomie/CollaboratieOpslag.md)    |[2.2](datasets/CollaboratieOpslag.md)    |[3.2](informatiemodellen/CollaboratieOpslag.md)    |
|![](media/PublicatieVisualisatie.png)|[1.3](taxonomie/PublicatieVisualisatie.md)|[2.3](datasets/PublicatieVisualisatie.md)|[3.3](informatiemodellen/PublicatieVisualisatie.md)|
|![](media/ControleValidatie.png)     |[1.4](taxonomie/ControleValidatie.md)     |[2.4](datasets/ControleValidatie.md)     |[3.4](informatiemodellen/ControleValidatie.md)     |
|![](media/DelenVoorschriften.png)    |[1.5](taxonomie/DelenVoorschriften.md)    |[2.5](datasets/DelenVoorschriften.md)    |[3.5](informatiemodellen/DelenVoorschriften.md)    |

Op dit moment ligt de focus op de taxonomie. In onderstaand figuur is afgebeeld hoe de huidige toolondersteuning is geregeld. Een lege cel geeft aan dat dit onderdeel nog niet is opgepakt en hier dan ook nog geen ondersteuning voor is ingericht.

|                                     |![](media/Taxonomie.png)|![](media/Datasets.png)|![](media/Informatiemodellen.png)|
|-------------------------------------|------------------------|-----------------------|---------------------------------|
|![](media/InvoerenWijzigen.png)      |Zeer beperkt (github editor) |                       |                                 |
|![](media/CollaboratieOpslag.png)    |Uitgebreid (github)     |                       |                                 |
|![](media/PublicatieVisualisatie.png)|Behoorlijk (dotwebstack)|                       |                                 |
|![](media/ControleValidatie.png)     |Beperkt (reports)       |                       |                                 |
|![](media/DelenVoorschriften.png)    |Beperkt (github wiki)   |                       |                                 |

Hieruit is duidelijk dat op dit moment veel belang wordt gehecht aan de collaboratie en visualisatie van de taxonomie.

## Users

The [maintainer](users/maintainer.md) is a person who… *[yet to be defined???]*

1. technisch beheerder die zorgt dat de code wordt onderhouden (consistent, bugfree, correcte relaties). Van de 3 rollen de meest technisch vaardig;
2. functioneel beheer waaarbij wordt gezorgd dat de betekenis (comment, definition) goed gevuld is en zou ook suggesties kunnen doen voor het leggen van relaties. Vaak van de juridische- en communicatieafdeling. Vooral inhoudelijk en minder technisch vaardig. Dit is bij uitstek een doemein-specifieke rol
3. Soort opertationele rol die zorgt dat de taxonomie wordt aangevuld.

Possible profiles in no particular order:
- otologists,
- taxonomists,
- linked data specialists,
- schema designers,
- developers,
- data engineers,
- information engineers,
- data analysts,
- domain knowledge, i.e. businesspeople from HDN, NVM, KNB en Kadaster (not technicians).

## Use cases

- [UC-1](use-cases/UC-1.md). Create a new concept and its properties.
- [UC-2](use-cases/UC-2.md). Edit existing concepts and its properties.
- [UC-3](use-cases/UC-3.md). Remove existing concepts and its properties.
- [UC-4](use-cases/UC-4.md). Export taxonomy.
- [UC-5](use-cases/UC-5.md). Define universal identifiers.
- [UC-6](use-cases/UC-6.md). Online human-readable description.
- [UC-7](use-cases/UC-7.md). Link concepts.
- [UC-8](use-cases/UC-8.md). Visualize taxonomy.
- [UC-9](use-cases/UC-9.md). Publish taxonomy.
- [UC-10](use-cases/UC-10.md). Share with others.
- [UC-11](use-cases/UC-11.md). Request for approval.
- [UC-12](use-cases/UC-12.md). Add an ontology.
- [UC-13](use-cases/UC-13.md). User management and user rights.
- [UC-14](use-cases/UC-14.md). Import taxonomy.
- [UC-15](use-cases/UC-15.md). To validate taxonomy.
- [UC-16](use-cases/UC-16.md). Search and browse.
- [UC-17](use-cases/UC-17.md). Add user-defined comments.
- [UC-18](use-cases/UC-18.md). Provide examples.

## Functional requirements

*[TODO]: er is veel overlap tussen de use cases en de functionele requirements. Kunnen we dit samenvoegen?*

- [FR-1](reqs/FR-1.md). Create, edit and remove concepts following the SKOS and SKOS-LEX vocabulary ([UC-1](use-cases/UC-1.md), [UC-2](use-cases/UC-2.md), [UC-3](use-cases/UC-3.md)).
- [FR-2](reqs/FR-2.md). The system shall provide the ability to add annotation (metadata and ontologies) to a concept and its properties following the Dublin Core vocabulary ([UC-1](use-cases/UC-1.md), [UC-12](use-cases/UC-12.md)).
- FR-3. The system shall provide the ability to perform a selective update of a resource ([UC-2](use-cases/UC-2.md)).
- FR-4. The system shall enable the client to create the description ([UC-9](use-cases/UC-9.md)).
- FR-5. The system should be able to produce a clickable version (graph model) with more info (context visualization) ([UC-8](use-cases/UC-8.md), [UC-9](use-cases/UC-9.md)).
- FR-6. Managing access and editing rights for groups of taxonomy maintainers ([UC-13](use-cases/UC-13.md)).
- FR-7. Namespace management ([UC-1](use-cases/UC-1.md), [UC-2](use-cases/UC-2.md), [UC-3](use-cases/UC-3.md)).
- FR-8. Import and management of existing taxonomy, with and without existing URIs and possibility to change the URI’s and namespaces with import ([UC-14](use-cases/UC-14.md)).
- FR-9. Controlled mapping of relationships between concepts in different vocabularies ([UC-7](use-cases/UC-7.md), [UC-12](use-cases/UC-12.md)).
- FR-10. Concept-level change history management ([UC-9](use-cases/UC-9.md)).
- FR-11. Multilingual vocabulary maintenance (Requires: the ability to manage concept equivalence between vocabularies in different languages and intra-concept language-related equivalence between concept properties in multiple languages) ([UC-7](use-cases/UC-7.md), [UC-12](use-cases/UC-12.md)).
- FR-12. SKOS validation by user input constraint and validation of imported vocabularies ([UC-14](use-cases/UC-14.md), [UC-15](use-cases/UC-15.md)).
- FR-13. The system should be able to perform search and browse functionality for concepts by label ([UC-16](use-cases/UC-16.md)).
- FR-14. The system should be able offer a taxonomy to others (co-designers?) (concepts and properties triples) for a review ([UC-9](use-cases/UC-9.md)).
- FR-15. The system should be able to support cooperative design function - to distribute taxonomy and share it with others ([UC-10](use-cases/UC-10.md)).
- FR-16. The system should support request for approval requirement ([UC-11](use-cases/UC-11.md)).
- FR-17. The system should have a user management Authorization and Authentication functionality ([UC-13](use-cases/UC-13.md)).
- FR-18. The system should provide user with an import possibilities ([UC-14](use-cases/UC-14.md)).
- FR-19. The system should execute (minimal) SKOS validation ([UC-15](use-cases/UC-15.md)).
- FR-20. The system should support search and browse possibility ([UC-16](use-cases/UC-16.md)).
- FR-21. The system should have an option to add design related comments ([UC-17](use-cases/UC-17.md)).

## Non functional requirements

- NFR-1. The system shall provide access guidance to resources,
- NFR-2. The system shall encourage non-duplication of resources,
- NFR-3. The system shall support distribution of resources,
- NFR-4. The system shall support consistent, global naming,
- NFR-5. The system shall support the use of standard vocabularies SKOS and DC where appropriate,
- NFR-6. The system shall provide a scalable linking model, Data Theater, Pool Party
- NFR-7. The system shall permit unrestricted vocabulary
- NFR-8. The system will enable different syntaxis for modelling (RDF, RDFS, SKOS, OWL, LD-JSON) - various formats:RDF/XML (rdf), XHTML (html), and XML Schema (xsd)

*[TODO] De meeste zaken die hier worden genoemd, zijn voor mij meer functionele zaken. Ik zou hier zelf iets roepen over security, availability, performance, hardware requirements. Het lijkt me lastig daar nu al iets over te roepen, maar we zouden de onderwerpen kunnen opsommen en waar we iets over kunnen roepen, kan worden ingevuld, alhoewel dit ook al wordt genoemd bij de use cases. We kunnen iets roepen over security en de 3 rollen. Als de taxonomie openbaar is, moet iedereen erbij kunnen, maar we willen waarschijnlijk niet dat iedereen de comments en definitionts van de concepten kan aanpassen.*
