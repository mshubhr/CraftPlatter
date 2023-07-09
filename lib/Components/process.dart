import 'package:flutter/material.dart';

import 'package:craft_my_plate/Customs/work_row.dart';

class Process extends StatelessWidget {
  const Process({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          WorkRowOne(
              heading: "Customize Menu",
              subheading: "Select items for a single event\nor multiple events",
              imageAddress: "assets/images/home/work1.png"
              ),
          SizedBox(
            height: 50,
          ),
          WorkRowTwo(
            heading: "Choose Services",
              subheading: "Select the type of services\nfrom varying cutlery, mode of\nserving options, & more",
              imageAddress: "assets/images/home/work2.png"
              ),
              SizedBox(
            height: 50,
          ),
          WorkRowOne(
              heading: "Dynamic Pricing",
              subheading: "Price per plate varies with no.\nof items in a plate and no. of\nplates selected",
              imageAddress: "assets/images/home/work3.png"
              ),
          SizedBox(
            height: 50,
          ),
          WorkRowTwo(
            heading: "Track Your Order",
              subheading: "Track the order status and\nseek help from the executives\nanytime",
              imageAddress: "assets/images/home/work4.png"
              ),
              SizedBox(
            height: 50,
          ),
          WorkRowOne(
              heading: "Taste Your Samples",
              subheading: "Explode your taste bud with\nsamples of what you order(on\nrequest for eligible orders)",
              imageAddress: "assets/images/home/work5.png"
              ),
          SizedBox(
            height: 50,
          ),
          WorkRowTwo(
            heading: "Enjoy Food and Services",
              subheading: "Enjoy event with delicious\nand customized food",
              imageAddress: "assets/images/home/work6.png"
              ),
              SizedBox(
            height: 50,
          ),
        ],
      
    );
  }
}
