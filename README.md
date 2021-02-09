# TCS

Stands for Technion CS, TCS is a python utility to assist in the Intro to CS course. It can help you format, compile, test, and package your code.

**Note:** Some features aren't available in Windows yet.

## Dependencies

TCS depends on the following:

- Clang & Clang Format available in the system path.
- The `diff` and `zip` commands on Unix and Linux.

## Folder Structure

It will be easier for you (and for tcs) if you use the same structure as the following example:

- some folder
    - hw1
        - hw1q1.c
        - hw1q1in1.txt
        - hw1q1out1.txt
    - hw21
        - hw21q35.c
        - hw21q35in42.txt
        - hw21q35out42.txt
    - student.txt

## Available Commands

If you run `tcs`, you will be prompted to select a homework number and a question number. Your code will be formatted with `clang-format`, compiled with `clang` and if you have tests in the form of `in` and `out` txt files, your code will be run and checked (with `diff`).

If you run `tcs --package`, you'll get a zip file containing your code and the `student.txt` file. It will be created in the same directory, e.g. `hw1.zip` will be created inside the hw1 folder, when you run `tcs --package` inside the hw1 folder. All `hw1q*.c` files in the directory are added (so feel free to create random `lmao.c` or `troll.c` or the occasional `why.c`).