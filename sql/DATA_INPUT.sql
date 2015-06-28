/* IMPORTANT ! */
SET @user := 'zen';

INSERT INTO V_MediaShortcuts (Shortcut)
	VALUES('DVD');
INSERT INTO V_MediaShortcuts (Shortcut)
	VALUES('BluRay');
INSERT INTO V_Type (V_Type)
	VALUES('Playstation 3');
INSERT INTO V_Type (V_Type)
	VALUES('XBox 360');
INSERT INTO V_Type (V_Type)
	VALUES('Movie');
INSERT INTO V_Type (V_Type)
	VALUES('Series');

/*_____________________________________________MOVIES_______________________________________________*/

	INSERT INTO V_Media (Title,Description,Image,FSK,MediaList,V_Type)
	VALUES('Armageddon',
		   'Ein Asteroid von enormer Größe rast mit einer Geschwindigkeit 
           von 40.000 Stundenkilometern auf die Erde zu. Ein Aufprall würde 
           das Ende der Menschheit bedeuten. Nur 18 Tage bleiben NASA-Chef Truman, 
           um etwas dagegen zu unternehmen. Kurzerhand heuert er den Ölbohrexperten Stamper an. 
           Er und sein Team werden im Schnellverfahren zu Astronauten ausgebildet. Sie sollen auf dem 
           Asteroiden landen, ein 300 Meter tiefes Bohrloch bis zu seinem Kern vorantreiben, um dort einen 
           Nuklearsprengkörper zu plazieren. Für Stamper und seine Männer beginnt ein Rennen gegen die Zeit. 
           Wird es ihnen gelingen, den Aufprall zu verhindern, oder steht die Menschheit endgültig vor ihrem 
           Ende... dem Armageddon?',
			null,
            12,
            1,
            'Movie');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Armageddon');
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(1,1);
    
    INSERT INTO V_MediaList (MediaID,StorageListID,RentedFrom,RentedTo)
	VALUES(1,1,null, null);
    
    
    
    INSERT INTO V_Media (Title,Description,Image,FSK,MediaList,V_Type)
	VALUES('Star Trek',
		   'Der dreiste James Kirk und der ebenso junge Halbvulkanier 
           Spock sind unter den Mitgliedern einer Sternenflotten-Besatzung 
           auf dem Jungfernflug des fortgeschrittensten Raumschiffs, das je gebaut 
           wurde: Der U.S.S. Enterprise. Auf ihrer unglaublichen Reise durch die Galaxie 
           treffen sie den feindseligen Nero, dessen finsterer Plan die ganze Menschheit 
           bedroht. ',
			null,
            12,
            2,
            'Movie');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Star Trek');
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(2,2);
    
    INSERT INTO V_MediaList (MediaID,StorageListID,RentedFrom,RentedTo)
	VALUES(2,2,null, null);
    
    
    
    INSERT INTO V_Media (Title,Description,Image,FSK,MediaList,V_Type)
	VALUES('Harry Potter - Complete Collection',
		   'Harry Potter ist eine populäre Fantasy-Romanreihe der 
           englischen Schriftstellerin Joanne K. Rowling. Erzählt wird die 
           siebenteilige Geschichte des Titelhelden Harry James Potter, 
           eines Schülers des britischen Zaubererinternats Hogwarts, und seiner 
           Konfrontationen mit dem bösen Magier Lord Voldemort und dessen Gefolgsleuten, 
           den sogenannten Todessern. Jeder der sieben Bände beschreibt ein Schul- und 
           Lebensjahr von Harry Potter, beginnend kurz vor seinem elften Geburtstag.',
			null,
            12,
            3,
            'Movie');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 1');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 2');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 3');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 4');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 5');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 6');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 7');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 9');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 10');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Harry Potter - Complete Collection - Disc 11');

	INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,3);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,4);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,5);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,6);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,7);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,8);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,9);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,10);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,11);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(3,12);
    
    INSERT INTO V_MediaList (MediaID,StorageListID,RentedFrom,RentedTo)
	VALUES(3,3,null, null);
    
    
    INSERT INTO V_Media (Title,Description,Image,FSK,MediaList,V_Type)
	VALUES('Pirates of the Caribbean - Die Piraten-Quadrologie',
		   'Pirates of the Caribbean (englisch für Piraten der Karibik), 
           oder alternativ auch Fluch der Karibik genannt, ist eine Piratenfilmreihe 
           von Walt Disney Pictures, die auf der gleichnamigen Themenfahrt basiert. 
           Zur Filmreihe sind auch viele Videospiele und zwei weitere Attraktionen in den 
           Disneylands erschienen. In der Hauptrolle, Jack Sparrow, ist Johnny Depp zu sehen. 
           Produzent der inzwischen vierteiligen Reihe ist Jerry Bruckheimer. Die Gesamtlaufzeit 
           der Filme beträgt ca. 580 Minuten.',
           null,
            12,
            4,
            'Movie');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 1');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 2');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 3');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 4');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('DVD','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 5');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('DVD','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 6');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('DVD','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 7');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('DVD','Pirates of the Caribbean - Die Piraten-Quadrologie - Disc 8');


	INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,13);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,14);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,15);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,16);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,17);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,18);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,19);
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(4,20);
    
    INSERT INTO V_MediaList (MediaID,StorageListID,RentedFrom,RentedTo)
	VALUES(4,4,null, null);
    
    /*_____________________________________________GAMES_______________________________________________*/
    
   
	INSERT INTO V_Media (Title,Description,Image,FSK,MediaList,V_Type)
	VALUES('Pac-Man',
		   'Die Spielfigur Pac-Man muss Punkte in einem Labyrinth fressen,
           während sie von Gespenstern verfolgt wird. Frisst man eine „Kraftpille“, 
           kann man für eine gewisse Zeit umgekehrt selbst die (nun blau eingefärbten)
           Gespenster verfolgen. Manchmal erscheint auch eine Kirsche oder ein anderes 
           Symbol im Spielfeld, das dem Spieler Extrapunkte einbringt, wenn man es frisst. 
           Wenn man das Symbol nicht frisst, verschwindet es nach einiger Zeit wieder. Sind alle 
           Punkte gefressen, gelangt man in den nächsten Level. Dieser unterscheidet sich vom vorigen 
           im Wesentlichen nur durch die höhere Spielgeschwindigkeit (in den niedrigeren Leveln auch durch 
           ein verändertes Gegnerverhalten). Die Steuerung erfolgt per Joystick.',
			null,
            12,
            5,
            'Playstation 3');
    
    INSERT INTO V_StorageMedia (StorageShortcut,Title)
	VALUES('BluRay','Pac-Man');
    
    INSERT INTO V_StorageList (MediaID,StorageMediaID)
	VALUES(5,21);
    
    INSERT INTO V_MediaList (MediaID,StorageListID,RentedFrom,RentedTo)
	VALUES(5,5,null, null);

 