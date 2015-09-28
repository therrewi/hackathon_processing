private static final String EMPTY_STRING = "";
private static final String SPACE = " ";

void loadData() {
  Table tableOfCsvReport = loadTable("report.csv", "header");
  println(tableOfCsvReport.getRowCount() + " total rows in table"); 
  
  loadInterestOverTime(tableOfCsvReport);
  loadInterestOverTimeGicentre(tableOfCsvReport);
  
  loadTopRegionsForMigrant(tableOfCsvReport);
  loadTopRegionsForRefugee(tableOfCsvReport);
  
  loadTopCitiesForMigrant(tableOfCsvReport);
  loadTopCitiesForRefugee(tableOfCsvReport);
  
  loadTopSearchesForMigrant(tableOfCsvReport);
  loadTopSearchesForRefugee(tableOfCsvReport);
  
  loadRisingSearchesForMigrant(tableOfCsvReport);
  loadRisingSearchesForRefugee(tableOfCsvReport);
}

boolean oneOfTheFieldsIsEmpty(final Table table, final int row) {
  return EMPTY_STRING.equals(table.getRow(row).getString(0))
      || SPACE.equals(table.getRow(row).getString(1))
      || SPACE.equals(table.getRow(row).getString(2));
}