# Hackathon Processing 1 oktober

Dit een een Processing3 voorbeeldproject voor de Hackathon van 1 oktober.

In dit project wordt het CSV bestand ingelezen dat met behulp van google trends is gegenereerd. Dit CSV bestand bevat de trends van de zoekopdrachten naar ‘refugee' en ‘migrant' die gedaan zijn in de laatste 30 dagen.

In dit bestand wordt de ’Search Value Index’ gebruikt. Deze index geeft de waarde 100 aan het hoogste resultaat. De andere resultaten worden relatief aan deze waarde gerepresenteerd.

De belangrijkste bestanden uit het project zijn:

hackathon_processing.pde - Dit is het processing bestand dat de visualisatie uitvoert. Implementeer hier loadMyImplementation en drawMyImplementation om de visualisatie te maken.

data.pde - Dit is de plek waar alle data geladen wordt. Deze wordt aangeroepen vanuit de hackathon_processing.pde.

Er zijn twee voorbeelden geimplementeerd: de line chart en de cirkel chart. Voor het line chart voorbeeld is de giCentre plugin nodig.

Hieronder staat een lijst van de uitgevoerde zoekopdrachten. Per categorie wordt er vermeld welke mogelijke variabelen te gebruiken zijn. Dit zijn de variabelen die in het Processing project gebruikt kunnen worden om de visualisaties te creëren.

<b>Interest over time</b>

Het aantal keer dat er per dag naar de term ‘refugee’ of ‘migrant’ is gezocht.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|iotDay       |ArrayList\<String>|De datum waarop de zoektermen zijn uitgevoerd|
|iotSviMigrant|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘migrant'|
|iotSviRefugee|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘refugee'|

<b>Top regions for migrant</b>

De regio waar het meest naar de term ‘migrant’ is gezocht.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|trfmRegion|ArrayList\<String>|De regio waarin de zoekopdrachten zijn uitgevoerd|
|trfmSviMigrant|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘migrant'|
|trfmSviRefugee|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘refugee'|

<b>Top regions for refugee</b>

De regio waar het meest naar de term ‘refugee’ is gezocht.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|trfrRegion|ArrayList\<String>|De regio waarin de zoekopdrachten zijn uitgevoerd|
|trfrSviMigrant|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘migrant'|
|trfrSviRefugee|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘refugee'|

<b>Top cities for migrant</b>

De stad waar het meest naar de term ‘migrant’ is gezocht.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|tcfmCity|ArrayList\<String>|De stad waarin de zoekopdrachten zijn uitgevoerd|
|tcfmSviMigrant|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘migrant'|

<b>Top cities for refugee</b>

De stad waar het meest naar de term ‘refugee’ is gezocht.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|tcfrCity|ArrayList\<String>|De stad waarin de zoekopdrachten zijn uitgevoerd|
|tcfrSviRefugee|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘refugee'|

<b>Top searches for migrant</b>

De meest voorkomende zoekopdrachten voor ‘migrant’.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|tsfmSearchTerm|ArrayList\<String>|De gebruikte zoektermen|
|tsfmSviMigrant|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘migrant'|

<b>Top searches for refugee</b>

De meest voorkomende zoekopdrachten voor ‘refugee’.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|tsfrSearchTerm|ArrayList\<String>|De gebruikte zoektermen|
|tsfrSviRefugee|ArrayList\<Float>|De Search Value Index van de zoekopdrachten naar ‘refugee'|

<b>Rising searches for migrant</b>

De stijging van de zoekresultaten naar ‘migrant’.
De waarde breakout wil zeggen dat de zoekresultaten met meer dan 5000% gestegen zijn.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|rsfmSearchTerm|ArrayList\<String>|De gebruikte zoekterm|
|rsfmPercentage|ArrayList\<String>|Het stijgingspercentage|

<b>Rising searches for refugee</b>

De stijging van de zoekresultaten naar ‘refugee’.

|Naam Variabele|Type|Omschrijving Variabele|
|:---|:---|:---|
|rsfrSearchTerm|ArrayList\<String>|De gebruikte zoekterm|
|rsfrPercentage|ArrayList\<String>|Het stijgingspercentage|
