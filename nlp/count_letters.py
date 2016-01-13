#!/usr/bin/env python

import sys


def main():
  with open(sys.argv[1]) as f:
    print(len("".join(line.strip() for line in f.readlines()
                      if not line.strip().startswith("#"))))


if __name__ == "__main__":
  main()
