bool areAnagrams(String str1, String str2) {
  // If lengths are different, they can't be anagrams
  if (str1.length != str2.length) {
    return false;
  }
  
  // Sort both strings and compare
  List<String> sortedStr1 = str1.split('')..sort();
  List<String> sortedStr2 = str2.split('')..sort();
  
  return sortedStr1.join() == sortedStr2.join();
}

void main() {
  String str1 = 'hello';
  String str2 = 'ollhe';
  
  bool result = areAnagrams(str1, str2);
  
  print(result); // true
}
