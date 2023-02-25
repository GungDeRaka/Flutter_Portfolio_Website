import 'package:flutter/material.dart';

import '../util/color_palettes.dart';
import '../util/sizing.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
                    cursorColor: kGreenColor,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: fadedFont,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedFont,
                        ),
                      ),
                      focusColor: kGreenColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreenColor,
                          width: 2.4,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: widthMedQuery(context, 0.12),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    cursorColor: kGreenColor,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: fadedFont,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedFont,
                        ),
                      ),
                      focusColor: kGreenColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreenColor,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //FIXME Email Form
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    cursorColor: kGreenColor,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: fadedFont,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedFont,
                        ),
                      ),
                      focusColor: kGreenColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreenColor,
                          width: 2.4,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: widthMedQuery(context, 0.12),
                ),
                //FIXME Phone Number
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    cursorColor: kGreenColor,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: fadedFont,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedFont,
                        ),
                      ),
                      focusColor: kGreenColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreenColor,
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
            //FIXME Message form
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8),
              child:  Align(
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
              onPressed: () {},
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
