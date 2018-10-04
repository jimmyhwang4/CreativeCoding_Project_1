var circleX = 400;
var circleY = 400;
var circleSize = 0;
var goUp = true;
var circleSize2 = 100;
var goUp2 = true;

function setup() {

	createCanvas(800, 800);
	background(0)

}



function draw() {

	// white box border
	fill(0);
	rect(0,0,800,800);

	noFill();
	stroke(255);
	rect(200,200,400,400);

	// circle in and out

	noFill();
	stroke(255);
	ellipse(circleX,circleY,circleSize + 10,circleSize + 10);
	ellipse(circleX,circleY,circleSize + 10,circleSize);

	if (circleSize == 0) {
		goUp = true;
	} else if (circleSize == 100) {
		goUp = false;
	}

	if (goUp == true) {
		circleSize = circleSize + 10;
	} else if (goUp == false) {
		circleSize = circleSize - 10;
	}

	// circle out and in

	ellipse(circleX,circleY,circleSize2,circleSize2);
	ellipse(circleX,circleY,circleSize2,circleSize2 + 10);

	if (circleSize2 == 0) {
		goUp2 = true;
	} else if (circleSize2 == 100) {
		goUp2 = false;
	}

	if (goUp2 == true) {
		circleSize2 = circleSize2 + 10;
	} else if (goUp2 == false) {
		circleSize2 = circleSize2 - 10;
	}

}