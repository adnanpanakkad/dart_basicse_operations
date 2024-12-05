void main() {
  var obj = {
    "key1": "value1",
    "key2": "value2",
    "key3": "",
    "key4": "value4",
    "key5": null,
  };

  obj.removeWhere((key, value) => value == null || value == "");
  print(obj);
}
