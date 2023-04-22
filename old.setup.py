# !/usr/bin/env python3

import os
import json


# setup environment
with open('./setup_config.json') as file:
    setup_config = json.load(file)

os.system(f"mv {setup_config['config']['config_file']['default_file']} ./{setup_config['config']['config_file']['name']}")


# install packages
setup_files_path = "./setup-files"

with open(f'{setup_files_path}/packages.json') as file:
    packages_to_install = json.load(file)

for package_type in packages_to_install:
    for package in packages_to_install[package_type]:
        if package[-3:] == ".sh":
            use_script = True
            package = package[:-3]

        print(f'installing {package}')
        os.system(f'bash {setup_files_path}/packages/{package_type}/{package}')