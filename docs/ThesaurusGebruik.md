# Thesaurusgebruik

[SKOS](https://www.w3.org/2004/02/skos/) is de standaard manier om op het web een begrippenkader te specificeren en te publiceren. De standaard heeft als belangrijk doel om *eenvoudig* te zijn. Dit betekent dat een vrij minimale semantiek is toegekend aan de elementen van skos, waardoor het vrij eenvoudig is om een willekeurige set van begrippen te beschrijven op basis van SKOS.

Deze eenvoud komt met een beperking: het is niet mogelijk om enkele rijkere constructies te beschrijven die vaak bij thesauri wel gebruikelijk zijn. Zo mist SKOS enkele uitdrukkingsvormen die wel in de ISO 25964 (Internationale standaard voor het beschrijven van thesauri) zijn opgenomen.

[SKOS-THES](http://purl.org/iso25964/skos-thes) vult dit gat. Skos-thes is ontworpen met het doel om het mogelijk te maken om een SKOS begrippenkader aan te vullen met de ontbrekende semantiek die wel in ISO 25964 is opgenomen.

In het bijzonder wordt daarbij een verdieping gemaakt van de skos:broader en skos:narrower eigenschappen, die in SKOS niet veel meer betekenen dan "bredere term" en "smallere term", zonder nadere semantiek:

- skos:broader:
  - skosthes:broaderGeneric (generieker begrip);
  - skosthes:broaderPartitive (begrip dat het geheel is van kleinere delen);
  - skosthes:broaderInstantial (begrip dat kan worden gezien als een categorie);
- skos:narrower:
  - skosthes:narrowerGeneric (specifieker begrip);
  - skosthes:narrowerPartitive (begrip dat een deel is van een groter geheel);
  - skosthes:narrowerInstantial (begrip dat kan worden gezien als een voorbeeld van een categorie).

De drie specialisaties van respectievelijk skosthes:broader en skosthes:narrower vervullen drie manieren waarop begrippen zich tot elkaar kunnen verhouden:
- Taxonomies: een begrip A is generieker dan begrip B als elk voorbeeld van begrip B ook een voorbeeld is van begrip A, maar niet noodzakelijkerwijs andersom. Zo is het begrip "Voertuig" een generieker begrip dan het begrip "Fiets";
- Meriologisch: een begrip A verwijst naar een onderdeel van het geheel waar begrip B naar verwijst. Zo is een "Fietsbel" een onderdeel van een "Fiets";
- Categorisch: een begrip A kan worden gezien als een categorie, waar begrip B een voorbeeld van is. Zo is "Primaire kleuren" een categorie waar "Rood", "Groen" en "Blauw" voorbeelden van zijn.
