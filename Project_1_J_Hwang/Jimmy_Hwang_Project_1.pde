// PROJECT 1
// ADJECTIVE: ANXIETY
// JIMMY HWANG

int timeMax1;
int timeCurr1;
int timeMax2;
int timeCurr2;
int i;
int j;
int k;

//
// SETUP
//

void setup() {
  size(400,400);
  background(0);
  noStroke();
  
}

//
// DRAW
//

void draw() {
  
  // FADE BACKGROUND
  fill(0, 20);
  rect(0, 0, width, height);
  
  // MOUSE GREEN POINT
  fill(0, 255, 0, 150);
  ellipse(mouseX, mouseY, 7, 7);
  
  // ANXIETY INTERACTION DEPENDING ON MOUSE LOCATION
  if ( mouseX > 175 && mouseX < 225 && mouseY > 175 && mouseY < 225 ) {
    anxietyBox(1000, 5, 3);
    
  } else if ( mouseX > 150 && mouseX < 250 && mouseY > 150 && mouseY < 250 ) {
    anxietyBox(750, 7, 4);
    
  } else if ( mouseX > 125 && mouseX < 275 && mouseY > 125 && mouseY < 275 ) {
    anxietyBox(500, 10, 6);
    
  } else if ( mouseX >= 100 && mouseX <= 300 && mouseY >= 100 && mouseY <= 300 ) {
    anxietyBox(250, 15, 11);
    
  } else if ( mouseX < 100 || mouseX > 300 || mouseY < 100 || mouseY > 300) {
    
    // CRAZY BACKGROUND
    fill(random(255), random(100), 0, random(255));
    rect(0, 0, width, height);
    
    // WARNINGTRIANGLE REPEAT
    for (int m = 0; m < 400; m = m + 50) {
      for (int n = 0; n < 400; n = n + 50) {
        pushMatrix();
        translate(m, n);
        warningTriangle();
        popMatrix();
      }
    }
        
    // RED WARNING RECTANGLE
    fill(255, 0, 0);
    rect(0, 150, width, 100);
    fill(255, 200);
    rect(0, 160, width, 10);
    rect(0, 230, width, 10);
    
    // WARNINGEXCLAMATION REPEAT
    for (int o = 0; o < 400; o = o + 20) {
      pushMatrix();
      translate(o, 0);
      warningExclamation();
      popMatrix();
    }
  }
      
    
}
  
//
// FUNCTIONS
//
    
// ANXIETYBOX FUNCTION

void anxietyBox(int timeMs, int trailSize, int trailSpeed) {
  
  noStroke();

  // TIME ADJUSTMENT
  timeMax1 = timeMs;
  timeMax2 = timeMs * 2;
  
  // TRAIL & BUBBLEBOX COLOR ADJUSTMENT
  if (timeMs >= 1000) {
    fill(255);
    bubbleBox();
    
    fill(255);
    
  } else if (timeMax1 >= 750 && timeMax1 < 1000) {
    fill(255, 255, 0, 150);
    bubbleBox();
    bubbleBox();
    
    fill(255, 255, 0);
    
  } else if (timeMax1 >= 500 && timeMax1 < 750) {
    fill(255, 165, 0, 150);
    bubbleBox();
    bubbleBox();
    bubbleBox();
    
    fill(255, 165, 0);
    
  } else if (timeMax1 < 500) {
    fill(255, 0, 0, 155);
    bubbleBox();
    bubbleBox();
    bubbleBox();
    bubbleBox();
    
    fill(255, 0, 0);
  }
  
  // X AND Y DIRECTION ALTERNATION
  if ( (millis() - timeCurr1 ) > timeMax1) {
    timeCurr1 = millis();
    i = i + 5;
  }
  
  if ( (millis() - timeCurr2 ) > timeMax2) {
    timeCurr2 = millis();
    i = i + 10;
  }
  
  // TRAIL SIZE AND SPEED ADJUSTMENT
  if (i % 10 == 5) {
    k = 0;
    j = j + trailSpeed;
    ellipse(108 + j, 108, trailSize, trailSize);
    ellipse(292 - j, 292, trailSize, trailSize);
  }
  
  if (i % 10 == 0) {
    j = 0;
    k = k + trailSpeed;
    ellipse(108, 292 - k, trailSize, trailSize);
    ellipse(292, 108 + k, trailSize, trailSize);
    
  }
    
}


// BUBBLEBOX FUNCTION
void bubbleBox() {
  ellipse(random(110, width - 110), random(110, height - 110), 5, 5);
}



// WARNINGTRIANGLE FUNCTION
void warningTriangle() {
    fill(random(255), random(255), 0);
    triangle(0, 50, 50, 50, 25, 0);
    noFill();
    stroke(0);
    triangle(5, 45, 45, 45, 25, 5);
    fill(random(255));
    rect(22, 20, 5, 15);
    ellipse(25, 40, 5, 5);
}

// WARNINGEXCLAMATION FUNCTION
void warningExclamation() {
    fill(random(255));
    rect(5, 175, 10, 35);
    ellipse(10, 220, 10, 10);
}
