 //declare bacteria variables here
 Bacteria [] colony;
 void setup()   
 {    
 	size(800, 800);
 	//initialize bacteria variables here  
 	colony = new Bacteria[8];
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
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 400;
 	}

 	void walk()
 	{
 		if (mouseX > myX)
 		{
 			myX = myX + (int)(Math.random()*4)-3;	
 		}
 		else if(mouseX < myX)
 		{
 			myX = myX + (int)(Math.random()*6)-1;
 		}

 		if (mouseY > myY)
 		{
 			myY = myY + (int)(Math.random()*4)-3;
 		}
 		else if (mouseY < myY)
 		{
 			myY = myY + (int)(Math.random()*6)-1;
 		}
 		
 	}
 	void show()
 	{
 		fill(200, 100, 200);
 		ellipse(myX, myY, 5, 5);
 	}
 }