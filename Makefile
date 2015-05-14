ANSIBLE_PLAYBOOK_CMD = ansible-playbook
ANSIBLE_INVENTORY_FILE = inventories/production
ANSIBLE_SITE_PLAYBOOK_FILE = site.yml
ANSIBLE_SETUP_PLAYBOOK_FILE = setup.yml

apply:
	$(ANSIBLE_PLAYBOOK_CMD) --ask-sudo-pass --ask-vault-pass --inventory-file $(ANSIBLE_INVENTORY_FILE) $(ANSIBLE_SITE_PLAYBOOK_FILE)

setup:
	$(ANSIBLE_PLAYBOOK_CMD)--ask-pass --inventory-file $(ANSIBLE_INVENTORY_FILE) $(ANSIBLE_SETUP_PLAYBOOK_FILE)

test:
	$(ANSIBLE_PLAYBOOK_CMD) --syntax-check --inventory-file $(ANSIBLE_INVENTORY_FILE) $(ANSIBLE_SITE_PLAYBOOK_FILE)
