class Bank {
  String name;
  String address;
  String phone;

  Bank(
    this.name,
    this.address,
    this.phone,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bank &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          address == other.address &&
          phone == other.phone);

  @override
  // TODO: implement hashCode
  int get hashCode => name.hashCode ^ address.hashCode ^ phone.hashCode;

  String toString() {
    String result = '';
    result += 'Bank{';
    result += ' name : $name,';
    result += ' address : $address,';
    result += ' phone : $phone,';
    result += '}';
    return result;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phone'];
}
