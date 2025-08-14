#!/sbin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin

if strings /dev/block/platform/soc/by-name/MISC | grep -q "wipe_data"; then
    dd if=/dev/zero of=/dev/block/platform/soc/by-name/MISC
    echo "Found --wipe_data, cleared MISC partition" > /tmp/wipe_data.log
fi

/sbin/sh /sbin/fix-bootpatch.sh
/sbin/sh /sbin/fix-symlinks.sh