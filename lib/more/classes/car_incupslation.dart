// A small console app that demonstrates encapsulation in Dart

class BankAccount {
  // Private properties (using underscore prefix)
  String _accountNumber;
  String _accountHolder;
  double _balance;

  // Constructor
  BankAccount(this._accountNumber, this._accountHolder, [this._balance = 0.0]);

  // Getters - provide read access to private properties
  String get accountNumber => _accountNumber;
  String get accountHolder => _accountHolder;
  double get balance => _balance;

  // Setter with validation - provides controlled write access
  set accountHolder(String name) {
    if (name.isEmpty) {
      throw ArgumentError('Account holder name cannot be empty');
    }
    _accountHolder = name;
  }

  // We don't provide setters for accountNumber and balance to restrict direct modification
  // Instead, we create methods that modify these values in a controlled way

  // Method to deposit money with validation
  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be positive');
    }
    _balance += amount;
    print(
        'Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
  }

  // Method to withdraw money with validation
  bool withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal amount must be positive');
    }

    if (amount > _balance) {
      print(
          'Insufficient funds. Current balance: \$${_balance.toStringAsFixed(2)}');
      return false;
    }

    _balance -= amount;
    print(
        'Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    return true;
  }

  // Method to transfer money to another account
  bool transferTo(BankAccount recipient, double amount) {
    print(
        'Attempting to transfer \$${amount.toStringAsFixed(2)} to ${recipient.accountHolder}');
    if (withdraw(amount)) {
      recipient.deposit(amount);
      return true;
    }
    return false;
  }

  // Display account information
  void accountInfo() {
    print('Account Number: ${_maskAccountNumber()}');
    print('Account Holder: $_accountHolder');
    print('Current Balance: \$${_balance.toStringAsFixed(2)}');
  }

  // Private helper method (encapsulated functionality)
  String _maskAccountNumber() {
    if (_accountNumber.length <= 4) return _accountNumber;
    return '****${_accountNumber.substring(_accountNumber.length - 4)}';
  }
}

void main() {
  print('===== ENCAPSULATION DEMONSTRATION =====\n');

  try {
    print('1. Creating bank accounts with encapsulated data:');
    var aliceAccount = BankAccount('123456789', 'Alice Johnson', 1000);
    var bobAccount = BankAccount('987654321', 'Bob Smith', 500);

    print('\n2. Accessing data through getters:');
    print('Alice\'s balance: \$${aliceAccount.balance}'); // Using getter
    print('Bob\'s account number: ${bobAccount.accountNumber}'); // Using getter

    print('\n3. Modifying data through controlled methods:');
    aliceAccount.deposit(250);
    bobAccount.withdraw(100);

    print('\n4. Attempting invalid operations:');
    try {
      print('Trying to withdraw negative amount:');
      aliceAccount.withdraw(-50);
    } catch (e) {
      print('Error: $e');
    }

    try {
      print('\nTrying to withdraw more than balance:');
      bobAccount.withdraw(1000);
    } catch (e) {
      print('Error: $e');
    }

    print('\n5. Using setter with validation:');
    try {
      print('Setting valid name for Bob:');
      bobAccount.accountHolder = 'Robert Smith';
      print('New account holder: ${bobAccount.accountHolder}');

      print('\nTrying to set empty name:');
      bobAccount.accountHolder = '';
    } catch (e) {
      print('Error: $e');
    }

    print('\n6. Transferring money between accounts:');
    aliceAccount.transferTo(bobAccount, 300);

    print('\n7. Final account information:');
    print('Alice\'s account:');
    aliceAccount.accountInfo();

    print('\nBob\'s account:');
    bobAccount.accountInfo();

    print('\n8. Direct access to private fields is not allowed:');
    print(
        '// aliceAccount._balance = 1000000;  // This would cause a compiler error');
    print('// Private fields can only be accessed within the class definition');
  } catch (e) {
    print('Unexpected error: $e');
  }

  print('\n===== END OF DEMONSTRATION =====');
}
