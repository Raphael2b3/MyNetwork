import 'package:flutter/material.dart';
import 'package:mynetworkapp/services/contact.dart';

class ContactView extends StatefulWidget {
  ContactView(contact, {super.key});
  late Contact contact;

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
