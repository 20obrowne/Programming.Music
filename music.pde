// Program developed by Oisin Browne and Scott Burton

void setup()
{
  size(500, 500);
  textSize(32);
}

boolean bpmPrompt = true;
boolean dance = false;
boolean timerCheck = false;
float timer = 0;
float timerStart = 0;
int bpm = 0;
int poseOrder = 0;
boolean click = true;

void draw()
{
  colorMode(HSB);
  background(0);
  color(255);
  if (dance == false)
  {
    menu();
  }
  
  else
  {
    dance();
  }
}

void menu()
{
  if (bpmPrompt == true && dance == false)
  {
    text ("Please enter the BPM of", 60, 130);
    text ("your song", 170, 160);
    text (bpm, 215, 300);
    text ("Press Space to begin", 100, 400);

    triangle(300, 270, 300, 310, 330, 290); // +5BPM

    triangle(360, 270, 360, 310, 390, 290); // +10BPM
    triangle(390, 270, 390, 310, 420, 290);

    triangle(190, 270, 190, 310, 160, 290); // -5BPM

    triangle(130, 270, 130, 310, 100, 290); // -10BPM
    triangle(100, 270, 100, 310, 70, 290); 

    if (mousePressed)
    {
      if (click == true)
      {

        if (300 < mouseX && mouseX < 330 && 270 < mouseY && mouseY < 310)
        {
          bpm += 5;
          click = false;
        }

        if (360 < mouseX && mouseX < 420 && 270 < mouseY && mouseY < 310)
        {
          bpm += 10;
          click = false;
        }

        if (160 < mouseX && mouseX < 190 && 270 < mouseY && mouseY < 310)
        {
          bpm -= 5;
          click = false;
        }

        if (70 < mouseX && mouseX < 130 && 270 < mouseY && mouseY < 310)
        {
          bpm -= 10;
          click = false;
        }
      }
    } else
    {
      click = true;
    }
  }

  if (keyPressed == true && key == ' ')
  {
    dance = true;
    bpmPrompt = false;
    timerCheck = true;
  }
}

void dance()
{  
  
  float interval = 60/bpm;
  
  if (timerCheck == true)
  {
    timerStart = millis()/1000;
    timerCheck = false;
  }
  
  timer = ((millis()/1000) - timerStart);
  
  if (timer > interval)
  {
    poseOrder++;
    timerCheck = true;
  }
  
  switch(poseOrder)
  {
    case (0):
    botLeft();
    break;
    
    case (1):
    topRight();
    break;
    
    case (2):
    botRight();
    break;
    
    case (3):
    topLeft();
    break;
    
    case (4):
    poseOrder = 0;
    break;
  }
}

void topLeft()
{
  colorMode(HSB);
  rectMode(CENTER);
  background(0);
  color(255);
  fill(255);
  noStroke();

  ellipse(250, 175, 100, 100); //head

  rect(250, 280, 20, 120); //body
  pushMatrix();

  translate(233, 375); //left leg
  rotate(degrees(30));
  rect(0, 0, 20, 100); 
  popMatrix();
  pushMatrix();

  translate(281, 375); //right leg
  rotate(degrees(180));
  rect(0, 0, 20, 100); 
  popMatrix();
  pushMatrix();

  translate(280, 260); //bent arm upper
  rotate(degrees(45));
  rect(0, 0, 15, 60); 
  popMatrix();
  pushMatrix();

  translate(290, 285); //bent arm lower
  rotate(degrees(5));
  rect(0, 0, 15, 25); 
  popMatrix();
  pushMatrix();

  translate(210, 230); //pointing arm
  rotate(degrees(150));
  rect(0, 0, 15, 90); 
  popMatrix();
}

void topRight()
{
  colorMode(HSB);
  rectMode(CENTER);
  background(0);
  color(255);
  fill(255);
  noStroke();

  ellipse(250, 175, 100, 100); //head

  rect(250, 280, 20, 120); //body
  pushMatrix();

  translate(233, 375); //left leg
  rotate(degrees(30));
  rect(0, 0, 20, 100);
  popMatrix();
  pushMatrix();

  translate(281, 375); //right leg
  rotate(degrees(180));
  rect(0, 0, 20, 100);
  popMatrix();
  pushMatrix();

  translate(220, 250); //bent arm upper
  rotate(degrees(10));
  rect(0, 0, 15, 60);
  popMatrix();
  pushMatrix();

  translate(210, 273); //bent arm lower
  rotate(degrees(100));
  rect(0, 0, 15, 45);
  popMatrix();
  pushMatrix();

  translate(290, 230); //pointing arm
  rotate(degrees(300));
  rect(0, 0, 15, 85);
  popMatrix();
}

void botLeft()
{
  colorMode(HSB);
  rectMode(CENTER);
  background(0);
  color(255);
  fill(255);
  noStroke();

  ellipse(250, 175, 100, 100); //head

  rect(250, 280, 20, 120); //body
  pushMatrix();

  translate(233, 375); //left leg
  rotate(degrees(30));
  rect(0, 0, 20, 100);
  popMatrix();
  pushMatrix();

  translate(281, 375); //right leg
  rotate(degrees(180));
  rect(0, 0, 20, 100);
  popMatrix();
  pushMatrix();

  translate(220, 250); //bent arm upper
  rotate(degrees(10));
  rect(0, 0, 15, 60);
  popMatrix();
  pushMatrix();

  translate(210, 273); //bent arm lower
  rotate(degrees(100));
  rect(0, 0, 15, 45);
  popMatrix();
  pushMatrix();

  translate(220, 305); //pointing arm
  rotate(degrees(10));
  rect(0, 0, 15, 85);
  popMatrix();
}

void botRight()
{
  colorMode(HSB);
  rectMode(CENTER);
  background(0);
  color(255);
  fill(255);
  noStroke();

  ellipse(250, 175, 100, 100); //head

  rect(250, 280, 20, 120); //body
  pushMatrix();

  translate(233, 375); //left leg
  rotate(degrees(30));
  rect(0, 0, 20, 100); 
  popMatrix();
  pushMatrix();

  translate(281, 375); //right leg
  rotate(degrees(180));
  rect(0, 0, 20, 100); 
  popMatrix();
  pushMatrix();

  translate(280, 260); //bent arm upper
  rotate(degrees(45));
  rect(0, 0, 15, 60); 
  popMatrix();
  pushMatrix();

  translate(290, 285); //bent arm lower
  rotate(degrees(5));
  rect(0, 0, 15, 25); 
  popMatrix();
  pushMatrix();

  translate(274, 310); //pointing arm
  rotate(degrees(100));
  rect(0, 0, 15, 90); 
  popMatrix();
}
