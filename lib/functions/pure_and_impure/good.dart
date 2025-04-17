List<String> updateMyName(newName) {
  const myNames = ["Oluwatobi", "Sofela"];
  myNames[myNames.length] = newName;
  return myNames;
}

// another way is to accept all dependencies in the parameters

final names = ["Oluwatobi", "Sofela"];

List<String> addNewName(
  List<String> myNames,
  String newName,
) {
  myNames.add(newName);
  return myNames;
}
