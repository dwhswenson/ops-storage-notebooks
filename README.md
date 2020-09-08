# ops-storage-notebooks

Jupyter notebooks for the new OpenPathSampling storage.

The new OPS storage is slowly adding a full set of unit tests; however, much of
code was developed by testing against these notebooks. Additionally, these
notebooks can serve as usage examples.

The best way to run these as (smoke) tests is to install pytest and nbval,
e.g., with conda:

```
conda install -c conda-forge pytest nbval
```

You will also need some pre-generated test data:

```
curl -OLk http://www.dropbox.com/s/1ulzssv5p4lr61f/toy_mstis_1k_OPS1_py36.nc
```

Then the tests can be run with:

```
py.test --nbval-lax *ipynb
```
