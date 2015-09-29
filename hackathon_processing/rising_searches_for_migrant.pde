ArrayList<String> rsfmSearchTerm = new ArrayList<String>();
ArrayList<String> rsfmPercentage = new ArrayList<String>();

void loadRisingSearchesForMigrant(final Table table) {
  int indexRisingSearchesForMigrant = table.findRowIndex("Rising searches for migrant", 0);
  int currentRow = indexRisingSearchesForMigrant + 1;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String searchTerm = currentTableRow.getString(0);
    rsfmSearchTerm.add(searchTerm);
    
    String risingPercentageMigrant = currentTableRow.getString(1);
    rsfmPercentage.add(risingPercentageMigrant);
    
    //println(searchTerm + " " + risingPercentageMigrant);
    
    currentRow++;
  }
}