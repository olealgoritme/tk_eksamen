
oppg eksamen 2014

1b
---
prinsippet om least privilege er alle brukere skal ha minst mulig tilgang for å kunne utføre sine pålagte oppgaver


1c
---
ACL hvert objekt har en liste over hvilke brukere som har tilgang (og hvilke rettigheter de har)


1d
---
for en privatperson er det to ting som er veldig viktig, og det er pengene dine, og sensitive ting på avveie (som du f.eks kan presses for penger for, og lign)

andre trusler kan inkludere at maskinen din blir tatt over eller for å vise deg reklame, bruke maskinen din til noe ulovlig, bli spionert på eller sletter/krypterer filene dine

det betyr at den viktigste aktøren som du må beskytte deg mot er kriminelle grupper som forsøker å angripe alle i hele verden

backup, ant-virus, IT-forståelse, internett-vett og common sense er "nok", en personlig brannmus er å anbefale i tillegg.


2a
---
** SYMMETRISK kryptering bruker samme nøkkel til å kryptere og dekryptere, mens assymetrisk kryptering en private og en public nøkkel
** SYMMETRISK algoritmer kan kun brukes til kryptering, assymteriske algoritmer kan også brukes til signering

2b)
---
One Time Pad - (i prinsippet umulig å knekke)
I prinsippet" er kvantekryptering umulig å knekke, en sikker fysisk linje som
ikke kan avlyttes basert på kvanters egenskaper


i praksis er AES, RSA og EC og flere andre algoritmer sikre, under forutsetningen at det er brukt store nok nøkler og at nøklene er tilfeldig valgt.

men uansett er ingenting 100% sikkert, da gitt nok regnekapasitet kan i teorien alt knekkes (faktisk ikke en One Time Pad, men det er andre utfordringer som nøkkel distribusjon og gjenbruk)

2c
---
Når bruker man en network stream cipher?
dette er upresist eller utdatert


i praksis, i 2019, så vil man aldri en stream cipher, som RC4, da de ikke er sikre. I praksis deler man streamen i blokker og krypterer blokkene med AES.


2d)
---
Et digitalt seritifikat brukes for å sikkert identifisere en person eller et selskap på en trygg måte, det mest kjente er https, men et uendelig antall med proprietære løsninger og protokoller bruker sertifikater

3a)
---
Malware er definert som malicious software, det vil si ondsinnet programvare

malware har blitt delt inn i virus, ormer og trojanere, men man kan også anse teknikken rootkit som en egen form for malware. 
Payloads er ofte obscured og skrevet i unreadable code, så det skal være "vanskelig" å lese hva en eventuell kode gjør.

3b)
---
Patche et system fjerner man et kjent sikkerhethull. 0-day security threats, etc.


3c)
---
Et AV program har en database med signaturer som beskriver viruset, signaturene kan være hash av hele eller deler av filen, eller en sekvens av bytes på gitte steder inne i en fil

Et AV program kan også stoppe filer ved hjelp av heiristics eller oppførsel, eller etter å ha kjørt viruset i et virtuelt miljø eller en sandbox

En infisert fil vil typisk bli kopert til en karantene for å uskadeliggjøres, og så vil enten filen renses (filinfektor) eller slettes (orm, trojaner)

3d)
Er du trygg hvis du har oppdatert AV program?
NEI. Selvfølgelig ikke. Man er aldri trygg, uansett. 

AV program er som regel nok, for vanlige privatpersoner
Bedrifter bør i prinsinippet ha et mer skredderskydd opplegg. Sandbox env, dele opp nettverk,
firewall/AV etc etc

4a)
Hva er cross site scripting? XCSS

I cross site scripting vil en angriper sende data til en webserver som når den blir vist for andre blir tolket av webserveren som et script som skal kjøres, på den måten for angripern (en site) kjørt script på en annen site (cross site) mot offeret

Truslene er at ondsinnede script kan kjøres på offeret..


4b)
Hva er IP spoofing?

IP spoofing er å forfalske avsenders IP addresse i en IP-pakke

dette brukes ofte i DoS (Denial Of Service) angrep hvor man prøver å få andre maskiner til å svare "feil"
og retunrere det til fake avsender (DDOS BCAST DOSING)


4c)
hvis en side ikke vasker input til en en nettside og input brukes i et script så kan en angriper påhvirke hvilken kode som faktisk kjøres
en webside som tar arg ID slik:
showdetails.php?ID=1
og så kjører SQL statement:
SELECT * FROM Data Where ID = ID

så vil en angriper som senders ID slik:
showdetails.php?ID=1; union select password from users

resultere i at servern kjører følgene kode:
SELECT * FROM Data WHERE ID =1;
UNION SELECT PASSWORD FROM USERS;

på denne måten kan en angriper kjøres SQL statements på servereren, som han selv sender over.
Dette er SQL INJECTION


4d)
Hva er heartbleed?
DET ER IKKE DEL AV PENSUM
