import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/font.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/main_scan_template.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/passport_dedails_template.dart';

class PassportDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => MainScanTemplate()));
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 27,
        ),
        backgroundColor: kMainTextColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Main page',
            style: SemiBold.copyWith(color: kWhiteColor,fontSize: 17)
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 110, right: 90),
            child: Text(
              'Your Passport Details',
              style: SemiBold.copyWith(color: kMainTextColor,fontSize: 16)
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Please confirm that all of the information is ',
            style: Medium.copyWith(color: kSecondTextColor,fontSize: 13)
          ),
          Text(
            'correct.',
            style: Medium.copyWith(color: kSecondTextColor,fontSize: 13)
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.75,
              width: MediaQuery.of(context).size.width / 1.146,
              decoration: BoxDecoration(
                color: kBackGroundColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: kBorderLine,
                  width: 1,
                ),
              ),
              child: PassportDetailsTemplate(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 22, right: 22),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(onPressed: (){Navigator.pop(context, MaterialPageRoute(builder: (_)=>MainScanTemplate()));},
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  color: kButtonPressColor,
                child: Center(
                  child: AutoSizeText('RESCAN',style: Medium.copyWith(color: kWhiteColor,fontSize: 14),),
                ),),
                RaisedButton(onPressed: (){},
                  padding: EdgeInsets.symmetric(horizontal: 66),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  color: kButtonPressColor,
                  child: Center(
                    child: AutoSizeText('OK',style: Medium.copyWith(fontSize: 14,color: kWhiteColor),)
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}


