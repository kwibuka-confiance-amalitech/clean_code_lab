class UserService {
  final List<Map<String, String>> _users = [];

  void registerUser(String name, String email) {
    // Save to "database"
    _users.add({'name': name, 'email': email});

    // Send email
    if (email.contains('@')) {
      print("Sending welcome email to $email...");
    } else {
      print("Invalid email: $email");
    }

    // Log
    print("User registered: $email");
  }

  void handleUser(Map<String, dynamic>? user) {
    if (user != null) {
      final profile = user['profile'];

      if (profile != null) {
        final isActive = profile['isActive'] == true;
        final email = profile['email'];

        if (isActive && email is String && email.contains('@')) {
          print("Valid user: $email");
        } else {
          print("Invalid profile: inactive or bad email");
        }
      } else {
        print("Missing profile");
      }
    } else {
      print("User is null");
    }
  }

  void listUsers() {
    for (var user in _users) {
      print("User: ${user['name']} - ${user['email']}");
    }
  }
}
