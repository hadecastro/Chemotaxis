 //declare bacteria variables here
 Bacteria bob; 
 void setup()   
 {    
 	size(800, 800);
 	//initialize bacteria variables here  
 	bob = new Bacteria();
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	
 	bob.walk();
 	bob.show();
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
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		noStroke();
 		fill(200, 100, 200);
 		ellipse(myX, myY, 5, 5);
 	}
 }    