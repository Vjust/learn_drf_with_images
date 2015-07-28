    sudo -u postgres psql --command="CREATE USER learn_drf_with_images WITH PASSWORD 'learn_drf_with_images';"
    sudo -u postgres psql --command="CREATE DATABASE learn_drf_with_images WITH OWNER learn_drf_with_images;"
    sudo -u postgres psql --command="GRANT ALL PRIVILEGES ON DATABASE learn_drf_with_images TO learn_drf_with_images;"
