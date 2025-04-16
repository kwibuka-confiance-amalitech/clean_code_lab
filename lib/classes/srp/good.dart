class UserService {
  final UserRepository repository;
  final EmailService emailService;
  final Logger logger;

  UserService(this.repository, this.emailService, this.logger);

  void registerUser(String name, String email) {
    repository.save(name, email);
    emailService.sendWelcomeEmail(email);
    logger.log("User registered: $email");
  }
}

class UserRepository {
  void save(String name, String email) {
    // save user to database
  }
}

class EmailService {
  void sendWelcomeEmail(String email) {
    // send welcome email
  }
}

class Logger {
  void log(String message) {
    // log the message
  }
}
