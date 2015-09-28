ArrayList<String> tcfrCity = new ArrayList<String>();
ArrayList<Float> tcfrSviRefugee = new ArrayList<Float>();

void loadTopCitiesForRefugee(final Table table) {
  int indexTopCitiesForRefugee = table.findRowIndex("Top cities for refugee", 0);
  int currentRow = indexTopCitiesForRefugee + 2;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String city = currentTableRow.getString(0);
    tcfrCity.add(city);
    
    float sviRefugee = new Float(currentTableRow.getString(1));
    tcfrSviRefugee.add(sviRefugee);
    
    //println(city + " " + sviRefugee);
    
    currentRow++;
  }
}