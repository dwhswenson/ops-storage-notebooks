#!/bin/bash

failure=0

./download-file.sh || failure=1

py.test --pyargs openpathsampling.experimental \
        --cov=openpathsampling.experimental \
        --cov-report=xml:unit.xml || failure=1

py.test --nbval-lax --cov=openpathsampling.experimental \
        --cov-report=xml:integration.xml \
        tests/01_sql_play.ipynb \
        tests/02_toy_serialization.ipynb \
        tests/03_toy_storage.ipynb \
        tests/04_registering_snapshots.ipynb \
        tests/05_toy_snapshot_deserialization.ipynb \
        tests/06_full_ops_schema.ipynb \
        tests/07_storage_tables.ipynb \
        tests/08_reloading.ipynb \
        tests/09_storable_functions.ipynb \
        tests/10_result_typing.ipynb \
        tests/11_openmm_snapshots.ipynb \
        || failure=1

if [ $failure -eq 1 ]; then
    exit 1
fi
