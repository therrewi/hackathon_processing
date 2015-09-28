ArrayList<String> tsfmSearchTerm = new ArrayList<String>();
ArrayList<Float> tsfmSviMigrant = new ArrayList<Float>();

void loadTopSearchesForMigrant(final Table table) {
  int indexTopSearchesForMigrant = table.findRowIndex("Top searches for migrant", 0);
  int currentRow = indexTopSearchesForMigrant + 1;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String searchTerm = currentTableRow.getString(0);
    tsfmSearchTerm.add(searchTerm);
    
    float sviMigrant = new Float(currentTableRow.getString(1));
    tsfmSviMigrant.add(sviMigrant);
    
    //println(searchTerm + " " + sviMigrant);
    
    currentRow++;
  }
}