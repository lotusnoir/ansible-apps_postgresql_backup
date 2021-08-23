# Ansible Role: ansible-apps_postgresql_backup

## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_postgresql_backup.svg?branch=master?style=flat)](https://travis-ci.com/lotusnoir/ansible-apps_postgresql_backup)
[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen?style=flat)](https://opensource.org/licenses/Apache-2.0)
[![Ansible Role](https://img.shields.io/badge/galaxy-apps_postgresql_backup-purple?style=flat)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
![GitHub repo size](https://img.shields.io/github/repo-size/lotusnoir/ansible-apps_postgresql_backup?color=orange&style=flat)
![Ansible Quality Score](https://img.shields.io/ansible/quality/52260)
[![downloads](https://img.shields.io/ansible/role/d/52260)](https://galaxy.ansible.com/lotusnoir/apps_postgresql_backup)
[![Version](https://img.shields.io/github/release/lotusnoir/ansible-apps_postgresql_backup.svg)](https://github.com/lotusnoir/ansible-apps_postgresql_backup/releases/) 
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_postgresql_backup&metric=alert_status)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_postgresql_backup)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_postgresql_backup&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_postgresql_backup)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_postgresql_backup&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_postgresql_backup)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_postgresql_backup&metric=security_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_postgresql_backup)


Deploy [postgresql_backup](https://github.com/momorientes/postgresql_backup) to expose patroni metrics to prometheus.

## Role variables

| Name                     | Default Value                | Description                           |
| ------------------------ | ---------------------------- | --------------------------------------|
| `postgresql_backup_port` | 9120                         | port to expose prometheus metrics     |
| `patroni_web_url`       | https://patroni.example.net | web url of the patroni application   |

## Examples

	---
	- hosts: apps_postgresql_backup
	  become: yes
	  become_method: sudo
	  gather_facts: yes
	  roles:
	    - role: ansible-apps_postgresql_backup
	  environment: 
	    http_proxy: "{{ http_proxy }}"
	    https_proxy: "{{ https_proxy }}"
	    no_proxy: "{{ no_proxy }}


## Grafana Dashboard

You can find a grafana dashboard [here](https://grafana.com/grafana/dashboards/13556)


## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.
