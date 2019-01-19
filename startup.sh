#!/bin/bash

docker exec -d appd-platform /bin/sh -c "/opt/appdynamics/platform/platform-admin/bin/platform-admin.sh start-platform-admin"
sleep 30
docker exec appd-platform /bin/sh -c "/opt/appdynamics/platform/platform-admin/bin/platform-admin.sh login -u admin -p appdynamics"
docker exec appd-platform /bin/sh -c "/opt/appdynamics/platform/platform-admin/bin/platform-admin.sh submit-job --service Controller --job mysql_start"
docker exec appd-platform /bin/sh -c "/opt/appdynamics/platform/platform-admin/bin/platform-admin.sh submit-job --service Controller --job start"

exit 0
