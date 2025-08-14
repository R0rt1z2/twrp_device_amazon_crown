#!/sbin/sh

REAL_LK=`readlink -f /dev/block/platform/soc/by-name/lk`
REAL_TEE1=`readlink -f /dev/block/platform/soc/by-name/tee1`
REAL_TEE2=`readlink -f /dev/block/platform/soc/by-name/tee2`
REAL_SWDL=`readlink -f /dev/block/platform/soc/by-name/swdl`

rm /dev/block/platform/soc/by-name/lk
rm /dev/block/platform/soc/by-name/tee1
rm /dev/block/platform/soc/by-name/tee2
rm /dev/block/platform/soc/by-name/swdl

ln -s $REAL_LK /dev/block/platform/soc/by-name/lk_real
ln -s $REAL_TEE1 /dev/block/platform/soc/by-name/tee1_real
ln -s $REAL_TEE2 /dev/block/platform/soc/by-name/tee2_real
ln -s $REAL_SWDL /dev/block/platform/soc/by-name/swdl_real

ln -s /dev/null /dev/block/platform/soc/by-name/lk
ln -s /dev/null /dev/block/platform/soc/by-name/tee1
ln -s /dev/null /dev/block/platform/soc/by-name/tee2
ln -s /dev/null /dev/block/platform/soc/by-name/swdl

mkdir -p /dev/block/platform/mtk-msdc.0/
ln -s /dev/block/platform/soc /dev/block/platform/mtk-msdc.0/11230000.MSDC0
