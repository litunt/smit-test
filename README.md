Library backend application
===========================

Tegemist on Raamatukogu rakenduse *backend* osaga, mille peale on võimalik ehitada kasutajapoolne ehk *frontend* osa.
Rakendus võimaldab hallata nii raamtuid, kui ka laenutajaid. See tähendab seda, et teatud õigusteda töötajatel on
võimalik teostada tegevused nii raamatutega, kui ka laenutajatega. Näiteks, küsida andmed raamatukogus olevatest
raamatutest, saada ülevaade üle tähtaja läinud laenutustest, lisada või otsida raamatut või laenutajat.

Struktuur
---------

**main** kausta sisu:

* config - sinna lähevad kõik konfigureerimis koodi osad, praegusel hetkel selleks on *SecurityConfig*

* controller - kõikide rakenduse kontrollerite kogum: 
    - *BookController* - võtab vastu kõik raamtutega seotud tegevuste päringud: lisamine, üldise seisu ülevaade,
    kõikide raamatute kuvamine, raamatu otsing ning raamatu kustutamine
    - *BorrowerController* - võtab vastu kõik laenutajatega seotud tegevuste päringud: uue laenutaja lisamine süsteemi ning
    laenutaja otsing nime järgi
    - *BorrowingController* - töötleb kõik laenutamise protsessiga seotud päringud: kuvab kõik toimunud laenutused,
    kuvab kõik üle tähtaja läinud laenutused, võimaldab tagastada või anda raamatut.
    
* service - päringute töötlemise loogika kiht. On olemas kontrolleritele vastavad *service*-id, mis töötlevad päringut, 
päringu järgi leitud andmed ning tagastavad tulemuse soovitud kujul. (*BookService*, *BorrowerService*, *BorrowingService*).
Kõik toimuvad tegevused logitakse konsooli.

* dao - kaust, kus asuvad liidesed, mis seovad loogika ja andmebaasi päringute kihte (*BookDao*, *BorrowerDao*, *BorrowingDao*).

* model - kaust, mis sisaldab kõik rakenduses kasutatavad andmemudelid: *Book*, *BookReport*, *Borrower*, *Borrowing*, 
*LibraryWorker*, *Role*.

**resources** kausta sisu:

* dao - siin asuvad *.xml* failide kujul mapperid, millele on liigipääs DAO liidesel meetodi nime kaudu. Seal on kirjeldatud
kõik andmebaasi päringud ning tagastatavate objektide mudelid.

* db - kõik andmebaasi loomise ja muudatuste skriptid (kõik jälgitakse *liquibase* abil).
   - *schema* kaustas on andmebaasi skeemi, tabelite ja objektide loomise laused
   - *data* kaustas on algandmete sisestamise laused


