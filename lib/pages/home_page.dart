import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/font.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/main_scan_template.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/re_usables/re_usable_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  container() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 225, bottom: 16),
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScanTemplate()));
            },
            child: ReUsableContainer(
              cardChild: Center(
                  child: AutoSizeText('Enrol in Smart Path',
                      style:
                          Medium.copyWith(color: kWhiteColor, fontSize: 14))),
              colour: kButtonPressColor,
            ),
          ),
          SizedBox(height: 16),
          ReUsableContainer(
            cardChild: Center(
                child: Text('View passport details',
                    style:
                        Medium.copyWith(color: kMainTextColor, fontSize: 14))),
            colour: kWhiteColor,
          ),
          SizedBox(height: 16),
          ReUsableContainer(
            cardChild: Center(
                child: Text('Register for a flight',
                    style:
                        Medium.copyWith(color: kMainTextColor, fontSize: 14))),
            colour: kWhiteColor,
          ),
          SizedBox(height: 16),
          ReUsableContainer(
            cardChild: Center(
                child: Text('View flight registration receipt',
                    style:
                        Medium.copyWith(color: kMainTextColor, fontSize: 14))),
            colour: kWhiteColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: kMainTextColor),
              child: Center(
                child: AutoSizeText(
                  'Main page',
                  style: SemiBold.copyWith(color: kWhiteColor,fontSize: 17)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 114),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.07,
                width: MediaQuery.of(context).size.width / 1.09,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text('Please select an option',
                          style: SemiBold.copyWith(
                              color: kMainTextColor, fontSize: 16)),
                    ),
                    Text('below',
                        style: SemiBold.copyWith(
                            color: kMainTextColor, fontSize: 16))
                  ],
                ),
              ),
            ),
            container()
          ])
        ],
      ),
    );
  }
}
