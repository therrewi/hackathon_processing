ArrayList<String> tsfrSearchTerm = new ArrayList<String>();
ArrayList<Float> tsfrSviRefugee = new ArrayList<Float>();

void loadTopSearchesForRefugee(final Table table) {
  int indexTopSearchesForRefugee = table.findRowIndex("Top searches for refugee", 0);
  int currentRow = indexTopSearchesForRefugee + 1;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String searchTerm = currentTableRow.getString(0);
    tsfrSearchTerm.add(searchTerm);
    
    float sviRefugee = new Float(currentTableRow.getString(1));
    tsfrSviRefugee.add(sviRefugee);
    
    //println(searchTerm + " " + sviRefugee);
    
    currentRow++;
  }
}