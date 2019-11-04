# https://mesonbuild.com/Python-module.html

# Build and install the extension module
module = python.extension_module(
    'greet', # Name of the module
    [  # List of sources
        'greet.c' 
    ],
    install: true,  # Install it
    dependencies: [ # List of dependencies
        python.dependency() # Add Python.h as dependency
    ],
    subdir: 'greetpkg', # Folder relative to site-packages to install to
)

# Pure Python sources
python_sources = [
    '__init__.py', 
    '__main__.py', 
]

# Install pure Python
python.install_sources(
    python_sources,
    pure: false, # Will be installed next to binaries
    subdir: 'greetpkg'  # Folder relative to site-packages to install to
)
