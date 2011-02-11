#!/bin/bash
HTTP_GROUP='http'
CONFIG_FILE='/srv/http/store/config.php'
ADMIN_FILE='/srv/http/store/admin/config.php'
sudo chgrp --verbose ${HTTP_GROUP} ${CONFIG_FILE}
sudo chgrp --verbose ${HTTP_GROUP} ${ADMIN_FILE}
chmod --verbose 664 ${CONFIG_FILE}
chmod --verbose 664 ${ADMIN_FILE}

ls -l ${CONFIG_FILE}
ls -l ${ADMIN_FILE}

change_permission () {
    FILE="$1"
    ls -ld ${FILE}
    sudo chgrp --verbose ${HTTP_GROUP} ${FILE}
    sudo chmod --verbose 775 ${FILE}
    ls -ld ${FILE}
}

change_permission '/srv/http/store/system/cache'
change_permission '/srv/http/store/system/logs'
change_permission '/srv/http/store/image'
change_permission '/srv/http/store/image/cache'
change_permission '/srv/http/store/image/data'
change_permission '/srv/http/store/download'
