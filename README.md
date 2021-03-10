# ops-storage-notebooks

[![Tests](https://github.com/dwhswenson/ops-storage-notebooks/actions/workflows/tests.yml/badge.svg)](https://github.com/dwhswenson/ops-storage-notebooks/actions/workflows/tests.yml)
[![codecov](https://codecov.io/gh/dwhswenson/openpathsampling/branch/storage/graph/badge.svg)](https://codecov.io/gh/dwhswenson/openpathsampling)

Jupyter notebooks for the new OpenPathSampling storage.

The new OPS storage is slowly adding a full set of unit tests; however, much of
code was developed by testing against these notebooks. Additionally, these
notebooks can serve as usage examples.

The new storage will add a new requirement to OPS: SQLAlchemy. Install with,
e.g., `conda install -c conda-forge sqlalchemy`.

In addition, the tests and examples require from an old netcdfplus file. The
test scripts automatically download that file, you can either download manually
[from this
link](http://www.dropbox.com/s/1ulzssv5p4lr61f/toy_mstis_1k_OPS1_py36.nc) or
you can use the `download-file.sh` script to download it.

## Running the examples

Running the example is straightforward. There are a few different notebooks
depending on what you want to do:

* **Setting up a new project**: In this case, you'll want to use as much of
  SimStore as possible. See the notebook `examples/01_simple_usage.ipynb` for
  the most up-to-date recommended approach.
* **Continuing an existing project**: In this case, you'll need to do a few
  things differently in order to load from old-style storage while saving to
  new-style. In particular, CVs are handled differently. See the best approach
  in `examples/02_load_old_cvs.ipynb`.
* ... more to come; note that right now both approaches are pretty similar, but
  the best way for a new project will change over time

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

* `dwhswenson/storage` : `test-storage.sh`
* `dwhswenson/storable_functions`: `test-storable-funcs.sh`

