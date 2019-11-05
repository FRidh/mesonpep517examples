# `mesonpep517examples`

This repo contains examples of how to use Meson as a PEP 517 build system.

## `greetpkg`

Currently, only one example exists. The project builds a small shared library
which an entry point `bin/greet` uses.

The example shows a "classic" build using [`setuptools`](https://github.com/pypa/setuptools), as well as a PEP 517 build utilizing [`meson`](https://mesonbuild.com) as a build system using the [`mesonpep517`](https://gitlab.com/thiblahute/mesonpep517) package.

The `setuptools` version can be build using

    python setup.py bdist_wheel

and the `meson` version using

    pip wheel .

Additionally, a Nix expression is included that allows one to build both using

    nix-build -A meson
    nix-build -A setuptools
