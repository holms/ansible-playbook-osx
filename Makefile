
default:
	ansible-playbook main.yml -i inventory -K

install:
	sudo port -vN selfupdate
	-@toilet -t -f small Installing ansible
	sudo port -vN install python36 py36-pip toilet curl-ca-bundle
	sudo pip install ansible
	-@toilet -t -f small Installing ansible roles
	ansible-galaxy install -r requirements.yml

