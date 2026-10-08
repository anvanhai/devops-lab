# Ansible Web Server

Dung Ansible tu dong cai Nginx va deploy website tren 2 Ubuntu server (web01, web02).

## Yeu cau
- Ansible tren control node
- 2 Ubuntu server SSH duoc bang key ~/.ssh/id_rsa
- Sua IP that cua 2 server trong file inventory

## Cau truc
- inventory: danh sach server
- ansible.cfg: cau hinh Ansible
- site.yml: playbook chinh
- group_vars/webservers.yml: bien (server_message, web_root)
- roles/web/tasks/main.yml: cac task (update, cai Nginx, deploy website)
- roles/web/handlers/main.yml: handler restart Nginx
- roles/web/templates/index.html.j2: template trang web

## Bien
- server_message: thong diep hien tren website
- web_root: thu muc chua website

## Cach chay

    ansible all -m ping
    ansible-playbook site.yml
    ansible-playbook site.yml

Lan 1 co nhieu task changed. Lan 2 changed=0 (idempotent).
Mo trinh duyet vao http://IP_cua_tung_server de xem website.
