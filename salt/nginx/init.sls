nginx:
  pkg.installed:
    - name: nginx

  service.running:
    - name: nginx
    - enable: true
    - require:
      - pkg: nginx

/var/www/html/index.html:
  file.managed:
    - source: salt://nginx/index.html
    - user: root
    - group: root
    - mode: '644'
    - require:
      - pkg: nginx
