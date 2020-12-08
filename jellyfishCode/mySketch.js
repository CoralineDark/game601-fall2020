let jellyfish = []; 
let bubbles = []; 
let numExports = 0;

function setup() {
	myCanvas = createCanvas(windowWidth, windowHeight);
	colorMode(HSB,255);
		background(145,256,256);
	for (i = 0; i < 100; i++) { 
		posX = random(width); 
		posY = random(2*height, height+100); 
		diameterX = random(100); 
		diameterY = diameterX - diameterX*.1; 
		c = random(255);
		jellyfish[i] = new JellyFish(posX, posY, diameterX, diameterY, c); 
	}
	for (i = 0; i < 1000; i++) {
		bubbles[i] = new Bubble(random(width), random(height+(height/2),height+100), (i%100));
	}
}

function draw() {
	background(145,256,256);
	for (i = 0; i < 100; i++) {
		if (jellyfish[i].posY < -300) {
			jellyfish[i].replaceJelly(i); 
		}
		jellyfish[i].update(); 
	}
	for (i = 0; i < 1000; i++) {
		if (bubbles[i].posY < 0 - bubbles[i].distMod) {
			bubbles[i].replaceBubble(i); 
		}
		bubbles[i].update();
	}
	if (keyIsPressed) {
		whenKeyPressed(); 
	}
}

function whenKeyPressed() {
	if (keyCode == 69) { 
		saveCanvas(myCanvas,"screenshot"+numExports,"png");
		numExports++;
	}
}

class JellyFish { 

	constructor(posX, posY, diaX, diaY, c) {
		this.posX = posX;
		this.posY = posY;
		this.diaX = diaX; 
		this.diaY = diaY; 
		this.velY = int(random(1,4));
		this.offset = this.diaX/3; 
		this.h = c; 
		if (this.velY == 1) { 
			this.s = random(20,100); 
			this.b = random(20,100); 
		} else if (this.velY == 2) { 
			this.s = random(75,200); 
			this.b = random(75,150); 
		} else if (this.velY == 3) {
			this.s = random(100,256); 
			this.b = random(100,225); 
		}
	}

	update() { 
		stroke(this.h,255,255); 
		fill(this.h,255,255,240); 
		arc(this.posX, this.posY, this.diaX, this.diaY, PI-(PI*.2), TWO_PI+(PI*.2), OPEN); 
				
		stroke(this.h,255,255);
		noFill(); 
	
		beginShape(); 
		vertex(this.posX,this.posY); 
		quadraticVertex(this.posX-this.diaX, this.posY+this.diaY*1.5, this.posX, this.posY+this.diaY*2); 
		endShape(); 
	
		beginShape(); 
		vertex(this.posX,this.posY); 
		quadraticVertex(this.posX+this.diaX, this.posY+this.diaY*1.5, this.posX, this.posY+this.diaY*2); 
		endShape(); 
	
		beginShape(); 
		vertex(this.posX+this.offset,this.posY); 
		quadraticVertex(this.posX-this.diaX+this.offset*1, this.posY+this.diaY*1.5, this.posX+this.offset, this.posY+this.diaY*2); 
		endShape(); 
		
		beginShape(); 
		vertex(this.posX-this.offset,this.posY); 
		quadraticVertex(this.posX+this.diaX-this.offset, this.posY+this.diaY*1.5, this.posX-this.offset, this.posY+this.diaY*2); 
		endShape(); 
		
		this.posY-=this.velY; 
		if (frameCount % 20 == 10) {
			this.diaY-=5; 
			this.diaX+=5;
		}
		if (frameCount % 20 == 0) { 
			this.diaY+=5; 
			this.diaX-=5
		}
	}
	
	replaceJelly(index) { 
		this.index = index;
		posX = random(width); 
		posY = random(2*height, height+100); 
		diameterX = random(100); 
		diameterY = diameterX - diameterX*.1; 
		c = random(255);
		jellyfish[this.index] = new JellyFish(posX, posY, diameterX, diameterY, c); 
	}
}

class Bubble {

	constructor(startPosX, startPosY, distMod) { 
		this.posX = startPosX;
		this.posY = startPosY; 
		this.distMod = distMod;
		this.velY = int(random(1,6));
		this.h = random(135,160); 
		this.s = random(100,200);
		this.b = 256; 
		this.a = 100;
	}
	
	update() { 
		stroke(this.h, this.s, this.b);
		fill(this.h, this.s, this.b,this.a); 
		ellipse(this.posX, this.posY, this.distMod, this.distMod);
		this.posY -= this.velY; 
	}
	
	replaceBubble(index) { 
		bubbles[index] = new Bubble (random(width), random(height+(height/2),height), (index%100)); 																	
	}
}