// Booleans for Stopping / Finishing the game.
boolean stops = false;
boolean finished = false;

// Integer values for W,A,S,D.
int w = 100;
int a = 100;
int s = 100;
int d = 100;

// Integer values for the Rain going down.
int down = 10;
float down3 = 10;
float down2 = 10;

// Integer values for the stoplight colors.
int Red = 0;
int Yellow = 0;
int Green = 0;

// Integer name for the timer.
int timer1;

// Integer value for fading the text of Timer1.
int fade = 1;

// Integer Values for CarX position, and CarY position.
int CarX = 25;
int CarY = 775;

// Image names for images.
PImage Car2;
PImage Cloud;
PImage Rain;
PImage Smiley;


// Import name and code for sound player.
import ddf.minim.*;
Minim minim;
AudioPlayer player;


void setup()
{
  // Size of Screen.
  size(1000,1000);
  // Images loaded in to code.
  Car2 = loadImage("Car1.png");
  Cloud = loadImage("cloud1.png");
  Rain = loadImage("rains.png");
  Smiley = loadImage("smiley.png");
  // Timer1 depending on which number counter to use in this case seconds.
  timer1 = second();
  // Player for music.
   minim = new Minim(this);
  player = minim.loadFile("music.mp3");
}
void draw()
{ 
  // Background color of the screen.
  background(0,50,0);
  // Fill color for the roads.
  fill(100);
  // Strokeweight of the roads.
  strokeWeight(0);
  // Rects making the roads.
  rect(145,600,200,800);
  rect(545,145,1000,200);
  image(Car2,CarX,CarY,250,250);
  // Rect aligned to Center.
  rectMode(CENTER);
  // Fill color of rect to dark grey.
  fill(50);
  // Strokeweight of rects.
  strokeWeight(0);
  // Rects making a stoplight.
  rect(350,600,100,35);
  rect(350,500,25,200);
  rect(350,400,50,150);
  // Strokeweight of text.
  strokeWeight(0);
  // Text size for Text.
  textSize(30);
  // Fill color for Red light.
  fill(255,0,0);
  // Text for Red light.
  text("Click 3 times for Red!",500,500);
  // Text color for Yellow light.
  fill(255,255,0);
  // Text for Yellow Light.
  text("Click 6 times for Yellow!",500,550);
  // Text color for Green light.
  fill(0,255,0);
  // Text for Green light.
  text("Click 9 times for Green!",500,600);
  // Fill color for Timer text and fade for Timer text. (Made so if you click on the text it will turn on the timer).
  fill(255,fade);
  // Text size for timer is 50.
  textSize(50);
  // Code to make the timer work, when the text is clicked.
  int timer = second()-timer1;
  // Text for timer numbers.
  text(timer,width/2,750);
  // Text size for timer instructions.
  textSize(30);
  // Fill color for timer instructions.
  fill(255);
  // Text for timer instructions.
  text("Click once to start the TIMER!",width/3,650);
  // Rain images.
  image(Rain,150,down,250,250);
  image(Rain,500,down2,250,250);
  image(Rain,700,down3,250,250);
  image(Rain,600,down,250,250);
  image(Rain,999,down2,250,250);
  image(Rain,0,down3,250,250);
  image(Rain,350,down,250,250);
  image(Rain,550,down2,250,250);
  image(Rain,750,down3,250,250);
  image(Rain,650,down,250,250);
  image(Rain,950,down2,250,250);
  image(Rain,50,down3,250,250);
  // Cloud images.
  image(Cloud,-300,-300,500,500);
  image(Cloud,50,-450,500,500);
  image(Cloud,150,-450,500,500);
  image(Cloud,250,-450,500,500);
  image(Cloud,350,-450,500,500);
  image(Cloud,450,-450,500,500);
  image(Cloud,550,-450,500,500);
  image(Cloud,650,-450,500,500);
  image(Cloud,900,-300,500,500);
  // If statement for the Reset button showing up.
  if(CarX >= 900)
  {
    // Bakcground that shows up when you reach 900 x.
    background(0);
    // When you reach 900 x the music will play.
    player.play();
    // Smiley face image when you reach 900 x.
    image(Smiley,367,250,200,200);
    // Text size for the winning message.
    textSize(50);
    // Winning message text.
    text("You BEAT the TRACK!",455,200);
    // Aligns rect to "Center".
    rectMode(CENTER); 
    // Rect for reset button.
    rect(450, 500, 300, 100); 
    // Fill color for text in reset button.
    fill(0); 
    // Aligns text to center.
    textAlign(CENTER);
    // Text size set to 50.
    textSize(50);
    // Text for RESET button.
    text("RESET", 455, 515);
  }
// Makes it so when the game opens, the rain falls with the speed put into the values.
  down += 1;
  down3 += 1.5;
  down2 += 1.7;
  // If statement for Red stoplight.
  if (Red == 3)
  {
    // If you click 3 times stop light turns red.
    fill(255,0,0);
  }
  // This means if you dont click 3 times or over click the stoplight it turns black.
  else
  {
    // Fill color for else statement.
    fill(0);
    
  }
  // Ellipse for Red light.
  ellipse(350, 350, 25, 25);
  
    // If statement if you click 6 times stoplight turns yellow.
    if (Yellow == 6)
  {
     // Fills Yellow for stoplight when you click 6 times.
     fill(255,255,0);
  }
   // This means if you dont click 6 times or over click the stoplight it turns black.
   else
  {
    // Fill color for else statement.
    fill(0);
      
  }
  // Ellpise for the Green stoplight.
  ellipse(350, 400, 25, 25);
    // If you click 9 times the light will turn green.
    if (Green == 9)
  {
    
    // Fill color for else statement.
    fill(0,255,0);
  }
  // This means if you don't click 9 times or over click the stoplight it turns black.
   else
  {
    // Fill color for else statement.
    fill(0);

      
  }
  // Ellipse for Green stoplight.
  ellipse(350,450,25,25);
{}
// This is all the code for the rain when it reaches a certain Y all the rain will reset to its starting point.
if(down >= 900)
{
  down=0;
}
{}
if(down2 >= 900)
{
  down2=0;
}
{}
if(down3 >= 900)
{
  down3=0;
}
}
void mouseClicked()
  {
  // This is so it counts the clicks and changes the color of stoplight on a certain click, this code is per click.
  Red += 1;
  Yellow += 1;
  Green += 1;
  fade += 1000;
       // This is the size of what you can click to reset the button.
  {    if (mouseX > 300 && mouseX < 600 && mouseY > 450 && mouseY < 500)
    {
      // Resets all the variables you coded when you click the reset button.
      CarX = 100; 
      CarY =  100;
      stops = false;
      finished = false;
      w = 100;
      a = 100;
      s = 100;
      d = 100;
      down = 10;
      down3 = 10;
      down2 = 10;
      Red = 0;
      Yellow = 0;
      Green = 0;
      fade = 1;
      CarX = 25;
      CarY = 775;
    }
  }
}

