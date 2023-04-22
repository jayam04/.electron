#!/usr/bin/env python3

import json



def get_setup_config(filepath):
    with open(filepath) as file:
        data = json.load(file)
    return data


def create_config_file(config):
    pass


def install_packages(filepath):
    pass


def install_themes():


def main():
    setup_config = get_setup_config('./setup.json')

    create_config_file(setup_config)

    install_packages()

    install_themes()


main()