# Wijzigingen sinds juli 2021

## Ontbrekende of gewijzigde begrippen toegevoegd
| Voorkeursterm ZV-taxonomie      | Model wijziging    | ZV-informatiemodel      |
|---------------------------------|--------------------------------|--------------------------------------------------|
| Naam    | Gegevensgroep Naam       | Naam (gegevensgroep)     |
| Achternaam conform identiteitsbewijs | geslachtsnaam (begrip toegevoegd)   | _geslachtsnaam_      |
| Voornamen     | begrip toegevoegd  | voornamen          |
| Geboorteplaats      | begrip toegevoegd  | geboorteplaats     |
| Geboortedatum       | link gewijzigd     | geboortedatum      |
| Naam van een openbare ruimte    | link gewijzigd     | _OpenbareRuimteNaam_     |
| Huisnummer    | _geen wijziging_   | huisnummer         |
| Huisnummertoevoeging      | begrip toegevoegd  | huisnummertoevoeging     |
| Postcode      | link gewijzigd     | postcode           |
| Woonplaats             | link gewijzigd     | woonplaatsNaam            |
| Burgerlijke staat            | begrip toegevoegd        | soortVerbintenis          |
| Regime           | begrip toegevoegd        | verbintenisvoorwaarden          |
| Mailadres        | begrip toegevoegd        | e-mailAdres         |
| Telefoon         | begrip toegevoegd        | telefoonnummer            |
| Telefoon mobiel               | attribuut toegevoegd en begrip toegevoegd  | mobielTelefoonnummer      |
| Kadastrale gemeente          | begrip toegevoegd        | kadastraleGemeente        |
| Kadastrale aanduiding        | begrip toegevoegd        | sectie        |
| Kadastrale aanduiding        | begrip toegevoegd        | perceelnummer       |
| Kadastrale grootte           | geen wijziging       | kadastraleGrootte         |
| Koopsom          | begrip toegevoegd        | koopsom             |
| Waarde roerende zaken       | begrip toegevoegd        | waarde        |
| Zakelijk recht         | begrip toegevoegd        | ZakelijkRecht       |
| Erfpachtvoorwaarden          | begrip toegevoegd        | algemeneErfpachtvoorwaarden     |
| Canon type             | begrip toegevoegd        | type          |
| Betaler overdrachtskosten          | begrip toegevoegd        | kostenKoperofVerkoper           |
| Aanwijzer notaris            | begrip toegevoegd        | aanwijzerNotaris          |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |   _geen wijziging_     | artikel13Verschil         |
| Datum van passeren akte van levering kadastraal object     | begrip toegevoegd        | JuridischeLevering.datumAfspaak       |
| Datum bankgarantie of waarborgsom        | begrip toegevoegd        | _BankgarantieOfWaarborgsom.uiterlijkeDatumGarantie_      |
| Bedrag bankgarantie of waarborgsom       | begrip toegevoegd        | BankgarantieOfWaarborgsom.bedrag      |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |  _geen wijziging_      | belastMetPubliekrechtelijkeBeperking       |
| Woondoeleinde          | _vrij tekstveld, niet kunnen toevoegen_       | _staat-onroerendezaak_?        |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |  _geen wijziging_      | isVerontreinigingBekend         |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |  _geen wijziging_      | isOndergrondseTankBekend        |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |  _geen wijziging_      | isAsbestAanwezig          |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   | _geen wijziging_       | isArtikel55WetBodembeschermingBekend        |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   | _geen wijziging_       | isAanwijzingRijksmonumentBekend       |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |  _geen wijziging_      | heeftAanwijzingWVG        |
| Overeenkomst feitelijke levering         | begrip toegevoegd        | FeitelijkeLevering        |
| Datum koper verantwoordelijk       | _lijkt geen variabelveld, daarom niet in model_       |         |
| niet opnemen in ZV-taxonomie; wel aanwezig in IM:   |   _geen wijziging_    | inschrijvenKadaster       |
| Datum registratie koopovereenkomst       | begrip toegevoegd        | RegistratieKooponvereenkomst.registrerenNa       |
| Datum ontbinding voorbehoud bouwkundige keuring      | begrip toegevoegd        | OntbindendeVoorwaarde.expiratiedatum        |
| Datum ontbinding voorbehoud financiering       | begrip toegevoegd        | OntbindendeVoorwaarde.expiratiedatum        |
| Datum ontbinding voorbehoud NHG          | begrip toegevoegd        | OntbindendeVoorwaarde.expiratiedatum        |
| Nadere afspraken       | begrip toegevoegd        | AanvullendeVoorwaarden.voorwaardenTekst     |
| Roerende zaken         | begrip toegevoegd        | LijstVanGoederen          |
| Overeengekomen datum van eigendomsoverdracht   |   _De verschillende data die genoemd worden voor levering, inschrijving koopovereenkomst en feitelijkelevering staan niet als data in de overeenkomst._       |         |
| Registratiemoment Koopovereenkomst       |      _Idem_  |         |
| Overdrachtskosten            | begrip toegevoegd        | Overdrachtskosten         |

Cursief in 2e kolom is opmerking tijdens bewerking, cursief in 3e kolom toevoeging van mapping naar model.

 ## Ontbrekende kardinaliteiten toegevoegd

| Pad           | kardinaliteit toegevoegd  |
|----------------------------------------------------------------------|--------------------------|
| ZVG Koop::BouwtechnischeKeuring...NietNatuurlijkPersoon...    |  1      |
| ZVG Koop::Koop...ZakelijkRecht (assoc)      |  1..*   |
| ZVG Koop::JuridischeLevering...NietNatuurlijkPersoon (ass...) |  1      |
| ZVG ZVGKAD-OnroerendeZaak::Appartementsrecht...Vere...  |  1      |
| ZVG Recht::ZakelijkRecht...OnroerendeZaak (assoc)       |  1      |
| ZVG ProVenance::Agent...(assoc)       |  0..*   |
| ZVG ProVenance::Activity..Agent (assoc)     |  0..*   |
| ZVG ProVenance::Entity..Agent (assoc)       |  1..*   |