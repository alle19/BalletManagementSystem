{\rtf1\mac\ansicpg10000\cocoartf2818
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red25\green25\blue25;
\red101\green76\blue29;\red15\green112\blue1;\red19\green120\blue72;\red144\green1\blue18;\red0\green0\blue0;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c47451\c36863\c14902;\cssrgb\c0\c50196\c0;\cssrgb\c3529\c53333\c35294;\cssrgb\c63922\c8235\c8235;\cssrgb\c0\c0\c0;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 DATABASE\cf4 \strokec4  \cf5 \strokec5 BallettKompanie\cf4 \strokec4 ;\cb1 \
\cf2 \cb3 \strokec2 GO\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 USE\cf4 \strokec4  BallettKompanie;\cb1 \
\cf2 \cb3 \strokec2 GO\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 --tables\cf4 \cb1 \strokec4 \
\
\cf6 \cb3 \strokec6 --TABLE FOR VENUES\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 --Relationship: (1:n) one hall can host multiple performances\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Saal\cf4 \strokec4 (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 SaalID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4  \cf5 \strokec5 IDENTITY\cf4 \strokec4 (\cf7 \strokec7 1\cf4 \strokec4 ,\cf7 \strokec7 1\cf4 \strokec4 ), \cf6 \strokec6 --PK: unique ID for each venue (clustered index)\cf4 \cb1 \strokec4 \
\cb3 Adresse \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 250\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 PlatzeParterre \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --seating capacity on the ground floor\cf4 \cb1 \strokec4 \
\cb3 PlatzeBalkon \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4  \cf6 \strokec6 --seating capacity on the balcony\cf4 \cb1 \strokec4 \
\cb3 );\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 --TABLE FOR BALLET PIECES\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 --Relationship: (1:n) one piece can be performed multiple times\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Ballettstuck\cf4 \strokec4 (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 StuckID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4  \cf5 \strokec5 IDENTITY\cf4 \strokec4 (\cf7 \strokec7 1\cf4 \strokec4 ,\cf7 \strokec7 1\cf4 \strokec4 ), \cf6 \strokec6 --PK: unique ID for each piece\cf4 \cb1 \strokec4 \
\cb3 StuckName \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 100\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 Komponist \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 100\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 DauerMinuten \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \cb1 \strokec4 \
\cb3 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- TABLE FOR PERFORMANCES\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- Relationships: (m:n) between Saal and Ballettstuck\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Auffuhrung\cf4 \strokec4  (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 AuffuhrungID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4  \cf5 \strokec5 IDENTITY\cf4 \strokec4 (\cf7 \strokec7 1\cf4 \strokec4 ,\cf7 \strokec7 1\cf4 \strokec4 ), \cf6 \strokec6 --PK: unique ID for each performance\cf4 \cb1 \strokec4 \
\cb3 Datum \cf2 \strokec2 DATE\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 Uhrzeit \cf2 \strokec2 TIME\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 SaalID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --FK: reference to the Venue table\cf4 \cb1 \strokec4 \
\cb3 StuckID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --Fk: reference to the Ballet piece table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CONSTRAINT\cf4 \strokec4  FK_Auffuhrung_Saal \cf2 \strokec2 FOREIGN KEY\cf4 \strokec4  (SaalID)\cb1 \
\cf2 \cb3 \strokec2 REFERENCES\cf4 \strokec4  Saal(SaalID),\cb1 \
\cf2 \cb3 \strokec2 CONSTRAINT\cf4 \strokec4  FK_Auffuhrung_BallettStuck \cf2 \strokec2 FOREIGN KEY\cf4 \strokec4  (StuckID)\cb1 \
\cf2 \cb3 \strokec2 REFERENCES\cf4 \strokec4  Ballettstuck(StuckID)\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- INDEX for faster join-operations\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 NONCLUSTERED\cf4 \strokec4  \cf2 \strokec2 INDEX\cf4 \strokec4  IX_Auffuhrung_StuckID \cf2 \strokec2 ON\cf4 \strokec4  Auffuhrung(StuckID);\cb1 \
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 NONCLUSTERED\cf4 \strokec4  \cf2 \strokec2 INDEX\cf4 \strokec4  IX_Auffuhrung_SaalID \cf2 \strokec2 ON\cf4 \strokec4  Auffuhrung(SaalID);\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- TABLE FOR DANCERS\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Tanzer\cf4 \strokec4 (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 TanzerID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4  \cf5 \strokec5 IDENTITY\cf4 \strokec4 (\cf7 \strokec7 1\cf4 \strokec4 ,\cf7 \strokec7 1\cf4 \strokec4 ), \cf6 \strokec6 --PK: unique ID for dancers\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 Name\cf4 \strokec4  \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 100\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 Alter_Tanzer \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 Geschlecht \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 30\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \cb1 \strokec4 \
\cb3 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- TABLE FOR ROLES\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- Relationship: (n:m) between Dancers and Performances\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- a dancer can play multiple roles in multiple performances\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Rolle\cf4 \strokec4 (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 TanzerID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --FK: reference to the dancer\cf4 \cb1 \strokec4 \
\cb3 AuffuhrungID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --FK: reference to the specific performance\cf4 \cb1 \strokec4 \
\cb3 RolleName \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 50\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 PRIMARY KEY\cf4 \strokec4 (TanzerID, AuffuhrungID, RolleName), \cf6 \strokec6 --composite PK\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 CONSTRAINT\cf4 \strokec4  FK_Rolle_Tanzer \cf2 \strokec2 FOREIGN KEY\cf4 \strokec4  (TanzerID)\cb1 \
\cf2 \cb3 \strokec2 REFERENCES\cf4 \strokec4  Tanzer(TanzerID),\cb1 \
\cf2 \cb3 \strokec2 CONSTRAINT\cf4 \strokec4  FK_Rolle_Auffuhrung \cf2 \strokec2 FOREIGN KEY\cf4 \strokec4  (AuffuhrungID)\cb1 \
\cf2 \cb3 \strokec2 REFERENCES\cf4 \strokec4  Auffuhrung(AuffuhrungID)\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- TABLE FOR TICKETS\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- RELATIONSHIP: (1:N) one performance has many tickets\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \cf5 \strokec5 Ticket\cf4 \strokec4 (\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 TicketID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 PRIMARY KEY\cf4 \strokec4  \cf5 \strokec5 IDENTITY\cf4 \strokec4 (\cf7 \strokec7 1\cf4 \strokec4 ,\cf7 \strokec7 1\cf4 \strokec4 ), \cf6 \strokec6 --PK: unique ID for the ticket\cf4 \cb1 \strokec4 \
\cb3 AuffuhrungID \cf2 \strokec2 INT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4 , \cf6 \strokec6 --FK: reference to the performance\cf4 \cb1 \strokec4 \
\cb3 Preis \cf2 \strokec2 DECIMAL\cf4 \strokec4 (\cf7 \strokec7 10\cf4 \strokec4 ,\cf7 \strokec7 2\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 KauferName \cf2 \strokec2 VARCHAR\cf4 \strokec4 (\cf7 \strokec7 100\cf4 \strokec4 ) \cf2 \strokec2 NOT NULL\cf4 \strokec4 ,\cb1 \
\cb3 IstErmassigt \cf2 \strokec2 BIT\cf4 \strokec4  \cf2 \strokec2 NOT NULL\cf4 \strokec4  \cf2 \strokec2 DEFAULT\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 , \cf6 \strokec6 --boolean: 1 for discount, 0 ful price\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CONSTRAINT\cf4 \strokec4  FK_Ticket_Auffuhrung \cf2 \strokec2 FOREIGN KEY\cf4 \strokec4  (AuffuhrungID)\cb1 \
\cf2 \cb3 \strokec2 REFERENCES\cf4 \strokec4  Auffuhrung(AuffuhrungID)\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 --INDEX for faster JOIN- operation, essentially for the first query\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 NONCLUSTERED\cf4 \strokec4  \cf2 \strokec2 INDEX\cf4 \strokec4  IX_Ticket_AuffuhrungID \cf2 \strokec2 ON\cf4 \strokec4  Ticket(AuffuhrungID);\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Insert Saal\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Saal (Adresse, PlatzeParterre, PlatzeBalkon) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf8 \strokec8 'Main Street 1'\cf4 \strokec4 , \cf7 \strokec7 100\cf4 \strokec4 , \cf7 \strokec7 50\cf4 \strokec4 ), (\cf8 \strokec8 'Opera Square 2'\cf4 \strokec4 , \cf7 \strokec7 80\cf4 \strokec4 , \cf7 \strokec7 40\cf4 \strokec4 ), (\cf8 \strokec8 'Art Ave 3'\cf4 \strokec4 , \cf7 \strokec7 60\cf4 \strokec4 , \cf7 \strokec7 30\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Culture Blvd 4'\cf4 \strokec4 , \cf7 \strokec7 120\cf4 \strokec4 , \cf7 \strokec7 60\cf4 \strokec4 ), (\cf8 \strokec8 'Stage Road 5'\cf4 \strokec4 , \cf7 \strokec7 90\cf4 \strokec4 , \cf7 \strokec7 45\cf4 \strokec4 ), (\cf8 \strokec8 'Dance Lane 6'\cf4 \strokec4 , \cf7 \strokec7 70\cf4 \strokec4 , \cf7 \strokec7 35\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Music Way 7'\cf4 \strokec4 , \cf7 \strokec7 110\cf4 \strokec4 , \cf7 \strokec7 55\cf4 \strokec4 ), (\cf8 \strokec8 'Theater Dr 8'\cf4 \strokec4 , \cf7 \strokec7 50\cf4 \strokec4 , \cf7 \strokec7 25\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Small Hall A'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Small Hall B'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Insert Ballettstuck\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ballettstuck (StuckName, Komponist, DauerMinuten) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf8 \strokec8 'Schwanensee'\cf4 \strokec4 , \cf8 \strokec8 'Tchaikovsky'\cf4 \strokec4 , \cf7 \strokec7 120\cf4 \strokec4 ), (\cf8 \strokec8 'Nussknacker'\cf4 \strokec4 , \cf8 \strokec8 'Tchaikovsky'\cf4 \strokec4 , \cf7 \strokec7 100\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Giselle'\cf4 \strokec4 , \cf8 \strokec8 'Adolphe Adam'\cf4 \strokec4 , \cf7 \strokec7 110\cf4 \strokec4 ), (\cf8 \strokec8 'Don Quixote'\cf4 \strokec4 , \cf8 \strokec8 'Ludwig Minkus'\cf4 \strokec4 , \cf7 \strokec7 130\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Coppelia'\cf4 \strokec4 , \cf8 \strokec8 'Leo Delibes'\cf4 \strokec4 , \cf7 \strokec7 95\cf4 \strokec4 ), (\cf8 \strokec8 'Romeo & Juliet'\cf4 \strokec4 , \cf8 \strokec8 'Prokofiev'\cf4 \strokec4 , \cf7 \strokec7 140\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'The Sleeping Beauty'\cf4 \strokec4 , \cf8 \strokec8 'Tchaikovsky'\cf4 \strokec4 , \cf7 \strokec7 150\cf4 \strokec4 ), (\cf8 \strokec8 'Cinderella'\cf4 \strokec4 , \cf8 \strokec8 'Prokofiev'\cf4 \strokec4 , \cf7 \strokec7 115\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'La Bayadere'\cf4 \strokec4 , \cf8 \strokec8 'Ludwig Minkus'\cf4 \strokec4 , \cf7 \strokec7 125\cf4 \strokec4 ), (\cf8 \strokec8 'Spartacus'\cf4 \strokec4 , \cf8 \strokec8 'Khachaturian'\cf4 \strokec4 , \cf7 \strokec7 135\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Insert Tanzer\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Tanzer (\cf2 \strokec2 Name\cf4 \strokec4 , Alter_Tanzer, Geschlecht) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf8 \strokec8 'Pop Ion'\cf4 \strokec4 , \cf7 \strokec7 25\cf4 \strokec4 , \cf8 \strokec8 'Masculin'\cf4 \strokec4 ), (\cf8 \strokec8 'Popa Ana'\cf4 \strokec4 , \cf7 \strokec7 22\cf4 \strokec4 , \cf8 \strokec8 'Feminin'\cf4 \strokec4 ), (\cf8 \strokec8 'Ionescu Dan'\cf4 \strokec4 , \cf7 \strokec7 28\cf4 \strokec4 , \cf8 \strokec8 'Masculin'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Dumitru Maria'\cf4 \strokec4 , \cf7 \strokec7 24\cf4 \strokec4 , \cf8 \strokec8 'Feminin'\cf4 \strokec4 ), (\cf8 \strokec8 'Stoica Radu'\cf4 \strokec4 , \cf7 \strokec7 27\cf4 \strokec4 , \cf8 \strokec8 'Masculin'\cf4 \strokec4 ), (\cf8 \strokec8 'Enache Elena'\cf4 \strokec4 , \cf7 \strokec7 23\cf4 \strokec4 , \cf8 \strokec8 'Feminin'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Matei Vlad'\cf4 \strokec4 , \cf7 \strokec7 26\cf4 \strokec4 , \cf8 \strokec8 'Masculin'\cf4 \strokec4 ), (\cf8 \strokec8 'Sandu Irina'\cf4 \strokec4 , \cf7 \strokec7 21\cf4 \strokec4 , \cf8 \strokec8 'Feminin'\cf4 \strokec4 ), (\cf8 \strokec8 'Lupu George'\cf4 \strokec4 , \cf7 \strokec7 29\cf4 \strokec4 , \cf8 \strokec8 'Masculin'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 'Albu Cristina'\cf4 \strokec4 , \cf7 \strokec7 25\cf4 \strokec4 , \cf8 \strokec8 'Feminin'\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Insert Auffuhrung\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Auffuhrung (Datum, Uhrzeit, SaalID, StuckID) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf8 \strokec8 '2025-12-01'\cf4 \strokec4 , \cf8 \strokec8 '18:00'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 ), (\cf8 \strokec8 '2025-12-02'\cf4 \strokec4 , \cf8 \strokec8 '19:00'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 '2025-12-03'\cf4 \strokec4 , \cf8 \strokec8 '18:30'\cf4 \strokec4 , \cf7 \strokec7 3\cf4 \strokec4 , \cf7 \strokec7 3\cf4 \strokec4 ), (\cf8 \strokec8 '2025-12-04'\cf4 \strokec4 , \cf8 \strokec8 '20:00'\cf4 \strokec4 , \cf7 \strokec7 4\cf4 \strokec4 , \cf7 \strokec7 4\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 '2025-12-05'\cf4 \strokec4 , \cf8 \strokec8 '19:30'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 ), (\cf8 \strokec8 '2025-12-06'\cf4 \strokec4 , \cf8 \strokec8 '17:00'\cf4 \strokec4 , \cf7 \strokec7 6\cf4 \strokec4 , \cf7 \strokec7 6\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 '2025-12-07'\cf4 \strokec4 , \cf8 \strokec8 '18:00'\cf4 \strokec4 , \cf7 \strokec7 7\cf4 \strokec4 , \cf7 \strokec7 7\cf4 \strokec4 ), (\cf8 \strokec8 '2025-12-08'\cf4 \strokec4 , \cf8 \strokec8 '19:00'\cf4 \strokec4 , \cf7 \strokec7 8\cf4 \strokec4 , \cf7 \strokec7 8\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 '2025-12-09'\cf4 \strokec4 , \cf8 \strokec8 '20:00'\cf4 \strokec4 , \cf7 \strokec7 9\cf4 \strokec4 , \cf7 \strokec7 9\cf4 \strokec4 ),\cb1 \
\cb3 (\cf8 \strokec8 '2025-12-10'\cf4 \strokec4 , \cf8 \strokec8 '20:00'\cf4 \strokec4 , \cf7 \strokec7 10\cf4 \strokec4 , \cf7 \strokec7 10\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- 5. Insert Rolle\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Rolle (TanzerID, AuffuhrungID, RolleName) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 9\cf4 \strokec4 , \cf8 \strokec8 'Hero'\cf4 \strokec4 ), (\cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 9\cf4 \strokec4 , \cf8 \strokec8 'Heroine'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 10\cf4 \strokec4 , \cf8 \strokec8 'Soloist'\cf4 \strokec4 ), (\cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 10\cf4 \strokec4 , \cf8 \strokec8 'Soloist'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf7 \strokec7 3\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf8 \strokec8 'Villain'\cf4 \strokec4 ), (\cf7 \strokec7 4\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf8 \strokec8 'Fairy'\cf4 \strokec4 ), (\cf7 \strokec7 5\cf4 \strokec4 , \cf7 \strokec7 3\cf4 \strokec4 , \cf8 \strokec8 'Knight'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf7 \strokec7 6\cf4 \strokec4 , \cf7 \strokec7 4\cf4 \strokec4 , \cf8 \strokec8 'Peasant'\cf4 \strokec4 ), (\cf7 \strokec7 7\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf8 \strokec8 'King'\cf4 \strokec4 ), (\cf7 \strokec7 8\cf4 \strokec4 , \cf7 \strokec7 6\cf4 \strokec4 , \cf8 \strokec8 'Queen'\cf4 \strokec4 ),\cb1 \
\cb3 (\cf7 \strokec7 9\cf4 \strokec4 , \cf7 \strokec7 7\cf4 \strokec4 , \cf8 \strokec8 'Guard'\cf4 \strokec4 ), (\cf7 \strokec7 10\cf4 \strokec4 , \cf7 \strokec7 8\cf4 \strokec4 , \cf8 \strokec8 'Villager'\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- 6. Insert Ticket\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- 2 tickets, both-(100%)\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 50\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Student A'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 ), (\cf7 \strokec7 1\cf4 \strokec4 , \cf7 \strokec7 50\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Student B'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- 2 tickets, 1-(50%)\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 100\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Adult A'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 ), (\cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 50\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Elev A'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 --SOLD-OUT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 9\cf4 \strokec4 , \cf7 \strokec7 120\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Client X'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 ), (\cf7 \strokec7 9\cf4 \strokec4 , \cf7 \strokec7 120\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Client Y'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 );\cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- SOLD-OUT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 10\cf4 \strokec4 , \cf7 \strokec7 150\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Client Z'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 );\cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt) \cf2 \strokec2 VALUES\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 (\cf7 \strokec7 3\cf4 \strokec4 , \cf7 \strokec7 80\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'M. Ionescu'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 ), (\cf7 \strokec7 3\cf4 \strokec4 , \cf7 \strokec7 40\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'P. Dan'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 ),\cb1 \
\cb3 (\cf7 \strokec7 4\cf4 \strokec4 , \cf7 \strokec7 90\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'V. Radu'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 );\cb1 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Retrieve the Top3 performances with the highest percentage of discounted tickets\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  \cf2 \strokec2 TOP\cf4 \strokec4  \cf7 \strokec7 3\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 B.StuckName \cf2 \strokec2 AS\cf4 \strokec4  Ballettstuck,\cb1 \
\cb3 A.Datum,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- IstErmassigt is 0 or 1, this means that the average gives the discount ratio\cf4 \cb1 \strokec4 \
\cf6 \cb3 \strokec6 -- multiplying by 100.0 converts it to a percentage while ensuring decimal precision\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 AVG\cf4 \strokec4 (\cf5 \strokec5 CAST\cf4 \strokec4 (T.IstErmassigt \cf2 \strokec2 AS\cf4 \strokec4  \cf2 \strokec2 FLOAT\cf4 \strokec4 ) \strokec9 *\strokec4  \cf7 \strokec7 100\cf4 \strokec4 .\cf7 \strokec7 0\cf4 \strokec4 ) \cf2 \strokec2 AS\cf4 \strokec4  PercentageDiscount\cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  Ballettstuck B\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Auffuhrung A \cf2 \strokec2 ON\cf4 \strokec4  B.StuckID \strokec9 =\strokec4  A.StuckID\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Ticket T \cf2 \strokec2 ON\cf4 \strokec4  A.AuffuhrungID \strokec9 =\strokec4  T.AuffuhrungID\cb1 \
\cf2 \cb3 \strokec2 GROUP BY\cf4 \strokec4  B.StuckName, A.Datum\cb1 \
\cf2 \cb3 \strokec2 ORDER BY\cf4 \strokec4  PercentageDiscount \cf2 \strokec2 DESC\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Identify dancers who have performed in every single performance that was sold out.\cf4 \cb1 \strokec4 \
\
\cf6 \cb3 \strokec6 --we use a Common Table Expression to first define what a Sold-Out show is\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 WITH\cf4 \strokec4  SoldOutShows \cf2 \strokec2 AS\cf4 \strokec4  (\cb1 \
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  A.AuffuhrungID\cb1 \
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  Auffuhrung A\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Saal S \cf2 \strokec2 ON\cf4 \strokec4  A.SaalID \strokec9 =\strokec4  S.SaalID\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Ticket T \cf2 \strokec2 ON\cf4 \strokec4  A.AuffuhrungID \strokec9 =\strokec4  T.AuffuhrungID\cb1 \
\cf2 \cb3 \strokec2 GROUP BY\cf4 \strokec4  A.AuffuhrungID, S.PlatzeParterre, S.PlatzeBalkon\cb1 \
\cf2 \cb3 \strokec2 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf4 \strokec4 (T.TicketID) \strokec9 =\strokec4  (S.PlatzeParterre \strokec9 +\strokec4  S.PlatzeBalkon)\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 )\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- the dancer's count of ditinct sold-out shows must equal the total number of sold-out shows\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  T.NAME \cf2 \strokec2 AS\cf4 \strokec4  NameTanzer\cb1 \
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  Tanzer T\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Rolle R \cf2 \strokec2 ON\cf4 \strokec4  T.TanzerID \strokec9 =\strokec4  R.TanzerID\cb1 \
\cf2 \cb3 \strokec2 WHERE\cf4 \strokec4  R.AuffuhrungID \cf2 \strokec2 IN\cf4 \strokec4  (\cf2 \strokec2 SELECT\cf4 \strokec4  AuffuhrungID \cf2 \strokec2 FROM\cf4 \strokec4  SoldOutShows)\cb1 \
\cf2 \cb3 \strokec2 GROUP BY\cf4 \strokec4  T.TanzerID, T.Name\cb1 \
\cf2 \cb3 \strokec2 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf4 \strokec4 (\cf2 \strokec2 DISTINCT\cf4 \strokec4  R.AuffuhrungID) \strokec9 =\strokec4  (\cf2 \strokec2 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf4 \strokec4 (\strokec9 *\strokec4 ) \cf2 \strokec2 FROM\cf4 \strokec4  SoldOutShows);\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- additionally, we can add two indexes:\cf4 \cb1 \strokec4 \
\
\cf6 \cb3 \strokec6 -- index on dancer's name for faster search\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 NONCLUSTERED\cf4 \strokec4  \cf2 \strokec2 INDEX\cf4 \strokec4  IX_Tanzer_Name \cf2 \strokec2 ON\cf4 \strokec4  Tanzer(\cf2 \strokec2 Name\cf4 \strokec4 );\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 --index on date for sorting and filters\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 NONCLUSTERED\cf4 \strokec4  \cf2 \strokec2 INDEX\cf4 \strokec4  IX_Auffuhrung_Datum \cf2 \strokec2 ON\cf4 \strokec4  Auffuhrung(Datum);\cb1 \
\
\
\cf2 \cb3 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TRIGGER\cf4 \strokec4  \cf5 \strokec5 trg_PreventOverbooking\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 ON\cf4 \strokec4  Ticket\cb1 \
\cf2 \cb3 \strokec2 AFTER\cf4 \strokec4  \cf2 \strokec2 INSERT\cf4 \strokec4  \cf6 \strokec6 -- it starts after trying to insert one ticket\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 AS\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 BEGIN\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 SET\cf4 \strokec4  \cf2 \strokec2 NOCOUNT\cf4 \strokec4  \cf2 \strokec2 ON\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 DECLARE\cf4 \strokec4  @PerformanceID \cf2 \strokec2 INT\cf4 \strokec4 ;\cb1 \
\cf2 \cb3 \strokec2 DECLARE\cf4 \strokec4  @TotalCapacity \cf2 \strokec2 INT\cf4 \strokec4 ;\cb1 \
\cf2 \cb3 \strokec2 DECLARE\cf4 \strokec4  @CurrentTickets \cf2 \strokec2 INT\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- ID of the just-inserted ticket\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  @PerformanceID \strokec9 =\strokec4  AuffuhrungID \cf2 \strokec2 FROM\cf4 \strokec4  inserted;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- total capacity of venue\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  @TotalCapacity \strokec9 =\strokec4  (S.PlatzeParterre \strokec9 +\strokec4  S.PlatzeBalkon)\cb1 \
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  Auffuhrung A\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf4 \strokec4  Saal S \cf2 \strokec2 ON\cf4 \strokec4  A.SaalID \strokec9 =\strokec4  S.SaalID\cb1 \
\cf2 \cb3 \strokec2 WHERE\cf4 \strokec4  A.AuffuhrungID \strokec9 =\strokec4  @PerformanceID;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- Number of sold tickets\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 SELECT\cf4 \strokec4  @CurrentTickets \strokec9 =\strokec4  \cf5 \strokec5 COUNT\cf4 \strokec4 (\strokec9 *\strokec4 )\cb1 \
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  Ticket\cb1 \
\cf2 \cb3 \strokec2 WHERE\cf4 \strokec4  AuffuhrungID \strokec9 =\strokec4  @PerformanceID;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- check if it is over capacity\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 IF\cf4 \strokec4  @CurrentTickets \strokec9 >\strokec4  @TotalCapacity\cb1 \
\cf2 \cb3 \strokec2 BEGIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- if it is more than the capacity, it will cancel the insertion (Rollback)\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 RAISERROR\cf4 \strokec4  (\cf8 \strokec8 'ERROR: The performance is SOLD-OUT! Cannot sell more tickets.'\cf4 \strokec4 , \cf7 \strokec7 16\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 );\cb1 \
\cf2 \cb3 \strokec2 ROLLBACK\cf4 \strokec4  \cf2 \strokec2 TRANSACTION\cf4 \strokec4 ;\cb1 \
\cf2 \cb3 \strokec2 END\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 END\cf4 \strokec4 ;\cb1 \
\cf2 \cb3 \strokec2 GO\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 -- TEST: Ticket over capacity, it should raise an error\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 INSERT INTO\cf4 \strokec4  Ticket (AuffuhrungID, Preis, KauferName, IstErmassigt)\cb1 \
\cf2 \cb3 \strokec2 VALUES\cf4 \strokec4  (\cf7 \strokec7 9\cf4 \strokec4 , \cf7 \strokec7 120\cf4 \strokec4 .\cf7 \strokec7 00\cf4 \strokec4 , \cf8 \strokec8 'Client EXTRA'\cf4 \strokec4 , \cf7 \strokec7 0\cf4 \strokec4 );\cb1 \
}