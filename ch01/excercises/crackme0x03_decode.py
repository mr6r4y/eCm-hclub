#!/usr/bin/env python


import argparse
import sys


def get_args():
    parser = argparse.ArgumentParser(description=("crackme0x03 string decoder"))

    args = parser.parse_args()

    return args


def main():
    args = get_args()

    s = sys.stdin.read()
    if s is not None:
        print ''.join([chr(ord(i) - 3) for i in s.strip()])


if __name__ == '__main__':
    main()
