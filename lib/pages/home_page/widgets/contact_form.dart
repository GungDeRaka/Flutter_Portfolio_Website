import 'package:flutter/material.dart';

import '../../../util/color_palettes.dart';
import '../../../util/sizing.dart';

class ContactForm extends StatelessWidget {
  ContactForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNamec = TextEditingController();
  final TextEditingController lastNameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController phoneNumberC = TextEditingController();
  final TextEditingController messageC = TextEditingController();

  InputDecoration basicFormDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: fadedFont,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: fadedFont,
        ),
      ),
      focusColor: kGreenColor,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: kGreenColor,
          width: 2.4,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: heightMedQuery(context, 0.9),
        width: widthMedQuery(context, 0.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: firstNamec,
                    cursorColor: kGreenColor,
                    validator: (value) {
                      if (value!.isEmpty || value == ' ') {
                        return "First name can't be empty";
                      }
                      return null;
                    },
                    decoration: basicFormDecoration('First Name'),
                  ),
                ),
                SizedBox(
                  width: widthMedQuery(context, 0.12),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                      controller: lastNameC,
                      cursorColor: kGreenColor,
                      decoration: basicFormDecoration('Last Name')),
                ),
              ],
            ),
            const SizedBox(
              height: 28.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //FIXME Email Form
                SizedBox(
                  width: 300,
                  child: TextFormField(
                      controller: emailC,
                      cursorColor: kGreenColor,
                      validator: (value) {
                        if (value!.isEmpty ||
                            value == ' ' ||
                            !value.contains('@')) {
                          return "Email addres must contain '@'";
                        }
                        return null;
                      },
                      decoration: basicFormDecoration('Email Address')),
                ),
                SizedBox(
                  width: widthMedQuery(context, 0.12),
                ),
                //FIXME Phone Number
                SizedBox(
                  width: 300,
                  child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty ||
                            value == ' ' ||
                            int.tryParse(value)!.isNaN) {
                          return "Input your phone number e.g : +62XXXXXXXXXXX";
                        }
                        return null;
                      },
                      controller: phoneNumberC,
                      cursorColor: kGreenColor,
                      decoration: basicFormDecoration('Phone Number')),
                ),
              ],
            ),
            const SizedBox(
              height: 28.0,
            ),
            //FIXME Message form
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Message",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: fadedFont,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: heightMedQuery(context, 0.3),
              width: widthMedQuery(context, 0.6),
              child: TextFormField(
                controller: messageC,
                minLines: null,
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                cursorColor: kGreenColor,
                decoration: const InputDecoration(
                  // constraints: BoxConstraints.expand(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: fadedFont,
                    ),
                  ),
                  focusColor: kGreenColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kGreenColor,
                      width: 2.4,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 36.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kGreenColor,
              ),
              onPressed: () {
                formKey.currentState!.validate();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Submit now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
