/**
 * Take a list, say for example this one:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

and write a program that prints out all the elements of the list that are less than 5.
 */

main(List<String> args) {
  const a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int i in a) {
    if (i < 5) {
      print(i);
    }
  }
}
