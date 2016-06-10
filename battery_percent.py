#!/usr/bin/env python2
"""
A simple script to determine the battery level of a Macbook Pro
"""
# coding=UTF-8

import subprocess, re

# Color constants
GREEN = '\033[92m'
YELLOW = '\033[93m'
RED = '\033[91m'
BOLD = '\033[1m'
RESET = '\033[0m'


def percentage():
    """
    Prints the batter level (percentage) to stdout

    Formatted to be exactly 5 characters (possible leading whitespace), colored
    based on percentage thresholds (green, yellow, red), and bold if the
    battery is currently charging.
    """
    pmset_output = subprocess.Popen(["pmset", "-g", "batt"],
                                    stdout=subprocess.PIPE).communicate()[0]

    percent_regex, discharging_regex = r'\s*(\d+)%', r'; discharging;'
    percent = int(re.search(percent_regex, pmset_output).group(1))
    is_charging = re.search(discharging_regex, pmset_output) is None

    # Output
    if percent >= 65:
        color_out = GREEN
    elif percent >= 35:
        color_out = YELLOW
    else:
        color_out = RED

    if is_charging:
        color_out = BOLD + color_out

    charge_str = '[' + str(percent) + ']'
    while len(charge_str) < 5:
        charge_str = ' ' + charge_str

    return color_out + str(charge_str) + RESET

if __name__ == '__main__':
    print(percentage())
