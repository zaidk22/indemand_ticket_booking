import 'dart:convert';

import 'package:equatable/equatable.dart';

class SignupModel extends Equatable {
  String first_name;
  String last_name;
  String email;
  String password;
  SignupModel({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
  });
  @override
 
  List<Object> get props => [first_name, last_name, email, password];


  SignupModel copyWith({
    String? first_name,
    String? last_name,
    String? email,
    String? password,
  }) {
    return SignupModel(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() {
    return 'SignupModel(first_name: $first_name, last_name: $last_name, email: $email, password: $password)';
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'first_name': first_name});
    result.addAll({'last_name': last_name});
    result.addAll({'email': email});
    result.addAll({'password': password});
  
    return result;
  }

  factory SignupModel.fromMap(Map<String, dynamic> map) {
    return SignupModel(
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupModel.fromJson(String source) => SignupModel.fromMap(json.decode(source));
}
