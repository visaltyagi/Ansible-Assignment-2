cd /tmp
sudo nano assignment2.sh
echo "This text has been added by custom script" > /tmp/1.txt
bash assignment2.sh
ls
sudo nano play2.yaml  
Script:
---
- name: creating the file using script
  hosts: all
  become: true
  tasks:
  - name: running script
    script: assignment2.sh
ansible-playbook play2.yaml --syntax-check
ansible-playbook play2.yaml --check
ansible-playbook play2.yaml
cd /tmp
ls
cd /tmp
ls
