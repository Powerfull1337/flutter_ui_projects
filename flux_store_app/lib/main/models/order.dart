class Order {
  final String orderId;
  final DateTime date;
  final String trackingNumber;
  final int quantity;
  final double subtotal;
  final String status;

  Order({
    required this.orderId,
    required this.date,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.status,
  });
}

List<Order> listOfOrders = [
  Order(
    orderId: "1514",
    date: DateTime(2021, 5, 13),
    trackingNumber: "IK987362341",
    quantity: 2,
    subtotal: 110.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1679",
    date: DateTime(2021, 5, 12),
    trackingNumber: "IK3873218890",
    quantity: 3,
    subtotal: 450.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1671",
    date: DateTime(2021, 5, 10),
    trackingNumber: "IK237368881",
    quantity: 3,
    subtotal: 400.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1685",
    date: DateTime(2021, 5, 9),
    trackingNumber: "IK237839921",
    quantity: 1,
    subtotal: 50.00,
    status: "PENDING",
  ),
  Order(
    orderId: "1590",
    date: DateTime(2021, 5, 8),
    trackingNumber: "IK987450123",
    quantity: 2,
    subtotal: 220.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1622",
    date: DateTime(2021, 5, 7),
    trackingNumber: "IK327489222",
    quantity: 4,
    subtotal: 900.00,
    status: "CANCELLED",
  ),
  Order(
    orderId: "1701",
    date: DateTime(2021, 5, 5),
    trackingNumber: "IK123987421",
    quantity: 1,
    subtotal: 150.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1453",
    date: DateTime(2021, 5, 4),
    trackingNumber: "IK876320943",
    quantity: 5,
    subtotal: 1000.00,
    status: "CANCELLED",
  ),
  Order(
    orderId: "1583",
    date: DateTime(2021, 5, 2),
    trackingNumber: "IK462839033",
    quantity: 2,
    subtotal: 300.00,
    status: "DELIVERED",
  ),
  Order(
    orderId: "1610",
    date: DateTime(2021, 4, 30),
    trackingNumber: "IK274809133",
    quantity: 3,
    subtotal: 350.00,
    status: "PENDING",
  ),
  Order(
    orderId: "1694",
    date: DateTime(2021, 4, 28),
    trackingNumber: "IK987241652",
    quantity: 4,
    subtotal: 750.00,
    status: "DELIVERED",
  ),
];
