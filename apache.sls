install_apache:
  pkg.installed:
    - name: apache2

start_apache:
  service.running:
    - name: apache2
    - enable: True

welcome_page:
  file.managed:
    - name: /var/www/html/index.html
    - content: |
        <!doctype html>
        <body><h1>Hello Friend </h1></body>
        </html>
