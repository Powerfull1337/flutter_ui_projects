class Payment {
  final String imagePath;
  final String text;

  Payment({required this.imagePath, required this.text});
}

List<Payment> listOfPayments = [
  Payment(imagePath: 'assets/images/visa.png', text: "************2109"),
  Payment(imagePath: 'assets/images/paypal.png', text: "************2109"),
  Payment(imagePath: 'assets/images/maestro.png', text: "************2109"),
  Payment(imagePath: 'assets/images/IOS.png', text: "************2109"),
];