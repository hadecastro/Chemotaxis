 //declare bacteria variables here
 Bacteria [] colony;
 void setup()   
 {    
 	size(800, 800);
 	background(0);
 	//initialize bacteria variables here  
 	colony = new Bacteria[200];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }

 void draw()   
 {    
 	//move and show the bacteria 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}
 }

 void mousePressed()
 {
 	background(0);
 	 for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].middle();
 	}
 }

class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 400;
 		myColor = color((int)(Math.random()* 155) + 100, (int)(Math.random()* 155) + 100, (int)(Math.random()* 155) + 100);
 		
 	}

 	void walk()
 	{
 		if (mouseX > myX && mouseX < myX + 50 && mouseY < myY + 50 && mouseY > myY - 50)
 		{
 			myX = myX + (int)(Math.random()*4)-3;	
 		}
 		else if(mouseX < myX &&  mouseX > myX - 50 && mouseY < myY + 50 && mouseY > myY - 50)
 		{
 			myX = myX + (int)(Math.random()*5)-1;
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*7)-3;	
 		}
 		 
 		if (mouseY > myY && mouseX < myX + 50 &&  mouseX > myX - 50 &&  mouseY < myY + 50)
 		{
 			myY = myY + (int)(Math.random()*4)-3;
 		}
 		else if (mouseY < myY && mouseX > myX - 50 && mouseX < myX + 50 && mouseY > myY - 50)
 		{
 			myY = myY + (int)(Math.random()*5)-1;
 		}
 		else 
 		{
 			myY = myY + (int)(Math.random()*7)-3;
 		}
 		
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 2, 2);
 		if (myX > 810)
 		{
 			myX = -3;
 		}
 		else if(myX < -10)
 		{
 			myX = 805;
 		}
 		if (myY > 810)
 		{
 			myY = -3;
 		}
 		else if(myY < -10)
 		{
 			myY = 805;
 		}
 	}
 	void middle()
 	{
 		myX = 400;
 		myY = 400;
 	}
 }