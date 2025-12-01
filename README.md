#  Snow Nginx — SaltStack Miniprojekti Antti ja Konsta

## Projektin tarkoitus  
Tämä projekti asentaa Nginx-palvelimen ja julkaisee oman HTML-sivun automaattisesti SaltStackin avulla tyhjään Debian 12 -virtuaalikoneeseen.  
Tavoitteena on demonstroida idempotenttia, modernia ja toistettavaa palvelinhallintaa (“infra as code”).

---
## Miksi

Päätettiin tehdä mahdollisiman helppo projekti, joka vastaa tehtävän antoa.

Lisäämäni personoidut elementit:
- oma HTML-sivu, jossa näkyvät tekijät ja kurssi
- siistitty HTML-rakenne ja kevyt ulkoasu
- parannettu README-ohjeistus ja visualisointi
- selkeä kuvaus idempotenssista ja projektin arkkitehtuurista



##  Lopputuloksen ruutukaappaus  

- Tein pojektille kansion
- ![alt text](projekti1.jpg). 
- Tein salitlle top kansion, jotta salt tietää mitä ajaa
- ![alt text](projekti2.jpg).
- Top tiedosto
- ![alt text](projekti3.jpg)
- Tiedosto joko saltin kuuluu ajaa eli nginx, joka asentaa nginx palvelimen, käynnistää sen ja kopio HTML sivun
- ![alt text](projekti4.jpg)
- ![alt text](projekti5.jpg)
- Tässä näkyy idempotentti
- ![alt text](projekti8.jpg)
- ![alt text](projektiidempotentti.jpg)
- ![alt text](projekti6.jpg)
- ![alt text](projektiindexnano.jpg)
- ![alt text](projektiindexsivu.jpg)
- ![alt text](projektireadmenano.jpg)


![Demo](screenshot.png)

---

## Käyttöönotto

###  Lataa projekti
```bash
git clone https://github.com/Vauzao/miniprojekti.git
cd miniprojekti

