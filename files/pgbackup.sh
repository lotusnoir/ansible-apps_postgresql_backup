#!/bin/bash

set -eux

#Create current backup dir
BACKUPBASEDIR=/data/pgsql_backup
BACKUPDIR=${BACKUPBASEDIR}/$(date +%Y%m%d-%H%M%S)
mkdir -p ${BACKUPDIR}

#dump function
dump_db(){
    DUMPNAME=${BACKUPDIR}/${PGDATABASE}
    pg_dump $PGDUMP_OPTIONS -Fd -j 4 -O -f ${DUMPNAME}.dump && \
        tar -cf ${DUMPNAME}.dump.tar -C ${BACKUPDIR} ${PGDATABASE}.dump && \
        rm -rf ${DUMPNAME}.dump
}

#for each bdd set for backup
while read line; do
    for envvar in $line; do
        export $envvar
    done
    dump_db
done < /etc/pgbackups.conf

#Set a symbolic link with last backup
if [[ -L "${BACKUPBASEDIR}/last_postresql_backup" && -d "${BACKUPBASEDIR}/last_postresql_backup" ]]; then
    rm ${BACKUPBASEDIR}/last_postresql_backup
fi

#rm ${BACKUPBASEDIR}/last_postresql_backup
ln -s ${BACKUPDIR} ${BACKUPBASEDIR}/last_postresql_backup
