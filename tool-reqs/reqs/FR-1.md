# FR-1 Create, edit and remove concepts following the SKOS and SKOS-LEX vocabulary

SKOS vocabulary:

| SKOS term | Dutch label |
|-----------|-------------|
| skos:Concept       | |
| skos:ConceptScheme | |
| skos:inScheme      | |
| skos:hasTopConcept | |
| skos:topConceptOf  | |
| skos:altLabel      | |
| skos:hiddenLabel   | |
| skos:prefLabel     | |
| skos:notation      | |
| skos:changeNote    | |
| skos:definition    | |
| skos:editorialNote | |
| skos:example       | |
| skos:historyNote   | |
| skos:note          | |
| skos:scopeNote     | |
| skos:broader       | |
| skos:broaderTransitive | |
| skos:narrower      | |
| skos:narrowerTransitive | |
| skos:related       | |
| skos:semanticRelation | |
| skos:Collection    | |
| skos:OrderedCollection | |
| skos:member        | |
| skos:memberList    | |
| skos:broadMatch    | |
| skos:closeMatch    | |
| skos:exactMatch    | |
| skos:mappingRelation | |
| skos:narrowMatch   | |
| skos:relatedMatch  | |

Suggestion for a minimal requirement to annotate a thing divided into 4 groups:

- Basis structure:
  - skos:Concept
- Lexical labelling:
  - skos:prefLabel
  - skos:altLabel
- Documentation:
  - skos:definition
- Semantic relations:
  - skos:broader
  - skos:narrower
  - skos:related
