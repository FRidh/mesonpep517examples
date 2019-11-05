from setuptools import setup, Extension, find_packages

module1 = Extension('greetpkg/greet', sources = ['greetpkg/greet.c'])

setup(
    name = 'greetpkg',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = [ module1 ],
    packages=find_packages("."),
    entry_points = {
        "console_scripts": [
            "greet = greetpkg.__main__:main",
        ]
    }
)
