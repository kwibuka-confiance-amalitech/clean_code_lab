
/// 📅 Formats the current date as YYYY-MM-DD and prints it.
void printFormattedCurrentDate() {
  var now = DateTime.now();
  var formatted = '${now.year}-${now.month}-${now.day}';
  print('Date: $formatted');
}

/// ✖️ Multiplies two hardcoded numbers and prints the result.
void multiplyAndPrintResult() {
  var result = 42 * 7;
  print('The result is $result');
}

/// 🌐 Handles a mock HTTP response by printing success or failure.
void handleMockHttpResponse() {
  var response = {'status': 200, 'body': 'OK'};

  if (response['status'] == 200) {
    print('Success!');
  } else {
    print('Failed...');
  }
}

/// 👥 Loads mock user data and prints their names.
void printMockUserNames() {
  var data = [
    {'id': 1, 'name': 'Alice'},
    {'id': 2, 'name': 'Bob'},
  ];

  for (var item in data) {
    print('Name: ${item['name']}');
  }
}

/// 🧮 Calculates the sum of squares of two numbers and prints the result.
void calculateSumOfSquares() {
  var a = 9;
  var b = 5;
  var result = (a * a) + (b * b);
  print('Result: $result');
}
