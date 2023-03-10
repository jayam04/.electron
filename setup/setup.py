#!/usr/bin/env python3

from linux_setup import linux_setup
from windows_setup import windows_setup


os_names = {
	"1": "Linux",
	"linux": "Linux",
	"2": "Windows",
	"windows": "Windows"
}

print("1. Linux")
print("2. Windows")
os = input("Select Operating System: ").lower()
	
while os not in ["1", "2", "linux", "windows"]:
	os = input("Sorry, can you be more clear? ").lower()

print("Working on", os_names[os])

if os_names[os] == "Linux":
	linux_setup()
elif os_names[os] == "Windows":
	windows_setup()
