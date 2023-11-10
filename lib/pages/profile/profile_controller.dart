import 'package:get/get.dart';

class ProfileController extends GetxController {
  final user = ProfileModel(
    name: "Neth Wandara",
    position: "Flutter Developer & React Developer",
    gender: "Male",
    email: "Wandara@gmail.com",
    phoneNumber: "+885 12 345 678",
  );
}

class ProfileModel {
  final String name;
  final String position;
  final String gender;
  final String email;
  final String phoneNumber;

  ProfileModel({
    required this.name,
    required this.position,
    required this.gender,
    required this.email,
    required this.phoneNumber,
  });
}
