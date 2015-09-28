ArrayList<String> trfrRegion = new ArrayList<String>();
ArrayList<Float> trfrSviMigrant = new ArrayList<Float>();
ArrayList<Float> trfrSviRefugee = new ArrayList<Float>();

void loadTopRegionsForRefugee(final Table table) {
  int indexTopRegionsForRefugee = table.findRowIndex("Top regions for refugee", 0);
  int currentRow = indexTopRegionsForRefugee + 2;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String region = currentTableRow.getString(0);
    trfrRegion.add(region);
    
    float sviMigrant = new Float(currentTableRow.getString(1));
    trfrSviMigrant.add(sviMigrant);
    
    float sviRefugee = new Float(currentTableRow.getString(2));
    trfrSviRefugee.add(sviRefugee);
    
    //println(region + " " + sviMigrant + " " + sviRefugee);
    
    currentRow++;
  }
}