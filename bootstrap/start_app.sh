source /home/vagrant/learn_drf_with_images_venv/bin/activate
cd /home/vagrant/learn_drf_with_images/learn_drf_with_images
gunicorn --bind 127.0.0.1:8000 --daemon --workers 4 learn_drf_with_images.wsgi
