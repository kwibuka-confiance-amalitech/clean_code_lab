
/// 🧠 Does too much:
/// 
/// This function calculates a total, applies a discount, prints a receipt,
/// and sends a confirmation — all in one place. It's hard to test and reuse.
void checkout() {
  var items = [100, 200, 300];
  var total = items.reduce((a, b) => a + b);

  var discount = 0.1;
  var discountedTotal = total - (total * discount);

  print('Receipt:');
  for (var price in items) {
    print('Item: \$${price}');
  }
  print('Discount: ${discount * 100}%');
  print('Total: \$${discountedTotal}');

  print('Confirmation email sent.');
}
