import 'dart:io';

void main() {
  List<Map<String, dynamic>> database = [
    {'email': 'umer@1234', 'password': '1234'},
    {'email': 'hamza@1234', 'password': '5678'},
    {'email': 'haider', 'password': '1919'}
  ];
  bool isvalid = true;

  while (isvalid) {
    print('Enter Email:');
    String email = stdin.readLineSync()!;
    print('Enter Password:');
    String pass = stdin.readLineSync()!;

    bool found = false;
    for (var user in database) {
      if (user['email'] == email && user['password'] == pass) {
        print('Login Successful');
        isvalid = false;
        found = true;
        break;
      }
    }

    if (!found) {
      print('Incorrect email or password, please try again.');
    }
  }
}
