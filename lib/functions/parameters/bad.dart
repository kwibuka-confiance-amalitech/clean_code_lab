void createUser(
  String firstName,
  String lastName,
  String email,
  String phone,
  String address,
  DateTime birthDate,
) {
  if (email.isEmpty || !email.contains('@')) {
    print('Invalid email address');
    return;
  }

  print('Saving user: $firstName $lastName');
  print('Email: $email');
  print('Phone: $phone');
  print('Address: $address');
  print('Date of Birth: $birthDate');

  // Simulate database save
  print('User saved to database.');
}
