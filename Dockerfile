# Start with a cloud innovation base tensorflow image with some Python libs preinstalled
FROM cuongdd1/tensorflow

ENV BASE_URL=/apisrv/${APP_SUB_DOMAIN}~${APP_OWNER_ID}/

# Add the scotch py-service
COPY service.py /opt/cloud-apps/
COPY static /opt/cloud-apps/static/

VOLUME /opt/cloud-apps

# Rest API
EXPOSE 5000

# Tell the kernel gateway to load the scotch notebook by default
CMD ["python", "/opt/cloud-apps/service.py"]
