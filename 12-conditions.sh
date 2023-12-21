- name: conditions
  hosts: localhost
  tasks:
  - name: check user id exist or not
    ansible.builtin.command: id roboshop
    register: user
    ignore_errors: true

  - name: print variable value
    ansible.builtin.debug:
     msg: "user is {{user}}"