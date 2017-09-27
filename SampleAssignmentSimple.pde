//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawOutlineOfLights();
  lights();
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
}
void lights(){
 
  if (millis() >= 2000){
    fill(255,0,0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
  }else if (millis() >= 1000 && millis() < 2000){
    fill(255,255,0);
    ellipse(width/2, height/2, 50, 50); //middle
  }else if (millis() >= 0 && millis() < 1000){
    fill(0,255,0);
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
  } 
}