void keyPressed()
{
  // If you click 'w' the car will move 10y up making it so the 'w' key works.
  if(key == 'w')
  {
    CarY = CarY-10;
  }
  // If you click 'd' the car will move 10y up making it so the 'd' key works.
  if(key == 'd')
  {
    CarX = CarX+10;
  }
  // If you click 's' the car will move 10y up making it so the 's' key works.
  if(key == 's')
  {
    CarY = CarY+10;
  }
  // If you click 'a' the car will move 10y up making it so the 'a' key works.
  if(key == 'a')
  {
    CarX = CarX-10;
  }
}

/**
1)  My four (or more) text, images, and/or shapes are:
    
    Rain Images, Cloud Images, Car Image, Road Rects, Stoplight Rects/Ellipses, Click/Timer Instructions, End Text.
    
2)  My one (or more) self-taught animation is/are (PLEASE INCLUDE LINKS):

    My one self taught thing was making sound which plays when you reach 900 x. It plays "All I do Is Win" - DJ Khaled (REMIX).
    Link: http://www.cs.sfu.ca/CourseCentral/166/tjd/processing_sound.html
    
3)  My four (or more) animations that were not learned from online tutorials are:
  
    The car moving with Keys, The rain raining and reseting when reachs a certain x, the Stoplight switching colors on click, and the Reset button at the end.

4)  When you press the W,A,S,D key, this happens:

    When you click one of these four keys you have full control of the vehicle, making it so you can "drive". 
    W = Forward
    A = Left
    S = Backwards
    D = Right

5)  When you click the Stoplight/Reset Button/Timer Starter, this happens:

    When you click the stoplight a certain ammount of times it will switch colors, making it a "working" stoplight on click.
    
    Red = 3 Clicks.
    Yellow = 6 Clicks.
    Green = 9 Clicks.
    
    When you reach 900 x you will be set to a black screen with a "Reset" button. When you click the "Reset" button you will reset to the begin so you can restart the game.
    
    When you click on the screen at the begining the timer will start counting in seconds, and when you reach 900 x it would stop, and takes you to the reset screen
*/
