    /*
    * Ultrasonic Sensor HC-SR04 and Arduino Tutorial
    *
    * by Dejan Nedelkovski,
    * www.HowToMechatronics.com
    *
    */
    #include <LiquidCrystal.h>
    const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
    LiquidCrystal lcd(rs, en, d4, d5, d6, d7);// defines pins numbers
    const int trigPin = 9;
    const int echoPin = 10;
    // defines variables
    long duration;
    float distance;
    int i;
    void setup() 
    {
      pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
      pinMode(echoPin, INPUT); // Sets the echoPin as an Input
      Serial.begin(9600); // Starts the serial communication
      lcd.begin(16, 2);
    }
    void loop() 
    {

        // Clears the trigPin
        digitalWrite(trigPin, LOW);
        delayMicroseconds(2);
        // Sets the trigPin on HIGH state for 10 micro seconds
        digitalWrite(trigPin, HIGH);
        delayMicroseconds(10);
        digitalWrite(trigPin, LOW);
        // Reads the echoPin, returns the sound wave travel time in microseconds
        duration = pulseIn(echoPin, HIGH);
        // Calculating the distance
        distance= duration*0.017;
        // Prints the distance on the Serial Monitor
       
        //Serial.print("Distance: ");
        Serial.println(distance);
        lcd.print("Distance:");
        lcd.print(distance);
        lcd.print("cm");
        lcd.display();
        delay(500);
        lcd.clear();
   }
