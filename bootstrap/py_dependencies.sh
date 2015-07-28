pyvenv-3.4 --without-pip learn_drf_with_images_venv
source learn_drf_with_images_venv/bin/activate
curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python

pip install -r learn_drf_with_images/requirements.txt
cd learn_drf_with_images/learn_drf_with_images/

python manage.py migrate
