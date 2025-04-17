void processOrder(String? order) {
  if (order == null) {
    print("Order is null");
    return;
  }

  if (order.isEmpty) {
    print("No items in order");
    return;
  }

  if (order.length <= 5) {
    print("Order is too short");
    return;
  }

  print("Processing order : $order");
}
