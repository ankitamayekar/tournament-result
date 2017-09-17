# Tournament-result

In this project, a Python module is written that uses the PostgreSQL database to keep track of players and matches in a game tournament.

The game tournament uses the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.

VirtualBox installation (https://www.virtualbox.org/wiki/Downloads)
Vagrant installation (https://www.vagrantup.com/downloads)
Clone of Vagrant VM for ud197 (git clone https://github.com/udacity/fullstack-nanodegree-vm)
To run the test suite (exercising all of the Python functions for the tournament database):

From a GitHub shell:

cd fullstack-nanodegree-vm/vagrant
vagrant up
vagrant ssh
cd /vagrant/tournament
psql -f tournament.sql
python tournament_results.py
