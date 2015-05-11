apply:
	ansible-playbook --ask-sudo-pass --inventory-file inventories/production site.yml

setup:
	ansible-playbook --ask-pass --inventory-file inventories/production setup.yml
