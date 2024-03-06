# Traversing Directories in C
Author: [Jack Robbins](https://www.github.com/jackr276)

This project contains one C program, [count_lines.c](https://github.com/jackr276/Traversing-Directories-in-C/blob/main/src/count_lines.c), that takes in a path to a directory as input,
and then opens that directory, if possible, and recursively, in a depth-first search manner, goes through every sub-directory of that directory. Simply to show functionality and demonstrate the potential
usefulness of this kind of directory traversal, this program also counts the number of lines in any and all text(.txt extension) files under said directory and any of its subdirectories.

### Running this program
For convenience, a runner script [run.sh](https://github.com/jackr276/Traversing-Directories-in-C/blob/main/src/run.sh) has been provided that compiles the program, takes in user input, and runs the program all at once. An example of how to use it is below.

>[!NOTE]
>After downloading run.sh, be sure to grant executable permissions by running `chmod +x run.sh`

Example: Counting all of the lines in all .txt files under your Documents folder on a Linux system
```console
example@bash:~$ ./run.sh count_lines.c
If your program requires input, enter it here: /home/<your_username>/Documents
```

So long as the pathname provided to the program is a valid path to a directory, the program will attempt to traverse said directory.

>[!Warning]
>Since this script provides a recursive depth-first traversal solution, attempting to run the script on the root directory: `/` or any other large directories that have subdirectories that each have
>numerous subdirectories(etc. etc.) will cause a stack overflow, leading to a `segmentation fault` error. This program is not intended for searching through an entire file system.
