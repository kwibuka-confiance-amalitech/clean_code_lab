

void processOrder(String? order) {
  if (order != null) {
    if (order.isNotEmpty) {
      if (order.length > 5) {
        print("Processing order: $order");
      } else {
        print("Order is too short");
      }
    } else {
      print("No items in order");
    }
  } else {
    print("Order is null");
  }
}
