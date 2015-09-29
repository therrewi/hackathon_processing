ArrayList<String> tcfmCity = new ArrayList<String>();
ArrayList<Float> tcfmSviMigrant = new ArrayList<Float>();

void loadTopCitiesForMigrant(final Table table) {
  int indexTopCitiesForMigrant = table.findRowIndex("Top cities for migrant", 0);
  int currentRow = indexTopCitiesForMigrant + 2;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String city = currentTableRow.getString(0);
    tcfmCity.add(city);
    
    float sviMigrant = new Float(currentTableRow.getString(1));
    tcfmSviMigrant.add(sviMigrant);
    
    //println(city + " " + sviMigrant);
    
    currentRow++;
  }
}