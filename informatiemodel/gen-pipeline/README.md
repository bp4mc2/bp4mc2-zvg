# Generation pipeline

Deze pipeline beschrijft hoe je vanuit een Enterprise Architectuur bestand (zvg.eap of zvg.eapx) de conversie kunt doen naar de MIM serialisatie (LD variant) en naar een LD ontologie in RDFS/OWL/SHACL. Ook wordt er een diagram gegenereert op basis van de LD ontologie in RDFS/OWL/SHACL.



Noodzakelijke jar bestanden hiervoor zijn:
- ea2rdf.jar in https://github.com/architolk/ea2rdf/releases/tag/v1.1.0 (conversie van EAP bestand naar turtle conform EA vocabulaire);
- rdf2rdf.jar in https://github.com/architolk/rdf2rdf/releases/tag/v1.1.0 (conversie van RDF conform de ene vocabulare (EA of MIM) naar de andere (MIM of RDFS/OWL/SHACL));
- rdf2xml.jar in https://github.com/architolk/rdf2xml/releases/tag/v1.0.0 (conversie van RDF naar GRAPHML)

De flow ziet er dan uit conform onderstaand plaatje:

![](gen-pipeline.png)

Het bestand pipeline.sh geeft een werkende versie. Daarbij wordt het [zvg.EAP](../ea/zvg.EAP) bestand als input-bestand gebruikt.
Ook worden deze stappen automatisch in een github-actions workflow uitgevoerd zodra er wijzigingen worden gepushed mbt het EAP bestand. via de [github website](https://github.com/bp4mc2/bp4mc2-zvg/actions/workflows/gen-mim-ld.yml) kan de workflow ook handmatig afgetrapt worden.
