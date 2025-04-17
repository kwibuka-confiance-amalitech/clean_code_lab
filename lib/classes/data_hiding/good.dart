class BankAccount {
  double _balance = 0.0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit must be greater than zero.");
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      throw StateError("Insufficient funds.");
    }
    _balance -= amount;
  }
}
