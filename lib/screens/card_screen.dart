import 'package:flutter/material.dart';
import 'package:online_banking_app_ui/constants/app_textstyle.dart';
import 'package:online_banking_app_ui/constants/color_constants.dart';
import 'package:online_banking_app_ui/data/card_data.dart';
import 'package:online_banking_app_ui/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MOBILE BANKING",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BzGCRFUnQvDPPd8rrI9cHczEpj4ED5avR1pnKjAxkZ3yq_yoCrdXalvDvjLLEaaEMH0&usqp=CAU"),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: myCards.length,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemBuilder: (context, index) {
                  return MyCard(
                    card: myCards[index],
                  );
                }),
          ),
          CircleAvatar(
            radius: 40,
            child: Icon(Icons.add, size: 50),
          ),
          SizedBox(height: 10),
          Text(
            "Add Card",
            style: ApptextStyle.LISTTILE_TITLE,
          )
        ],
      ),
    );
  }
}
