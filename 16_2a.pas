PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN; 
  
PROCEDURE Start(VAR W1, W2, W3, W4: CHAR; VAR Looking, Land, Sea: BOOLEAN);
BEGIN {�������������}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE
END; {�������������}
  
PROCEDURE Window(VAR W1, W2, W3, W4: CHAR);
BEGIN {�������� ����}
  W1 := W2;
  W2 := W3;
  W3 := W4;
  READ(W4);
  WRITELN(W1, W2, W3, W4);
  IF W4 = '#'
  THEN
    Looking := FALSE
END; {�������� ����}

PROCEDURE CheckLand(VAR W1, W2, W3, W4: VAR CHAR; Land: BOOLEAN);
BEGIN
  Land := (W1 = 'l') AND (W2 = �a�) AND (W3 = �n�) AND (W4 = �d�)
END;

PROCEDURE CheckLand(VAR W1, W2, W3, W4: CHAR; VAR Sea: BOOLEAN);
BEGIN
  Sea := (W1 = �l�) AND (W2 = �a�) AND (W3 = �n�) AND (W4 = �d�)
END;

PROCEDURE

  
 
BEGIN {SarahRevere}   
  {�������������}
  Start(W1, W2, W3, W4, Looking, Land, Sea);
  WRITELN(Looking, Land, Sea); 
  WHILE Looking AND NOT (Land OR Sea)
  DO
    BEGIN
      {�������� ����}
      Window(W1, W2, W3, W4)
      {�������� ���� �� land}
      {�������� ���� �� sea}
    END;
  {�������� ��������� Sarah}
END.  {SarahRevere} 
 
 
{�������� ���� �� land        
 
 
�������� ���� �� sea
Sea := (W1 = �s�) AND (W2 = �e�) AND (W3 = �a�)}

