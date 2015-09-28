// Interest over time
ArrayList<String> iotDay = new ArrayList<String>();
ArrayList<Float> iotSviMigrant = new ArrayList<Float>();
ArrayList<Float> iotSviRefugee = new ArrayList<Float>();

void loadInterestOverTime(final Table table) {
  int indexInterestOverTime = table.findRowIndex("Interest over time", 0);
  int currentRow = indexInterestOverTime + 2;
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String day = currentTableRow.getString(0);
    iotDay.add(day);
    
    Float sviMigrant = new Float(currentTableRow.getString(1));
    iotSviMigrant.add(sviMigrant);
    
    Float sviRefugee = new Float(currentTableRow.getString(2));
    iotSviRefugee.add(sviRefugee);
    
    //println(day + " " + sviMigrant + " " + sviRefugee);
    
    currentRow++;
  }
}