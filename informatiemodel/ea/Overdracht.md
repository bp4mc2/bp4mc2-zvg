# Wijzigingen:

Object|Type|Stereotype|Author|Scope|Status|Phase|CreatedDate|ModifiedDate|
--|--|--|--|--|--|--|--|--|
Entity|Class|Objecttype|Kadaster|Public|Proposed|1.0|11-9-2025 10:14:49|11-9-2025 10:14:49|
Entiteit of document|Class|keuze|MesdagThies|Public|Proposed|1.0|11-9-2025 10:01:08|11-9-2025 10:03:07|
Recht|Package|View|Kadaster|Public|Proposed|2|31-5-2022 13:49:51|11-9-2025 10:42:16|
NietNatuurlijkPersoon|Class|Objecttype|Kadaster|Public|Proposed|1.0|8-2-2019 10:09:50|11-9-2025 09:57:28|
Appartementsrecht|Class|Objecttype|Arjan Loeffen|Public|Proposed|1.0|22-11-2017 12:04:57|11-9-2025 09:56:04|


__Entity__ zat in het package onderhanden, kopie gemaakt naar de package provenance en de relaties daar naar toe vervangen. (naam= entiteit alias= _VoorkomenZVG)

__Entiteit of document__, elemenet opnieuw gemaakt omdat ik dacht dat daar het entiteit probleem zat. Verwarrend was dat Entiteit de naam is van het objecttype met de alias _VoorkomenZVG.  

__Recht__, had nog een verkeerde namespace, deze aangepast.

__NietNatuurlijkPersoon__, had een dubbele generalisatie naar persoon, een verwijderd

__Appartementsrecht__ onbekende wijziigng

Verder verschillende datatypen goed gemapt naar de datatypen package, naar bedrag en verwijzingen naar brkidvervangen door verwijzingen naar NEN3610ID 

## Handleidingen modelleren met MIM en Imvertor:
* [Methode voor Informatie Modellering (MIM)](https://docs.geostandaarden.nl/mim/mim/)
* [Handleiding Imvertor](https://armatiek.nl/doc/imvertor/imvertor/4.2/)
* [Documenteren met documentor](https://armatiek.nl/doc/imvertor/documentor/1.9/)
* [Voorbeeld informatiemodel / model met alle constructen uit MIM](https://armatiek.nl/doc/report/primer/1.2/)


Naast documenteren met documentor kun je ook zelf een respecdocument maken van het model. Hiervoor maken we gebruik van de [respec template beheerd door logius](https://github.com/Logius-standaarden/ReSpec-template) 

Hoe dat werkt kun je afkijken bij bijvoorbeeld op de logius site of bijvoorbeeld bij de geonovum [imev-werkomgeving](https://github.com/Geonovum/imev-werkomgeving) repository. 

        
Het EA model dat wordt gegenereerd met imvertor is te vinden in de /cat directory in de output zip van imvertor. In het voorbeeld hieronder wordt de gegenereerde output dat aangeroepen met de regel "`<div data-include="imkad-Relaasregistratie-1-20241125.office.respec.html" data-include-replace="true"></div>`"



    <!DOCTYPE html>
    <html lang="nl">

    <head>
        <meta charset=utf-8>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- De css werkt alleen op docs.kadaster.nl, niet lokaal -->
        <link rel="stylesheet" type="text/css" href="https://developer.kadaster.nl/schemas/respec/css/specs.css" />
        <!-- <script src="https://cdn.jsdelivr.net/gh/digitalbazaar/respec-mermaid@1.0.1/dist/main.js" class="remove"></script> -->
        <script src="js/organisation-config.js" class="remove"></script>
        <script src="js/config.js" class="remove"></script>
        <script class="remove"> respecConfig = { ...organisationConfig, ...respecConfig }</script>
        <script>document.title = respecConfig.title</script>
        <title>Default</title>
        <link rel="shortcut icon" type="image/x-icon"
            href="https://developer.kadaster.nl/schemas/respec/media/logos/Kadaster.ico" />
        <script src="https://gitdocumentatie.logius.nl/publicatie/respec/builds/respec-nlgov.js" class="remove"
            async></script>
    </head>

    <body>
        <section id="abstract" data-include-format="markdown" data-include="abstract.md"></section>
        <section id="sotd"></section><!-- Wordt automatisch gevuld -->

        <section data-include-format="markdown" data-include="H1-Inleiding.md"></section>
        <section data-include-format="markdown" data-include="H2-Overzicht.md"></section>
        <div data-include="imkad-Relaasregistratie-1-20241125.office.respec.html" data-include-replace="true"></div>

        <section id='conformance'></section>
        <section id='tof'></section>
        <section id="index"></section>
        <section class="appendix" data-format="markdown" data-include='BI-Afkortingen.md'></section>
    </body>

    </html>