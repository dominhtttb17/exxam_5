class Customer {
  int? id;
  String? fullName;
  String? birthDay;
  String? address;
  String? phoneNumber;

  Customer(
      {this.id, this.fullName, this.birthDay, this.address, this.phoneNumber});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    birthDay = json['birthDay'];
    address = json['address'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['birthDay'] = this.birthDay;
    data['address'] = this.address;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}