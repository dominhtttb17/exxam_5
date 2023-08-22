import 'package:exam_dart/CallAPI/Customer.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
void main(List<String> arguments) {

  getAllCustomer();

  var customer = Customer(
    fullName: 'string',
    birthDay: '2003-01-01',
    address: 'string',
    phoneNumber: 'string',
  );

  createCustomer(customer);

}

void getAllCustomer() async {
  var url = Uri.parse('http://localhost:8080/customers');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    List<Customer> customerList = [];

    for (var json in jsonResponse) {
      Customer customer = Customer.fromJson(json);
      customerListt.add(customer);
    }
    print('-------------------------------------------------');
    for (var customer in customerList) {
      print('Id :        ${customer.id}');
      print('Họ và tên : ${customer.fullName}');
      print('Ngày sinh : ${customer.birthDay}');
      print('Địa chỉ :   ${customer.address}');
      print('Số điện Thoại : ${customer.phoneNumber}');
      print('-------------------------------------------------');
    }
  } else {
    print('Fail: ${response.statusCode}');
  }
}

void createCustomer(Customer customer) async {
  var url = Uri.parse('http://localhost:8080/customers');
  var customerJson = jsonEncode(customer.toJson());

  var response = await http.post(url, body: customerJson, headers: {
    'Content-Type': 'application/json',
  });

  if (response.statusCode == 200) {
    print('Success');
  } else {
    print('Fail: ${response.statusCode}');
  }
}
