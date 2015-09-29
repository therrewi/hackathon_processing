// Interest over time for gicentre
String[] iotGiDateStringsList;
float[] iotGiDateDataList;
float[] iotGiMigrantDataList;
float[] iotGiRefugeeDataList;

void loadInterestOverTimeGicentre(final Table table) {
  int indexInterestOverTime = table.findRowIndex("Interest over time", 0);
  int currentRow = indexInterestOverTime + 2;
  
  ArrayList<Float> dates = new ArrayList<Float>();
  ArrayList<String> dateStrings = new ArrayList<String>();
  ArrayList<Float> migrantData = new ArrayList<Float>();
  ArrayList<Float> refugeeData = new ArrayList<Float>();
  
  while(true) {
    if (oneOfTheFieldsIsEmpty(table, currentRow)) {
      break;
    }
    
    TableRow currentTableRow = table.getRow(currentRow);
    
    String originalDate = currentTableRow.getString(0);
    
    Float date = new Float(currentRow);
    Float migrantValue = new Float(currentTableRow.getString(1));
    Float refugeeValue = new Float(currentTableRow.getString(2));
    
    dateStrings.add(originalDate);
    dates.add(date);
    migrantData.add(migrantValue);
    refugeeData.add(refugeeValue);
    
    currentRow++;
  }
  
  iotGiDateStringsList = dateStrings.toArray(new String[dateStrings.size()]);
  iotGiDateDataList = convertFloats(dates);
  iotGiMigrantDataList = convertFloats(migrantData);
  iotGiRefugeeDataList = convertFloats(refugeeData);
}

public static float[] convertFloats(final ArrayList<Float> floats) {
  float[] ret = new float[floats.size()];
  for (int i=0; i < ret.length; i++) {
    ret[i] = floats.get(i).floatValue();
  }
  return ret;
}