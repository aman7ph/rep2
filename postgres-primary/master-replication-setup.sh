#!/bin/bash
set -e
cat >> “${PGDATA}/pg_hba.conf” << EOF
  host replication ${DB_REP_USER} 0.0.0.0/0 md5
EOF
cat >> ${PGDATA}/postgresql.conf << EOF
  wal_level = replica
  wal_keep_segments = 64
  max_wal_senders = 10
  hot_standby = on
EOF