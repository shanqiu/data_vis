int n= 5;
String[] name={"Circle1","Circle2","Circle3","circle4","circle5"};
int[] size={100,50,60,20,80};
String[] colorName={"red","yellow","green","blue","purple"};
int[] colorNumber={0,50,100,150,200};
int[] x={100,200,300,400,500};


void setup(){
size(600,600);
smooth();
ellipseMode(CENTER);
colorMode(HSB);
textAlign(CENTER,BOTTOM);
}

void draw(){
background(250);
stroke(0);
strokeWeight(1);
line(width/2-100,110,width/2+100,110);
line(width/2-100,140,width/2+100,140);
line(width/2-100,170,width/2+100,170);
noStroke();
for(int i=0;i<n;i++){

    if((dist(x[i],400,mouseX,mouseY))<size[i]/2){
      showBox(i);
      fill(colorNumber[i],255,255);
    }else{fill(colorNumber[i],255,200);}
      ellipse(x[i],400,size[i],size[i]);
      
      stroke(0);
      strokeWeight(1);
      line(x[i],500,x[i],510);
      noStroke();
    }
}

void showBox(int i){
fill(0);
text("the name is  "+name[i],width/2,110);
text("the size is  "+size[i],width/2,140);
text("the color is  "+colorName[i],width/2,170);
}
