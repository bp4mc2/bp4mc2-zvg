java -jar ../lib/ea2rdf.jar -ea -e ../informatiemodel/ea/zvg.eap > pipeline/zvg-ea.ttl
java -jar ../lib/rdf2rdf.jar pipeline/zvg-ea.ttl output/zvg-mim.ttl ../lib/ea2mim.yaml
java -jar ../lib/rdf2rdf.jar output/zvg-mim.ttl output/zvg-onto.ttl ../lib/mim2onto.yaml
java -jar ../lib/rdf2xml.jar output/zvg-onto.ttl media/zvg-onto.md ../lib/rdf2md.xsl
java -jar ../lib/rdf2xml.jar output/zvg-onto.ttl media/zvg-onto.graphml ../lib/rdf2graphml.xsl add media/zvg-onto-edited.graphml
