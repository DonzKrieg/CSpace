import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search Furniture',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 41,
          ),
          Text(
            'Recommendations',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 34,
            imageURL: 'assets/image_product_list1.png',
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 23,
            imageURL: 'assets/image_product_list2.png',
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 43,
            imageURL: 'assets/image_product_list3.png',
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 55,
            imageURL: 'assets/image_product_list4.png',
          ),
        ],
      ),
    );
  }
}
