void main() {
  List<int> arr = [10, 11, 45, 57, 91, 94, 102, 143, 165, 197];

  print(binarySearch(arr, 57));
}

int? binarySearch(List<int> arr, int search) {
  int low = 0;
  int high = arr.length - 1;

  while (low <= high) {
    int mid = ((low + high) / 2).floor();

    int guess = arr[mid];

    if (guess == search) {
      return guess;
    } else if (guess > search) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return null;
}