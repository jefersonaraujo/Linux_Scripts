#!/bin/bash
#Responsavel: Jeferson Araujo
#Email: jefersonaraujo95@gmail.com

DATA=`date`
backup="/mnt/backup"
local=`findmnt $backup | wc -l`
# Dados do arquivo de backup
DIRETORIO="/home"
#O local esta montado ?
if [ ! $m -eq 0 ]; then
#caso sim
#rsync basic

exit 1
else

echo -e "Particao de Backup não montada. - $DATA" >> /var/log/backup.log
fi
exit 0
