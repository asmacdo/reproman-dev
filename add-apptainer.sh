set -eu
# pushd /tmp
wget https://github.com/apptainer/apptainer/releases/download/v1.1.4/apptainer_1.1.4_amd64.deb
apt-get install -y ./apptainer_1.1.4_amd64.deb
# popd
