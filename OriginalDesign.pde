int xShift = 100;
int yShift = 0;
int currentStroke = 0;

void setup()
{
	size(800,400);
	background(255);
}
void draw()
{
	background(255, 255, 255);
	instructions();
	dian();
	nao();  
}
void instructions()
{
	if (currentStroke == 0) {
		fill(0, 0, 0);
		text("Click to see stroke order!", 325, 300);
	}
}
void dian()
{
	fill(255, 255, 255);
	strokeWeight(4);
	if (currentStroke > 0) {
		line(100 + xShift, 100 + yShift, 100 + xShift, 200 + yShift);
	};
	if (currentStroke > 1) {
		line(100 + xShift, 100 + yShift, 200 + xShift, 100 + yShift);
		line(200 + xShift, 100 + yShift, 200 + xShift, 200 + yShift);
	}
	if (currentStroke > 2) { 
		line(100 + xShift, 150 + yShift, 200 + xShift, 150 + yShift);
	}
	if (currentStroke > 3)  {
		line(100 + xShift, 200 + yShift, 200 + xShift, 200 + yShift);
	}
	if (currentStroke > 4) {
		line(150 + xShift, 80 + yShift, 150 + xShift, 260 + yShift);
		arc(160 + xShift, 260 + yShift, 20, 20, PI/2, PI);
		line(160 + xShift, 270 + yShift, 200 + xShift, 270 + yShift);
		arc(200 + xShift, 260 + yShift, 20, 20, 0, PI/2);
	}
}
void nao()
{
	if (currentStroke >5) {
		bezier(450, 100, 435, 270, 435, 270, 425, 275);
	}
	if (currentStroke > 6) {
		line(450, 100, 500, 100);
		line(500, 100, 500, 275);
		line(500, 275, 490, 265);
	}
	if (currentStroke > 7) {
		line(455, 150, 500, 150);
	}
	if (currentStroke > 8) {
		line(450, 200, 500, 200);
	}
	if (currentStroke > 9) {
		//dot at top
		line(560, 115, 575, 125);
	}
	if (currentStroke > 10) {
		//horizontal over x
		line(530, 140, 615, 140);
	}
	if (currentStroke > 11) {
		//x pt 1
		line(545, 215, 595, 170);
	}
	if (currentStroke > 12) {
		//x pt.2
		line(545, 170, 595, 215);
	}
	if (currentStroke > 13) {
	//the box pt 1
	line(535, 160, 535, 230);
	line(535, 230, 610, 230);
	}
	if (currentStroke > 14) {
	//box pt. 2
	line(610, 160, 610, 235);
	}

	//System.out.println(Math.random()*5);
	//System.out.println((int)(Math.random()*5));
	//System.out.println((int)(Math.random()*5 -3));
}
void mousePressed() 
{
	currentStroke ++;
	if (currentStroke == 16) {
		currentStroke = 0;
	}
}

