// air floatation and air thrusting
int thrust0 = 5;

void setup() {
  Serial.begin(115200);
  for (int j = 0; j < 9; j++)
  {
    pinMode(thrust0 + j, OUTPUT);
  }
}

void loop() {
  if (Serial.available() > 0)
  {
    int val = Serial.read();
    for (int i = 0; i < 9; i++) {
      if (bitRead(val, i) > 0)
      {
        digitalWrite(thrust0 + i, HIGH);
      }
    }
  }
}
