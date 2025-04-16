/// 🧠 This function now just orchestrates the checkout process.
/// 
/// It's clear, testable, and each part is modular and reusable.
void performCheckout() {
  var items = [100.0, 200.0, 300.0];
  var discountRate = 0.1;

  var total = calculateTotal(items);
  var finalTotal = applyDiscount(total, discountRate);

  printReceipt(items, discountRate, finalTotal);
  sendConfirmation();
}

/// 🧾 Prints a simple receipt with prices and total.
void printReceipt(List<double> items, double discountRate, double finalTotal) {
  print('Receipt:');
  for (var price in items) {
    print('Item: \$${price}');
  }
  print('Discount: ${discountRate * 100}%');
  print('Total: \$${finalTotal}');
}

/// 📧 Sends a confirmation message (mocked).
void sendConfirmation() {
  print('Confirmation email sent.');
}

/// 🧾 Calculates the total price of all items.
double calculateTotal(List<double> items) {
  return items.reduce((a, b) => a + b);
}

/// 💸 Applies a discount to the total amount.
double applyDiscount(double total, double discountRate) {
  return total - (total * discountRate);
}

