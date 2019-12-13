Feature: 

orientacion tabla slir 

Scenario: 
Given muevo mi robot en la terreno
When es "N" en el campo "orientacion"
When posY "5" en el campo "$posicionY"
When alto es "5" en "$alto"
Then sera "1" en el campo "$limite"

