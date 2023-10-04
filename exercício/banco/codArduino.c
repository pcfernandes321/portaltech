void loop() {
  byte error, address;
  int nDevices;
  Serial.println("Quem ta ai?...");
  nDevices = 0;
  bool ub400Found = false;
  bool ub300Found = false;
  bool u3200Found = false;
  bool u3100Found = false;
  bool u3900Found = false;

  for(address = 1; address < 127; address++ ) {
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    if (error == 0) {
      Serial.print("Dispositivo I2C encontrado no address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
      nDevices++;

      // Verifica se o endereço corresponde a um dos valores desejados
      if (address == 0x3C) {
        Serial.println("Encontrado dispositivo UB400!");
        ub400Found = true;
        // 
      } else if (address == 0x3B) {
        Serial.println("Encontrado dispositivo UB300!");
        ub300Found = true;
        // 
      } else if (address == 0x3F) {
        Serial.println("Encontrado dispositivo U3100!");
        u3100Found = true;
        // 
      } else if (address == 0x6B) {
        Serial.println("Encontrado dispositivo U3900!");
        u3200Found = true;
        // 
      
      } else if (address == 0x38) {
        Serial.println("Encontrado dispositivo U3200!");
        u3200Found = true;
        // 
      
    
    
    else if (error == 4) {
      Serial.print("Unknow error at address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
    }    
  }

  // Verifique os dispositivos ausentes
  if (!ub400Found) {
    Serial.println("Dispositivo UB400 ausente!");
    // 
  }
  if (!ub300Found) {
    Serial.println("Dispositivo UB300 ausente!");
    // 
  }
  if (!u3200Found) {
    Serial.println("Dispositivo U3200 ausente!");
    // 
  }
  
  if (!u3100Found) {
    Serial.println("Dispositivo U3100 ausente!");
    // 
  }
  
  if (!u3900Found) {
    Serial.println("Dispositivo U3900 ausente!");
    // 
  }
  

  if (nDevices == 0) {
    Serial.println("Nenhum I2C encontrado\n");
  }
  else {
    Serial.println("Feito\n");
  }
  delay(5000);          
}