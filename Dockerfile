FROM oleggorj/ubuntu16.04-ansible

ADD ansible /srv/ansible

WORKDIR /srv/ansible

RUN ansible-playbook -i inventory -c local --skip-tags "service" main.yml

EXPOSE 8080

CMD ["/usr/bin/supervisord"]


