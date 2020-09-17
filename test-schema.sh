#!/bin/bash

if [ ! -f tests/toy_mstis_1k_OPS1_py36.nc ]; then
    curl -OLk http://www.dropbox.com/s/1ulzssv5p4lr61f/toy_mstis_1k_OPS1_py36.nc
    mv toy_mstis_1k_OPS1_py36.nc tests/
fi

py.test --pyargs openpathsampling.experimental.storage \
        --cov=openpathsampling.experimental.storage

py.test --nbval-lax --cov=openpathsampling.experimental.storage --cov-append \
        tests/01_sql_play.ipynb \
        tests/02_toy_serialization.ipynb \
        tests/03_toy_storage.ipynb \
        tests/04_registering_snapshots.ipynb \
        tests/05_toy_snapshot_deserialization.ipynb \
        tests/06_full_ops_schema.ipynb \
        tests/07_storage_tables.ipynb
