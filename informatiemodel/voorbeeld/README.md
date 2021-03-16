# Voorbeeld

Voor het maken van het voorbeeld hebben we de volgende stappen doorlopen:

1. Ons voorbeeld begint met het standaard template voor een koopovereenkomst bestaande eensgezinswoning. Op dit moment is dit standaard template (alleen) beschikbaar in het DOCX-formaat (een propriety standaard van Microsoft).
2. Dit standaard template in DOCX-formaat gebruiken we vervolgens om de specifieke gegevens m.b.t. deze koopovereenkomst toe te voegen, door gebruik te maken van de Microsoft Word applicatie.
3. Het standaard template zetten we om naar een ander formaat: van DOCX naar XHTML, een open XML standaard. We zorgen daarbij ook dat duidelijk is in de XHTML welke elementen standaard teksten zijn, en welke elementen "invulplekken" zijn.
4. Dit standaard template in XHTML-formaat gebruiken we vervolgens om de specifieke gegevens m.b.t. deze koopovereenkomst toe te voegen. We gebruiken vervolgens een willekeurige browser om te verifiëren dat het resultaat exact gelijk is aan hetgeen we oorspronkelijk in Word hebben gemaakt. Hiermee ondersteunen we use case (1)
5. We voegen nu machine-leesbare gegevens toe, die gelijk zijn aan de gegevens die we al in het document hebben geplaatst. Hiervoor gebruiken we de open standaard RDFa, waarbij we de gegevens verbinden met de ontologie zoals we die voor ZVG hebben opgesteld. Hiermee ondersteunen we use case (2)
6. Naast de gegevens die al in de koopovereenkomst staan, kunnen we ook links aanbrengen met andere bronnen, bijvoorbeeld naar basisregistraties of eigen "kluisjes". Hiermee ondersteunen we use case (3)
7. Omdat we nu meer gegevens gestructureerd opslaan dan mogelijk noodzakelijk vanuit privacy oogpunt, kunnen dergelijke gestructureerde gegevens weglaten uit de Koopovereenkomst. De tekst blijft hetzelfde (hier zitten de gegevens nog in), maar ze is niet meer machine-leesbaar. Wel kun je de gegevens nog ophalen, door het volgen van de linkjes: als je daar nog bij mag (bijvoorbeeld openbare gegevens, zoals perceelgrenzen), dan kun je deze data machine-leesbaar nog ophalen. Hiermee ondersteunen we use case (4)
8. OM de privacy echt te garanderen, moeten we ook dergelijke gegevens uit de tekst weghalen. Maar, omdat we dan de koopovereenkomst niet meer kunnen reproduceren, is dit *alleen* mogelijk als er een wetswijziging wordt doorgevoerd, waarmee: (A) dit is toegestaan in een koopovereenkomst voor bepaalde categorieën van gegevens en (B) er registraties zijn die duurzaam kunnen "tijdreizen" (bv in basisregistraties). Hiermee ondersteunen we use case (5)
9. We kunnen *nog* meer gegevens weghalen, dit vergt aanvullende wetgeving, vergelijkbaar met punt 8. Hiermee ondersteunen we use case (6).

# Use cases

1. Koopovereenkomst opstellen voor mensen op basis van gestructureerde data.
  => Betekenisvol model van de data, zodat je er een document uit kunt genereren
2. Koopovereenkomst voor mensen & machines leesbaar
  => (1), plus een formaat waarbij tekst en data onverbrekelijk en onweerlegbaar met elkaar verbonden is
3. Koopovereenkomst waarbij de gegevens verifieerbaar zijn bij andere bronnen
  => (1+2), plus links naar andere bronnen
4. Koopovereenkomst waarbij alleen gestructureerde gegevens opgeslagen worden die ook daadwerkelijk bijvend nodig zijn
  => (1+2+3), plus weghalen van gegevens die je toch al kunt ophalen bij andere bronnen
5. Koopovereenkomst waarbij alleen gegevens in staan die ook daadwerkelijk blijvend nodig zijn
  => (1+2+3+4), plus wetgeving dat die andere bronnen duurzaam kunnen "tijdreizen"
6. Koopovereenkomst waarin geen gegevens meer zitten, de koopovereenkomst heeft alleen linkjes naar andere bronnen
  => (1+2+3+4+5), plus wetgeving dat ook voor de overige bronnen dergelijke duurzame "tijdreis"
