# ❄️ Snow Nginx — SaltStack Miniprojekti  
### Tekijät: Antti ja Konsta

---

## 🧩 Projektin tarkoitus

Tämä projekti asentaa Nginx-palvelimen ja julkaisee oman HTML-sivun automaattisesti SaltStackin avulla tyhjään Debian 13 Trixie -virtuaalikoneeseen.

Projektissa demonstroidaan:

- Nginxin asennuksen automatisointi Saltilla  
- Oman HTML-sivun deployaus  
- Idempotentti Infra-as-Code -kokonaisuus  
- Local-mode Salt (ei master-palvelinta)

---

## 🎯 Miksi?

Halusimme tehdä selkeän, helposti toistettavan miniprojektin, joka täyttää kurssin vaatimukset.  

Lisätyt personoinnit:

- oma HTML-sivu (tekijät + kurssi)  
- UTF-8-tuki ja yksinkertainen ulkoasu  
- selkeä tiedostorakenne  
- parannettu README ja ohjeistus  
- idempotenssin näkyvä todentaminen  

---

## 🚀 Käyttöönotto (kopioi & aja)

```bash
# 1. Lataa projekti
git clone https://github.com/Vauzao/miniprojekti.git
cd miniprojekti

# 2. Aja Salt-tilat (asentaa Nginxin + kopioi HTML-sivun)
sudo salt-call --local --file-root salt/ state.apply

# 3. Avaa sivu selaimessa
# http://localhost

# 4. Projektin tiedostorakenne:
# miniprojekti/
# ├── README.md
# ├── salt/
# │   └── nginx/
# │       ├── init.sls        # Nginx + HTML deploy
# │       └── index.html      # Sivusi, jonka Salt kopioi /var/www/html/index.html
# └── ...

# 5. Muokkaa HTML-sivua
nano salt/nginx/index.html

# 6. Päivitä sivu ajamalla Salt uudelleen
sudo salt-call --local --file-root salt/ state.apply

# 7. Idempotenssin testaus:
#    - Aja Salt kerran:     changed > 0
#    - Aja Salt uudelleen:  changed = 0
