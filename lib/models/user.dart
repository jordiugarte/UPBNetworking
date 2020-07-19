class User {
  int code;
  String email;
  String password;
  String names;
  String lastNames;
  int school;
  int degree;

  User(
      {this.code,
      this.email,
      this.password,
      this.names,
      this.lastNames,
      this.school,
      this.degree});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        code: json['id_code'] as int,
        email: json['email'] as String,
        password: json['password'] as String,
        names: json['names'] as String,
        lastNames: json['lastNames'] as String,
        school: json['school'] as int,
        degree: json['degree'] as int);
  }
}
