# ❄️ Snow Nginx — SaltStack Demo Project

## Purpose
Deploy an Nginx server and a custom HTML page automatically using SaltStack on Debian 12.

## How to Run
```bash
sudo salt-call --local --file-root salt/ state.apply
