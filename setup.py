from setuptools import setup, find_packages

setup(
    name='open_plugin',
    version='1.0',
    packages=find_packages(),
    entry_points={
        'horizon.dashboard': [
            'open_plugin = open_plugin.extensions:OpenPluginExtension',
        ],
    },
)