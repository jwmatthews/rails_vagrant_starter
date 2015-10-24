yum -y install epel-release postgresql-server postgresql-contrib postgresql-devel
postgresql-setup initdb
cp /vagrant/setup/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
systemctl start postgresql
systemctl enable postgresql

yum -y install nodejs
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install 2.2
rvm use 2.2 --default
gem install bundler
gem install nokogiri
gem install rails


