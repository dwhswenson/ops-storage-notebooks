# ops-storage-notebooks

Jupyter notebooks for the new OpenPathSampling storage.

The new OPS storage is slowly adding a full set of unit tests; however, much of
code was developed by testing against these notebooks. Additionally, these
notebooks can serve as usage examples.

The new storage will add a new requirement to OPS: SQLAlchemy. Install with,
e.g., `conda install -c conda-forge sqlalchemy`.

## Running the examples

TODO

## Running the test notebooks

Test notebooks, in the `tests/` directory, can also be useful to for usage, but
tend to look at more fine-grained aspects of the system. They're useful for
exploring the details of how the code functions. And, of course, they are smoke tests.

To run the notebooks as tests, you'll should install pytest and nbval (and, to
use the simple scripts provided, you should also install pytest-cov. For
example, with conda:

```
conda install -c conda-forge pytest nbval pytest-cov
```

The you can use one of the simple scripts to run tests. Which one you run
depends on which branch you're testing:

* `dwhswenson/storage` : `test-schema.sh`
* `dwhswenson/storable_functions`: `test-storable-funcs.sh`

The simple scripts will automatically download an old-style storage file for
use in some of the tests. If you want to download it manually, [here is a
link](http://www.dropbox.com/s/1ulzssv5p4lr61f/toy_mstis_1k_OPS1_py36.nc).
