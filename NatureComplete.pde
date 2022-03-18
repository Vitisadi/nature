  import java.util.*;
  
  int cloudX = -100;
  int cloudX2 = -1500;
  
  List<Integer> grassYPosition = new ArrayList();
  List<Integer> grassXPosition = new ArrayList();
  List<Integer> grassStroke = new ArrayList();
  List<Integer> grassRotate = new ArrayList();
  
void setup(){
  size(1800, 1600);
  int x = 5;
  while( x < 1800 ) {
    grassYPosition.add(int(random(1450,1525)));
    grassXPosition.add(x);
    grassStroke.add(int(random(100, 150)));
    grassRotate.add(int(random(-10, 10)));
    x += 5;
  }
}

void drawApple(int appleX, int appleY) {
  fill(33, 108, 33);
  ellipse(appleX - 5, appleY + 65, 15, 5); //leaf
  fill(95, 82, 30);
  rect(appleX - 15, appleY + 60, 10, 25); //stem
  fill(255, 0, 0);
  ellipse(appleX, appleY + 100, 50, 50); //apple
}

  void drawPig(int pigX, int pigY)  {
  //pig
  fill(216, 92, 190);
  rect(pigX + 150, pigY + 500, 50, 150); //leg #1
  rect(pigX + 10, pigY + 500, 50, 150); //leg #2
  fill(234, 107, 207);
  ellipse(pigX + 100, pigY + 450, 300, 200); //body
  ellipse(pigX - 20, pigY + 350, 200, 200); //head
  fill(20);
  ellipse(pigX - 70, pigY + 320, 20, 20);
  ellipse(pigX + 20, pigY + 320, 20, 20); //eyes
  strokeWeight(3);
  stroke(0);
  fill(234, 107, 207);
  ellipse(pigX -30, pigY + 360, 75, 50); //nose
  fill(20);
  strokeWeight(1);
  ellipse(pigX - 20, pigY + 360, 5, 10);
  ellipse(pigX - 45, pigY + 360, 5, 10);
  fill(216, 92, 190);
  triangle(pigX-125, pigY+350, pigX-75, pigY+270, pigX-150, pigY+300); //ears
  triangle(pigX+60, pigY+350, pigX + 35, pigY+270, pigX+85, pigY+300);
  noStroke();
  ellipse(pigX+260,pigY+450,40,40); //tail
  ellipse(pigX+280,pigY+430,40,40);
  ellipse(pigX+290,pigY+420,40,40);
  ellipse(pigX+300,pigY+410,40,40);
  ellipse(pigX+320,pigY+400,40,40);
  }

  
void draw(){
  background(47,223,245);

  drawPig(700, 950);
  drawPig(1300, 950);
  
  //tree
  fill(100, 59, 0);
  rect(300, 1100, 100, 500);
  //tree leaves
  fill(91, 215, 91);
  noStroke();
  ellipse(300, 1100, 150, 150);
  ellipse(400, 1100, 150, 150);
  ellipse(450, 1050, 150, 150);
  ellipse(400, 1075, 200, 200);
  ellipse(350, 1000, 200, 200);
  ellipse(250, 1050, 150, 150);
  
  //apple#1
  drawApple(300, 1000);
  //apple #2
  drawApple(400, 975);
  //apple #3
  drawApple(350, 900);
 
  //grass
  strokeWeight(5);
  for(int i = 0; i < grassXPosition.size(); i++) {
    grassRotate.set(i, grassRotate.get(i) + int(random(-2, 2)));
    
    int xPos = grassXPosition.get(i);
    int yPos = grassYPosition.get(i);
    int strokeVal = grassStroke.get(i); //choses color of grass
    int rotateVal = grassRotate.get(i); //randomizes slope of grass
    stroke(87, strokeVal + 40, strokeVal); //color of grass
    line(xPos, 1600, xPos - rotateVal, yPos); //draws grass
  }
  //sun
  noStroke();
  fill(255, 255, 0);
  ellipse(175, 175, 150, 150);
  //sunray 1
  stroke(255, 255, 0);
  strokeWeight(5);
  line(50, 175, 300, 175);
  //sunray 2
  line(175, 50, 175, 300);
  //sunray 3
  line(80, 80, 270, 270);
  //sunray 4
  line(80, 270, 270, 80);
  
  //cloud #1
  fill(235);
  noStroke();
  ellipse(cloudX, 350, 150, 150);
  ellipse(cloudX + 100, 300, 200, 200);
  ellipse(cloudX + 200, 300, 100, 100);
  ellipse(cloudX + 250, 362, 125, 125);
  rect(cloudX - 25, 350, 325, 75, 100);
  //cloud #2
  ellipse(cloudX + 700, 550, 150, 150);
  ellipse(cloudX + 800, 500, 200, 200);
  ellipse(cloudX + 900, 500, 100, 100);
  ellipse(cloudX + 950, 562, 125, 125);
  rect(cloudX + 675, 550, 325, 75, 100);
  //cloud #3
  fill(235);
  noStroke();
  ellipse(cloudX2, 250, 150, 150);
  ellipse(cloudX2 + 100, 200, 200, 200);
  ellipse(cloudX2 + 200, 200, 100, 100);
  ellipse(cloudX2 + 250, 262, 125, 125);
  rect(cloudX2 - 25, 250, 325, 75, 100);
  //cloud #4
  ellipse(cloudX2 + 700, 450, 150, 150);
  ellipse(cloudX2 + 800, 400, 200, 200);
  ellipse(cloudX2 + 900, 400, 100, 100);
  ellipse(cloudX2 + 950, 462, 125, 125);
  rect(cloudX2 + 675, 450, 325, 75, 100);
  cloudX = cloudX + 1;
  cloudX2 = cloudX2 + 1;
  
  if (cloudX > 2000) {
    cloudX = -1000;
  }
  
  if (cloudX2 > 2000) {
    cloudX2 = -1000;
  }  
}
