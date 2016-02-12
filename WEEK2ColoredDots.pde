int hori = 20;
int verti = 10;

void setup() {
 size (400,400);
 background (255);
  colorMode(HSB, 360, 100, 100);
 noStroke ();

 for (int i=0; i<25;i++){
   for (int j=0; j<25; j++){
 fill (random (360), random(360), 100);
 ellipse(hori+(i*20), hori+(j*20), 15, 15);
   }
 }
}
