ArrayList<String> rsfrSearchTerm = new ArrayList<String>();
ArrayList<String> rsfrPercentage = new ArrayList<String>();

void loadRisingSearchesForRefugee(final Table table) {
  int indexRisingSearchesForRefugee = table.findRowIndex("Rising searches for refugee", 0);
  int currentRow = indexRisingSearchesForRefugee + 1;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String searchTerm = currentTableRow.getString(0);
    rsfrSearchTerm.add(searchTerm);
    
    String risingPercentageMigrant = currentTableRow.getString(1);
    rsfrPercentage.add(risingPercentageMigrant);
    
    //println(searchTerm + " " + risingPercentageMigrant);
    
    currentRow++;
  }
}