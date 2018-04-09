#!/bin/bash
set -x -e

echo "Installing anaconda version 3.5.1.0"
sudo wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh  -b -p /home/ec2-user/anaconda
echo "Exporting conda path"
export PATH="/home/ec2-user/anaconda/bin:$PATH"
jupyter notebook --generate-config
echo "c = get_config()" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.notebook_dir = '/home/ec2-user'" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 8888" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.LocalAuthenticator.create_system_users = True" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.token = u''" >> /home/ec2-user/.jupyter/jupyter_notebook_config.py


