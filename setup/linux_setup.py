import subprocess
import sh


def linux_setup():
    is_config = create_config_file()


def create_config_file():
    # return boolean value based if user want to create config file or not
    # also setups config.sh file

    print("do you want create config file or use default?")
    print("""
0. don't use config file
1. use default
2. create empty config file (setup need)""")
    inpt = input("? ")

    while inpt not in ["0", "1", "2"]:
        inpt = input("please select from 0, 1, or 2: ")

    inpt = int(inpt)

    if inpt in [0, 1]:
        return bool(inpt)

    return setup_config_file()


def setup_config_file():
    try:
        subprocess.run('mv', './config.sh', 'old.config.sh')

    except ValueError:
        return False
    return False

if "__name__" == "__main__":
	linux_setup()
