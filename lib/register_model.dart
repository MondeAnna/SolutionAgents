class RegisterBody{
  String email;
  String companyName;
  String address;
  String password;

  RegisterBody({required this.email, required this.companyName, required this.address, required this.password});

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["f_name"] = email;
    data["companyName"] = companyName;
    data['address'] = address;
    data['password'] = password;
    return data;
  }
}