// For chart classes
import org.gicentre.utils.stat.*;

// Displays a simple line chart representing a time series
XYChart lineChart;

PFont font;

// Loads data into the chart and customises its appearance
void setup() {
  // Load the data sets into the lists
  loadData();
  
  size(700,700);
  
  font = createFont("Arial",16,true);
  
  //loadLineChart();
}

// Draws the chart and a title
void draw() {
  drawCircles(trfrRegion, trfrSviRefugee);
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