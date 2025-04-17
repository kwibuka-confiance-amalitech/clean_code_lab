
class UserInfo {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final DateTime birthDate;

  UserInfo({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.address,
    required this.birthDate,
  });
}

void createUser(UserInfo user) {
  if (user.email.isEmpty || !user.email.contains('@')) {
    print('Invalid email address');
    return;
  }

  print('Saving user: ${user.firstName} ${user.lastName}');
  print('Email: ${user.email}');
  print('Phone: ${user.phone}');
  print('Address: ${user.address}');
  print('Date of Birth: ${user.birthDate}');
  
  // Simulate database save
  print('User saved to database.');
}
