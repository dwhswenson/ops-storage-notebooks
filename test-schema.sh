#!/bin/bash

py.test --pyargs openpathsampling.experimental.storage \
        --cov=openpathsampling.experimental.storage

py.test --nbval-lax --cov=openpathsampling.experimental.storage --cov-append \
        01_sql_play.ipynb \
        02_toy_serialization.ipynb \
        03_toy_storage.ipynb \
        04_registering_snapshots.ipynb \
        05_toy_snapshot_deserialization.ipynb \
        06_full_ops_schema.ipynb \
        07_storage_tables.ipynb
