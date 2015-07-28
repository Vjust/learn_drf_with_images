    echo '
# learn_drf_with_images.conf

upstream django {
  server 127.0.0.1:8000;
}

server {
  listen      80;
  server_name 127.0.0.1 localhost learn-drf-with-images learn-drf-with-images.local;
  charset     utf-8;

  client_max_body_size 75M;   # adjust to taste

  location /media  {
      alias /home/vagrant/learn_drf_with_images/learn_drf_with_images/media;
  }

  location /static {
      alias /home/vagrant/learn_drf_with_images/learn_drf_with_images/static;
  }

  location / {
      proxy_pass       http://django;
      proxy_redirect   off;
      proxy_set_header Host $host;
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Host $server_name:8000;
  }
}
    ' > /etc/nginx/conf.d/learn_drf_with_images.conf

service nginx reload
