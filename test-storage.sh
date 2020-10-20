#!/bin/bash

./download-file.sh

py.test --pyargs openpathsampling.experimental \
        --cov=openpathsampling.experimental \
        --cov-report=xml:unit.xml

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
        tests/09_storable_functions.ipynb
