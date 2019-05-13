
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



DIGITAL SIGNATURE
-------------------
Skal man signere, bruker man private key (dette er i prinsippet slik hashes lages). 
Skal man kryptere, bruker man public key.

- Digitale signaturer baserer seg på assymetrisk kryptering (public/private key kryptering)

Man lager en hash (en sjekksum) av data, og krytperer dette med sin PRIVATE KEY - dette kalles "signering"

Nå kan alle i hele verden "dekryptere" sjekksummen (så den er ikke kryptert i betydningen konfidensiell), men ved at man klarer å dekryptere sjekksummen så beviser man at den var signert (kryptert) med sin PRIVATE KEY.

Secret Key (AKA) Private key -- F.eks i AES 128 kryptering så brukes det en Secret Key, som det er en ukjent key, en key som kun blir gitt til de menneskene som skal ha tilgang til data som er kryptert.



KRYPTERINGSMODUSER I AES
--------------------- 
- ECB er standard modus til AES
- En av de to viktigste modusene er ECB (electronic code book)
- Er den enkleste
- deler opp blokkene, og krypteres likt. enkelt å gjennomføre

Styrke:
- tillater parallell kryptering og dekryptering av blokker
- taps-tollerant fordi om en blokk går tapt er de andre intakte

Svakheter:
- Noen dokumentformater og bilder egner seg ikke for ECB kryptering fordi mønstrene i klarteksten kan reflekteres på avstand.

- Får man tak i Secret Key, så kan man dekryptere alle pakkene, fordi de bruker samme key
- Enklest å cracke

---------------------------------------------
CBC - Cipher Block Chaining


Styrker: 
- Avslører ikke mønstre i klarteksten
- Er den vanligst brukte
- Relativt rask og enkel

Svakheter:
CBC krever pålitelig 
-------------------------------------------------
DH (Diffie Hellman) og RSA - er de sikre i dag?

- Spørsmålet er om DH og RSA er sikre i dag?

- Forutsatt at nøklene er store nok er både DH og RSA definert som sikre, men det er noen svakheter i DH som gjør at man praksis sier at "ren" DH ikke er sikker


-------------------------
Hvor trygt er egentlig RSA?

- RSA-768bit

- Et Semi-primtall (et tall som er ett produkt av to nesten jamstore primtall)

- 768bit - 232 desimalsiffer (skriver du ett tall i sekundet bruker du 4 minutter på å punche disse tallene)
- faktorisering ville tatt ca 2000 år på en 2.2 ghz prosessor, men ble gjennomført som et samarbeid mellom flere forskningsinstitutter over to år.

- Merk: VI BRUKER --IKKE-- SÅ SMÅ NØKLER SOM 768 BIT I DAG, VI BRUKER 4096x2 bits
---------------------------------

Hvordan hold OSet trygt?

- Bruk et operativsystem med sikkerhetsoppdatering og support.
- Installere patcher, helt automatisk
- Ikke installere ukjent software, eller software med usikre kilder
- Ha installert AV program og personlig firewall
- Som siste forvarsel, ta backup (er du paranoid tar du backup til en online tjeneste, og så tar du i tillegg regelmessig kopi av alle filer den eksterne harddisk som du oppbevarer i en safe)
- BitDefender er anbefalt som AV-program til Windows 10, MacOSx, Linux og Android

KRYPTERING BASERT PÅ ET RANDOM TALL
------------------------------------
- Er ofte brukt i moderne applikasjoner. Gjerne basert på random tall eller en kombinasjon av random tall og random ascii characters eller lignende.


Eksempel DH KEY EXCHANGE: Basis for D-H nøkkelutveksling
-----------------------
- Divisjon er ikke vanskelig nok
- Vi tror at diskrete logaritmer er tilsrekkelig vanskelig
- Starter med å velge en basis (f.eks) og en modulus (f.eks 11 - må være primtall)


RSA: NØKKELVALG
-------------------
- Velg to store primtall p,q (f.eks 1024 bit, dvs min 100 desimale siffer hver)


RSA: Krypt/dekrypt
-------------------
- Må kunne vise formel for dekrypter og krypteringsnøkkel'


SSL/TLS ved OpenSSL
-------------------
- Ved å implemtnere av TLS og eller kryptosystemer (i c/c++) anbefales det å brukes openssl-biblioteket
- Hvis du har kontroll på både server og klient kan du begrenser cipher suites til de sikreste
- Eksempel på cipher suite format i TLS 1.2

DEFORMATINGER av cipher suite format i TLS 1.2:
"TLS_ECDEHE_RSA_WITH_AES_128_GCM_SHA256"

Key exchange ECC (ecdhe)
(Server) authentication: RSA
Encryption: AES 128 bit, GCM mode
Message Authentication Code: SHA256



SHA - Secure Hash Algorithm
----------------------------
- Utviklet ved NSA og godkjent av NIST
- SHA-0 og SHA-1 er usikre. Mindre sårbar enn MD5, fremdeles i bruk, 160-bit
- SHA-2 (256 bits), mest brukt i dag


Smurfe-angrep
---------------------------
Broadcast ICMP angrep (med ip spoofing)

Sårbarheter i IP (v4)
------------------------------
- Ukryptert overføring
- Ingen avsender-autentisering
- Ingen integritets-testing
- Ingen bitrate-retriksjoner  (kan injisere vilkårlige mengder pakker inn i et nett, har broadcast, så DoS med ICMP broadcast DoSing er mulig)


Klassiske definisjoner (historisk)
----------------------------------
- Vi kan dele malware opp i ulike typer ut fra hvordan den spres og hvordan den skjuler seg

SPREDNING:
- VIRUS: 
- ORM: sprer seg gjerne over nettverk, via epost osv. Ikke et virus siden de ikke infiserer eller gjør endringer lokalt 

SKJULE SEG:
- ROOTKIT
- TROJANER

PAYLOAD:
- ALT FRA HUUMOR OG IRRITASJON TIL RAN 




