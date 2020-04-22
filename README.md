# bp4mc2-zvg
Try out
# UC-1 Create, edit and remove a new concept and its properties
 
# Functional requirements:
* [FR 1](../tool-reqs/reqs/FR-1.md). The system shall provide the ability to: 
a) create 
b) edit
c) remove
a Concept and its properties (see the list with [SKOS vocabulary](https://www.w3.org/TR/skos-reference/)).
* [FR 2](../tool-reqs/reqs/FR-2.md).The system shall provide the ability to add annotation.
* [FR 3](../tool-reqs/reqs/FR-3.md).The system shall provide the ability to perform a selective update of a resource.
* [FR 4](../tool-reqs/reqs/FR-4.md).The system shall enable the client to create the description (Web that is the same as URI).
* [FR 5](../tool-reqs/reqs/FR-5.md).The system shall enable the client to create the description (Web that is the same as URI).
 
# (non-)Functional requirements (MoSCoW):
| #  | MoSCoW|Requirement|Description|
| ------------- | ------------- | ------------| -------------|
| 1 | M  | GUI for input | Browser/windows based|
| 2 | C  | API for input | Insert support Turtle syntax, JSON-LD and RDF/XML |
| 3 | M  | Multi user | ... |
| 4 | S  | Cloud or server based | Not tied down to one place  |
| 5 | M  | Output: Graphical visualization data (graph model) representation | Graph-based and UML |
| 6 | M  | Output: XML (Schema) | HDN Maintenance tool enable |
| 7 | C  | Output: JSON-LD (Schema) | HDN Maintenance tool enable |
| 8 | C  | Output: PDF | HDN Maintenance tool enable |
| 9 | C  | Business Rules | ... Any Business Rules Engine??? |
| 10 | S  | Message generator example | HDN works with messages and it would be helpful, practical and constructive if the tool would be able to generate message examples   |
| 11 | S  | Testing capability | ... |
| 12 | C  | Deployment process with a clear release management | ... |
 
# User stories:
[example]
*As [maintainer of the taxonomie](../user/maintainer.md), I want to create new concepts and specify its properties.*
