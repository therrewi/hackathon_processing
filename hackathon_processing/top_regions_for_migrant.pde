ArrayList<String> trfmRegion = new ArrayList<String>();
ArrayList<Float> trfmSviMigrant = new ArrayList<Float>();
ArrayList<Float> trfmSviRefugee = new ArrayList<Float>();

void loadTopRegionsForMigrant(final Table table) {
  int indexTopRegionsForMigrant = table.findRowIndex("Top regions for migrant", 0);
  int currentRow = indexTopRegionsForMigrant + 2;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String region = currentTableRow.getString(0);
    trfmRegion.add(region);
    
    float sviMigrant = new Float(currentTableRow.getString(1));
    trfmSviMigrant.add(sviMigrant);
    
    float sviRefugee = new Float(currentTableRow.getString(2));
    trfmSviRefugee.add(sviRefugee);
    
    //println(region + " " + sviMigrant + " " + sviRefugee);
    
    currentRow++;
  }
}