import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/button_template.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/font.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/home_page.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/passport_details.dart';

class MainScanTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 27,
        ),
        backgroundColor: kMainTextColor,
        title: Center(
          child: AutoSizeText(
            'Main page',
            style: SemiBold.copyWith(color: kWhiteColor,fontSize: 17)
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              'Scan your Password',
              style: SemiBold.copyWith(color: kMainTextColor,fontSize: 16)
            ),
            SizedBox(height: 16),
            AutoSizeText(
              'When the camera is presented, position your',
              style: Medium.copyWith(color: kMainTextColor,fontSize: 14)
            ),
            AutoSizeText(
              'passport so we can capture the data at the',
              style: Medium.copyWith(color: kMainTextColor,fontSize: 14)
            ),
            AutoSizeText(
              'bottom of the page',
              style: Medium.copyWith(color: kMainTextColor,fontSize: 14)
            ),
            SizedBox(height: 70),
            Container(
                height: 185,
                width: 280,
                child: Image(
                  image: AssetImage('assets/images/group_7.png'),
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: MainButton(
                onTap: () {
                  showDialog(
                      context: context,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Dialog(
                            child: MainButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => PassportDetails()));
                              },
                              title: 'Camera',
                            ),
                          ),
                          Dialog(
                            child: MainButton(
                              onTap: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => MainScanTemplate()));
                              },
                              title: 'Cancel',
                            ),
                          ),
                        ],
                      ));
                },
                title: 'NEXT',
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
