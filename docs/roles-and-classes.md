# Roles and classes

SKOS-LEX identifies Objects, Agents, Actors and Acts. These are subclasses of skos:Concept. A typical concept should be either an Object, an Agent, an Actor or an Act.

SKOS-LEX also identifies object-, agent-, actor- and act relations. These are relations between an Act and Objects, Agents and/or Actors.

Although it seems logical that an Actor as a actor-relation with an Act, some other relationships are possible. This does not mean that an Actor "becomes" an Object, it simply has a relationship with an Act.

The following rules apply:
- An Object can only have an incomming object-relationship with an Act
  - Objects cannot "act", that's kinda the definition of an Object: something that cannot act.
- An Act can have all the outgoing relationships: object, actor, agent AND can have an incomming object-relationship
  - The Act relationship to Objects, Actors and Agents is in most cases a situation where the Act itself is the Act performed.
  - In some cases, the Act is used as the object of another Act, for example: an audit.
- An Actor can have actor and object relationships with an Act
  - An Actor is in most cases related to the Act in which the Actor is the acting party.
  - In some cases, the Actor itself is the object of the Act. For example: investigating someone.
- An Agent can have agent, actor and object relationships with an Act
  - An Agent is in moste cases related to the Act in which the Agent performs the role of Agent (not actually taking part of the Act)
  - But for some part of the Act, the Agent itself might be the actual performing party.
  - An Agent might even by the object of the Act.

As the Agent class is actually a subclass of the Actor class, all Agents are considered Actors as well. However, one should not explicitly define an Agent as Actor. By making some party an Agent, you state that this party is considered part of the fundamental execution of the Acts described, and not the beneficient party. If confusion arrises, it might be that a particular Agent or Actor should be split.

For example: consider the situation of a Advocate. In court, the Advocate will be an Agent. But what about the Advocate that has employees? In the act of hiring people, the Advocate might also be an Actor. In such a case, the same person is considered an Agent as Advocate with regard to the Court-Act, and an Actor as Employer with regard to the Hiring-act: to different concepts, no confusion.
