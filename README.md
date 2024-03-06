# Traversing Directories in C
Author: [Jack Robbins](https://www.github.com/jackr276)

This project contains one C program, [count_lines.c](https://github.com/jackr276/Traversing-Directories-in-C/blob/main/src/count_lines.c), that takes in a path to a directory as input,
and then opens that directory, if possible, and recursively, in a depth-first search manner, goes through every sub-directory of that directory. Simply to show functionality and demonstrate the potential
usefulness of this kind of directory traversal, this program also counts the number of lines in any and all text(.txt extension) files under said directory and any of its subdirectories.

### Running this program
For convenience, a [runner script](https://github.com/jackr276/Traversing-Directories-in-C/blob/main/src/run.sh) has been provided that compiles and runs the script all at once. To run it, download both files under the
[src](https://github.com/jackr276/Traversing-Directories-in-C/blob/main/src) directory, navigate to where they've been downloaded, and run:
```shell
./run.sh count_lines.c
```
The script will prompt you for program input. The input for this program is the path to a directory, so the input to the runner script would also be the path to the directory you wish to search.
```shell
If program requires input, enter it here: <relative-path-to-directory>
```

>[!Warning]
>Since this script provides a recursive depth-first traversal solution, attempting to run the script on the root directory: `/` or any other large directories that have subdirectories that each have
>numerous subdirectories(etc. etc.) will cause a stack overflow, leading to a `segmentation fault` error. This program is not intended for searching through an entire file system.
