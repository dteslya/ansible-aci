# ansible-aci
Ansible playbook to create EPGs in Cisco ACI.
Playbook consists of 2 plays:
* First play reads XLSX file (`aci.xlsx` by default) and populates `vars/vars.yml` file.
* Second play connects to ACI and does all the work

## Requirements
* Ansible >= 2.7.9
* Docker (optional)
* Vagrant (optional)
* Virtualbox (optional)

## Usage
1. Rename `hosts.ini.sample` to `hosts.ini` and edit accordingly
2. Rename `aci.xlsx.sample` to `aci.xlsx`
3. Populate `aci.xlsx`
4. Run playbook

### Running natively
`ansible-playbook -i hosts.ini playbook.yml`

### Running in docker
`./ansible-helper.sh playbook.yml`

### Running in vagrant box
```bash
cd vagrant
vagrant up
vagrant ssh -c "cd ansible-aci; ./ansible-helper.sh playbook.yml"
```

### Populating XLSX
TODO