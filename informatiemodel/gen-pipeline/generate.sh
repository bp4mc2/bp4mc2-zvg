echo Converteer native EA model naar RDF
# Replace path for ea2rdf.jar to the location that contains the jar library
# Source can be found here: https://github.com/architolk/ea2rdf/releases/tag/v1.1.0
java -jar ../../../ea2rdf/target/ea2rdf.jar -e ../ea/zvg.EAP > zvg-ea.ttl
echo Converteer EA model in RDF naar MIM model in RDF
# Replace path for rdf2rdf.jar to the location that contains the jar library
# Source can be found here: https://github.com/architolk/rdf2rdf/releases/tag/v1.1.0
java -jar ../../../rdf2rdf/target/rdf2rdf.jar zvg-ea.ttl zvg-mim.ttl ea2mim.yaml
echo Converteer MIM model in RDF naar RDFS/OWL/SHACL model in RDF
java -jar ../../../rdf2rdf/target/rdf2rdf.jar zvg-mim.ttl zvg-ont.ttl mim2onto.yaml
echo Aanmaken graphml bestand
# Replace path for rdf2xml.jar to the location that contains the jar library
# Source can be found here: https://github.com/architolk/rdf2xml
java -jar ../../../rdf2xml/target/rdf2xml.jar zvg-ont.ttl zvg-ont.graphml rdf2graphml.xsl add zvg-ont-edited.graphml
java -jar ../../../rdf2xml/target/rdf2xml.jar zvg-ont.ttl zvg-model.graphml rdf2graphml.xsl follow zvg-model-edited.graphml
