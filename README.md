# ansible-apps_postgresql_backup

[![Galaxy Role](https://img.shields.io/badge/galaxy-apps_postgresql_backup-purple?style=flat)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
[![Version](https://img.shields.io/github/release/lotusnoir/ansible-apps_postgresql_backup.svg)](https://github.com/lotusnoir/ansible-apps_postgresql_backup/releases/latest)
[![GitHub repo size](https://img.shields.io/github/repo-size/lotusnoir/ansible-apps_postgresql_backup?color=orange&style=flat)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
[![downloads](https://img.shields.io/ansible/role/d/56095)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
[![Ansible Quality Score](https://img.shields.io/ansible/quality/56095)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen?style=flat)](https://opensource.org/licenses/Apache-2.0)

## Description

Install script to backup sql databases.
## Requirements

none

## Role variables

See [variables](/defaults/main.yml) for more details.

## Examples

        ---
        - hosts: apps_postgresql_backup
          become: true
          become_method: sudo
          gather_facts: true
          roles:
            - role: ansible-apps_postgresql_backup


## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.

## Author Information

- [Philippe LEAL](https://github.com/lotusnoir)
