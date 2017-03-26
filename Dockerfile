FROM jrcs/letsencrypt-nginx-proxy-companion:latest
LABEL org.freenas.interactive="false" \ 
      org.freenas.version="1.4a2" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/etc/nginx/certs\",					\
              \"descr\": \"Path to SSL certificates\"			\
          }								\
      ]"                                 \
      org.freenas.static-volumes="[					\
          {								\
              \"host_path\": \"/var/run/docker.sock\",				\
              \"container_path\": \"/var/run/docker.sock\",				\
              \"readonly\": \"true\"					\
          }								\
      ]"