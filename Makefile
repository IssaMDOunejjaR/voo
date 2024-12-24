all: up 
	
up:
	vagrant up --debug

destroy:
	vagrant destroy -f
	rm -rf .vagrant

re: destroy all
