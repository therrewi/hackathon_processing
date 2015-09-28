# Hackathon Processing 1 oktober

Dit een een Processing3 voorbeeldproject voor de Hackathon van 1 oktober.

In dit project wordt het CSV bestand ingelezen dat met behulp van google trends is gegenereerd. Dit CSV bestand bevat de trends van de zoekopdrachten naar ‘refugee' en ‘migrant' die gedaan zijn in de laatste 30 dagen.

In dit bestand wordt de ’Search Value Index’ gebruikt. Deze index geeft de waarde 100 aan het hoogste resultaat. De andere resultaten worden relatief aan deze waarde gerepresenteerd.

De belangrijkste bestanden uit het project zijn:

hackathon_processing.pde - Dit is het processing bestand dat de visualisatie uit voert. Implementeer hier loadMyImplementation en drwaMyImplementation om de visualisatie te maken.
data.pde - Dit is de plek waar alle data geladen wordt. Deze wordt aangeroepen vanuit de hackathon_processing.pde.

Er zijn twee voorbeelden geimplemnteerd: de line chart en de cirkelchart. Voor het line chart voorbeeld is de giCentre plugin nodig.

Hier onder een lijst van de uitgevoerde zoekopdrachten. Per categorie wordt er vermeld welke mogelijke variabelen te gebruiken zijn. Dit zijn de variabelen die in het Processing project gebruikt kunnen worden om de visualisaties te creëren.

<b>Interest over time</b>

Het aantal keer dat er per dag naar de term ‘refugee’ of ‘migrant’ is gezocht.

De datum waarop de zoektermen zijn uitgevoerd:
ArrayList<String> iotDay

De Search Value Index van de zoekopdrachten naar ‘migrant':
ArrayList<Float> iotSviMigrant

De Search Value Index van de zoekopdrachten naar ‘refugee':
ArrayList<Float> iotSviRefugee

<b>Top regions for migrant</b>

De regio waar het meest naar de term ‘migrant’ is gezocht.

De regio waarin de zoekopdrachten zijn uitgevoerd:
ArrayList<String> trfmRegion

De Search Value Index van de zoekopdrachten naar ‘migrant':
ArrayList<Float> trfmSviMigrant

De Search Value Index van de zoekopdrachten naar ‘refugee':
ArrayList<Float> trfmSviRefugee

<b>Top regions for refugee</b>

De regio waar het meest naar de term ‘refugee’ is gezocht.

De regio waarin de zoekopdrachten zijn uitgevoerd:
ArrayList<String> trfrRegion

De Search Value Index van de zoekopdrachten naar ‘migrant':
ArrayList<Float> trfrSviMigrant

De Search Value Index van de zoekopdrachten naar ‘refugee':
ArrayList<Float> trfrSviRefugee

<b>Top cities for migrant</b>

De stad waar het meest naar de term ‘migrant’ is gezocht.

De stad waarin de zoekopdrachten zijn uitgevoerd:
ArrayList<String> tcfmCity

De Search Value Index van de zoekopdrachten naar ‘migrant':
ArrayList<Float> tcfmSviMigrant

<b>Top cities for refugee</b>

De stad waar het meest naar de term ‘refugee’ is gezocht.

De stad waarin de zoekopdrachten zijn uitgevoerd:
ArrayList<String> tcfrCity

De Search Value Index van de zoekopdrachten naar ‘refugee':
ArrayList<Float> tcfrSviRefugee

<b>Top searches for migrant</b>

De meest voorkomende zoekopdrachten voor ‘migrant’.

De gebruikte zoektermen:
ArrayList<String> tsfmSearchTerm

De Search Value Index van de zoekopdrachten naar ‘migrant':
ArrayList<Float> tsfmSviMigrant

<b>Top searches for refugee</b>

De meest voorkomende zoekopdrachten voor ‘refugee’.

De gebruikte zoektermen:
ArrayList<String> tsfrSearchTerm

De Search Value Index van de zoekopdrachten naar ‘refugee':
ArrayList<Float> tsfrSviRefugee

<b>Rising searches for migrant</b>

De stijging van de zoekresultaten naar ‘migrant’.
De waarde breakout wil zeggen dat de zoekresultaten met meer dan 5000% gestegen zijn.

De gebruikte zoekterm:
ArrayList<String> rsfmSearchTerm

Het stijgingspercentage:
ArrayList<String> rsfmPercentage

<b>Rising searches for refugee</b>

De stijging van de zoekresultaten naar ‘refugee’.

De gebruikte zoekterm:
ArrayList<String> rsfrSearchTerm

Het stijgingspercentage:
ArrayList<String> rsfrPercentage
