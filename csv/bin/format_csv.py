#!/usr/bin/env python

import argparse
import numpy


# classes

def Args():
  arg_parser = argparse.ArgumentParser()
  arg_parser.add_argument("csv_filename")
  arg_parser.add_argument("-f", "--number-format", type=str, default="")
  arg_parser.add_argument("-n", "--nan", type=str, default=str(numpy.nan))
  arg_parser.add_argument("-i", "--inf", type=str, default=str(numpy.inf))
  arg_parser.add_argument("-j", "--negative-inf",
                          type=str, default=str(-numpy.inf))
  return arg_parser.parse_args()


# functions

def load_csv_file(filename, dtype=numpy.float64):
  array = numpy.loadtxt(filename, delimiter=",").astype(dtype)
  return array if array.ndim == 2 else array.reshape((1, array.size))


def format_numbers(numbers,
                   number_format="",
                   nan_string=str(numpy.nan),
                   inf_string=str(numpy.inf),
                   negative_inf_string=str(-numpy.inf)):
  def format_number(number):
    if numpy.isnan(number):
      return nan_string
    elif number == numpy.inf:
      return inf_string
    elif number == -numpy.inf:
      return negative_inf_string
    return ("{" + number_format + "}").format(number)

  return [format_number(number) for number in numbers]



# main routine

def main():
  args = Args()

  array = load_csv_file(args.csv_filename)
  for row in array:
    print(*format_numbers(row,
                          number_format=args.number_format,
                          nan_string=args.nan,
                          inf_string=args.inf,
                          negative_inf_string=args.negative_inf),
          sep=",")



if __name__ == "__main__":
  main()
