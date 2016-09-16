 //declare bacteria variables here
 Bacteria [] colony;
 void setup()   
 {    
 	size(800, 800);
 	//initialize bacteria variables here  
 	colony = new Bacteria[20];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }

 void draw()   
 {    
 	//move and show the bacteria 
 	background(0);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}
 }

class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, myColorRed, myColorGreen, myColorBlue;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 400;
 		myColorRed = (int)(Math.random()* 155) + 100;
 		myColorGreen = (int)(Math.random()* 155) + 100;
 		myColorBlue = (int)(Math.random()* 155) + 100;
 	}

 	void walk()
 	{
 		if (mouseX > myX && mouseX < myX + 250)
 		{
 			myX = myX + (int)(Math.random()*4)-2;	
 		}
 		else if(mouseX < myX && mouseX > myX - 250)
 		{
 			myX = myX + (int)(Math.random()*4)-1;
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*5)-2;	
 		}
 		 
 		if (mouseY > myY && mouseY < myY + 250)
 		{
 			myY = myY + (int)(Math.random()*4)-2;
 		}
 		else if (mouseY < myY && mouseY > myY - 250)
 		{
 			myY = myY + (int)(Math.random()*4)-1;
 		}
 		else 
 		{
 			myY = myY + (int)(Math.random()*5)-2;
 		}
 		
 	}
 	void show()
 	{
 		fill(myColorRed, myColorGreen, myColorBlue);
 		ellipse(myX, myY, 5, 5);
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
 }