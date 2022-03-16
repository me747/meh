const int trigPin = 5; 
const int echoPin = 4; 
long duration;
int dist;
void setup()
{
pinMode(trigPin, OUTPUT); 
pinMode(echoPin, INPUT); 
Serial.begin(115200); 
}
void loop() {
digitalWrite(trigPin, LOW);
delayMicroseconds(20000);
digitalWrite(trigPin, HIGH);
delayMicroseconds(20000);
digitalWrite(trigPin, LOW); 
duration = pulseIn(echoPin, HIGH);
dist= duration*0.034/2;
Serial.print("Distance: ");
Serial.println(dist);
}
