int circleX;
int circleY;
boolean schalter = true;

int diameter = 10;
int diff = 1;

void setup(){
  
  size(1000,1000);
  
  
  circleX = width / 2;
  circleY = height / 2;
}

void draw(){
  
  if (diff < 1000 && schalter == true){  
    
    background(0);
    drawCircles(circleX - width / 4,circleY,diameter,diff); 
    drawCircles(circleX + width / 4,circleY,diameter,diff);
    diff++;
    if(diff == 1000) schalter = false;
    
    
  }
  
  if (schalter == false){  
    
    background(0);
    drawCircles(circleX - width / 4,circleY,diameter,diff); 
    drawCircles(circleX + width / 4,circleY,diameter,diff);
    diff--;
    if(diff == 1) schalter = true;
    
  }
  
  
  //ellipse(width / 2,height / 2,80,80);
  
}


void drawCircles(int posX, int posY, int diam, int differ){
  
  if(diam < 1500){

    stroke(255);
    strokeWeight(1);
    noFill();
    ellipse(posX,posY,diam,diam);
    
    diam += differ;
    drawCircles(posX,posY,diam,diff);
    
    println(schalter);
 
  }
}