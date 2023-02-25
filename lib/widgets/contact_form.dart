import 'package:flutter/material.dart';

import '../layout/sizing.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        height: heightMedQuery(context, 0.6),
        width: widthMedQuery(context, 0.8),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
            height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    cursorColor: Colors.green[600],
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[300],
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[600]!,
                        ),
                      ),
                      focusColor: Colors.green[600],
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[600]!,
                          width: 2.4,
                        ),
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
            const SizedBox(
            height: 28.0,
            ),
            
          ],
        ),
      ),
    );
  }
}
