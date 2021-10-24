class UserCep {
  final String? zipCode;
  final String? address;
  final String? district;
  final String? location;
  final String? uf;
  final String? ddd;

  UserCep(
      {this.zipCode,
      this.address,
      this.district,
      this.location,
      this.uf,
      this.ddd});

  factory UserCep.fromJson(Map<String, dynamic> json) {
    return UserCep(
      zipCode: json["cep"],
      address: json["logradouro"],
      district: json["bairro"],
      location: json["localidade"],
      uf: json["uf"],
      ddd: json["ddd"],
    );
  }
}
