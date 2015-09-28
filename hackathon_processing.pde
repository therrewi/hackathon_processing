// For chart classes
import org.gicentre.utils.stat.*;

// Displays a simple line chart representing a time series
XYChart lineChart;

PFont font;

// Loads data into the chart and customises its appearance
void setup() {
  // Load the data sets into the lists
  loadData();
  
  //size(1000,400);
  size(700,700);
  
  font = createFont("Arial",16,true);
  
  //loadLineChart();
  
  loadMyImplementation();
}

// Draws the chart and a title
void draw() {
  //drawLineChart();
  
  //drawCircles(trfrRegion, trfrSviRefugee);
  
  drwaMyImplementation();
}


void loadMyImplementation() {
  
}

void drwaMyImplementation() {
  
}


void drawCircles(final ArrayList<String> descriptions, final ArrayList<Float> values) {
  float cx = width/2;
  float cy = height/2;
  
  int nbr_circles = values.size();
  
  float lg_diam =  width * 0.7;                 // large circle's diameter
  float lg_rad  = lg_diam/2;                    // large circle's radius
  float lg_circ =  PI * lg_diam;                // large circumference
  float sm_diam = (lg_circ / nbr_circles);      // small circle's diameter
  
  //clear();
  background(255, 255, 204);
  
  for (int i = 1; i <= nbr_circles; ++i) {
    float angle = i * TWO_PI / nbr_circles;
    float x = cx + cos(angle) * lg_rad;
    float y = cy + sin(angle) * lg_rad;
    
    float circleRatio = (values.get(i - 1) / 100);
    float circleDiameterBase = sm_diam;
    float circleDiameter = circleRatio * circleDiameterBase;
    
    fill(170, 150, 200);
    stroke(187, 135, 204);
    circle(x, y, circleDiameter);
    
    textFont(font,16);
    fill(0);
    textAlign(CENTER);
    float textYPosition = y + circleDiameter / 2;
    text(descriptions.get(i - 1), x, textYPosition + 20);
  }
  
  textAlign(LEFT);
  text("Search Value Indices top regions for refugee", 0, 15);
  
  delay(500);
}

void circle(float x, float y, float size) {
  ellipse(x,y,size, size);
}


void loadLineChart() {
  textFont(createFont("Arial",10),10);
 
  // Both x and y data set here
  lineChart = new XYChart(this);
  lineChart.setData(
    iotGiDateDataList,
    iotGiRefugeeDataList
  );
  
  // Axis formatting and labels
  lineChart.showXAxis(true); 
  lineChart.showYAxis(true); 
  lineChart.setMinY(0);
  lineChart.setMinX(iotGiDateDataList[0]);
  
  lineChart.showXAxis(false);
  
  // Symbol colours
  lineChart.setPointColour(color(180,50,50,100));
  lineChart.setPointSize(5);
  lineChart.setLineWidth(2);
}

void drawLineChart() {
  background(255);
  textSize(9);
  lineChart.draw(15,15,width-30,height-30);
   
  // Draw a title over the top of the chart
  fill(120);
  textSize(20);
  text("Web Search interest: migrant; refugee", 70,30);
  textSize(11);
  text("Worldwide; Past 30 days", 70, 45);
}