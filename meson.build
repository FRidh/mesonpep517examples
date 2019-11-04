# https://mesonbuild.com/
project(
    'greetpkg', # Project name
    'c', # Project type. We need a C compiler.
    version: '0.1', # Project version
)

# https://mesonbuild.com/Python-module.html
pymod = import('python')
python = pymod.find_installation(
    required: true,
)
subdir('greetpkg') # Evaluate meson.build in greetpkg/
