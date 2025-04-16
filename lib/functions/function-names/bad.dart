
/// What's the "stuff"? 
/// 
/// This does date formatting and multiplication. It deserves two clear functions.
void doStuff() {
  var now = DateTime.now();
  var formatted = '${now.year}-${now.month}-${now.day}';
  print('Date: $formatted');

  var result = 42 * 7;
  print('The result is $result');
}


/// 🧠 Handle what? 
/// 
/// A network response? User input? It’s too vague.
void handle() {
  var response = {'status': 200, 'body': 'OK'};

  if (response['status'] == 200) {
    print('Success!');
  } else {
    print('Failed...');
  }
}

/// 🧠 Get what kind of data? 
/// 
/// From where? This needs a name like printUserList() or loadMockUsers().
void getData() {
  var data = [
    {'id': 1, 'name': 'Alice'},
    {'id': 2, 'name': 'Bob'},
  ];

  for (var item in data) {
    print('Name: ${item['name']}');
  }
}

/// 🧠 "process1" is meaningless 
/// 
///  what's being processed? This could be calculateInvoiceTotal().
void process1() {
  var items = [100, 200, 300];
  var total = items.reduce((a, b) => a + b);
  print('Total is $total');
}

/// 🧠 What does calc mean?
/// 
/// It's doing a specific operation, maybe something like calculateSumOfSquares().
void calc() {
  var a = 9;
  var b = 5;
  var result = (a * a) + (b * b);
  print('Result: $result');
}

