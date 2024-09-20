List<List<dynamic>> findFrequency(List<dynamic> list) {
  List<List<dynamic>> frequencyList = [];

  for (int i = 0; i < list.length; i++) {
    bool found = false;

    for (int j = 0; j < frequencyList.length; j++) {
      if (frequencyList[j][0] == list[i]) {
        frequencyList[j][1]++;
        found = true;
        break;
      }
    }

    if (!found) {
      frequencyList.add([list[i], 1]);
    }
  }

  return frequencyList;
}

void main() {
  List nums = [1, 2, 3, 1, 6, 1, 8, 2, 4];
  print(findFrequency(nums));
}
