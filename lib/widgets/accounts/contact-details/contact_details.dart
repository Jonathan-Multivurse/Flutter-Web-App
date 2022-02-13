import 'package:flutter/material.dart';
import 'package:oblio/components/details_tile.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DetailsTile(
              icon: Container(
                child: Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.grey[600],
                ),
              ),
              title: 'Work Phone',
              content: '+44 345 543 2345'),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
          DetailsTile(
            icon: Container(
              child: Icon(
                Icons.email,
                size: 20,
                color: Colors.grey[600],
              ),
            ),
            title: 'Work Email',
            content: 'sinclair@gmail.com',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
          DetailsTile(
            icon: Container(
              child: Icon(
                Icons.chat,
                size: 20,
                color: Colors.grey[600],
              ),
            ),
            title: 'Skype',
            content: 'sinclair33',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
