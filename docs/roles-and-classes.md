# Roles and classes

SKOS-LEX identifies Records, Objects, Agents, Actors and Acts. These are subclasses of skos:Concept. A typical concept should be either a Record, an Object, an Agent, an Actor or an Act.

SKOS-LEX also identifies record- object-, agent-, actor- and act relations. These are relations between an Act and Records, Objects, Agents and/or Actors.

Although it seems logical that an Actor as a actor-relation with an Act, some other relationships are possible. This does not mean that an Actor "becomes" an Object, it simply has a relationship with an Act.

The following rules apply:
- An Object can only have an incomming object-relationship with an Act
  - Objects cannot "act", that's the essence of an Object: something that cannot act.
- A Record can have record and object relationships with an Act
  - A Record is in most cases related to the Act that is recorded with this Record.
  - In some cases, the Record itself is the object of the Act. This would be the "recording act" itself.
- An Act can have all the outgoing relationships: object, actor, agent AND can have an incomming object-relationship
  - The Act relationship to Objects, Actors and Agents is in most cases a situation where the Act itself is the Act performed.
  - In some cases, the Act is used as the object of another Act, for example: an audit.
- An Actor can have actor and object relationships with an Act
  - An Actor is in most cases related to the Act in which the Actor is the acting party.
  - In some cases, the Actor itself is the object of the Act. For example: investigating someone.
- An Agent can have agent, actor and object relationships with an Act
  - An Agent is in most cases related to the Act in which the Agent performs the role of Agent (not actually taking part of the Act)
  - But for some part of the Act, the Agent itself might be the actual performing party.
  - An Agent might even by the object of the Act, for example: an assessment.

As the Agent class is actually a subclass of the Actor class, all Agents are considered Actors as well. However, one should not explicitly define an Agent as Actor. By making some party an Agent, you state that this party is considered part of the fundamental execution of the Act described, and not the beneficient party. If confusion arrises, it might be that a particular Agent or Actor should be split in separate concepts.

For example: consider the situation of a Advocate. In court, the Advocate will be an Agent. But what about the Advocate that has employees? In the act of hiring people, the Advocate might also be an Actor. In such a case, the same person is considered an Agent as Advocate with regard to the Court-Act, and an Actor as Employer with regard to the Hiring-act: to different concepts, no confusion.

As the Record class is actually a subclass of the Object class, all Records are considered Objects as well. However, one should not explictly define a Record as an Object. By making some thing a Record, you state that this thing is considered part of the fundamental execution of the Act described, and not some thing that is the actual object of the act, the reason for the act to be executed. If confusion arrises, it might be that the act should be split in subacts.

For example: consider the situation of a Contract. The contract itself is the recording of some agreement between two parties. Maybe the aggreement is about the delivery of some goods. In this case: these goods are the actual object of the agreement. The contract itself is the record of the agreement. The act of making the aggreement will include the drafting of the agreement. The act of drafting the agreement will be a separate act and the object of this later act will be the contract itself. The contract remains of type Record, but will have an object-relation to the drafting-act and a record-relation to the agreement act.
