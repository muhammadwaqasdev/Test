import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tech_it/generated/images.asset.dart';
import 'package:tech_it/src/base/utils/utils.dart';
import 'package:tech_it/src/shared/app_screen.dart';
import 'package:tech_it/src/shared/spacing.dart';
import 'package:tech_it/src/styles/app_colors.dart';
import 'package:tech_it/src/styles/text_theme.dart';
import 'package:tech_it/src/views/invoice/invoice_view_model.dart';

class InvoiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InvoiceViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacing(40),
              Image.asset(
                Images.traxTrackingLogo,
                height: 150,
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: context.screenSize().width / 2.2,
                    height: 30,
                    decoration: BoxDecoration(color: AppColors.secondary),
                  ),
                  Text(
                    "INVOICE",
                    style: TextStyling.paragraphTheme.copyWith(fontSize: 24),
                  ),
                  Container(
                    width: context.screenSize().width / 6,
                    height: 30,
                    decoration: BoxDecoration(color: AppColors.secondary),
                  ),
                ],
              ),
              VerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: context.screenSize().width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Invoice To:",
                          style: TextStyling.heading1.copyWith(fontSize: 14),
                        ),
                        Text(
                          "Tech IT",
                          style: TextStyling.heading1.copyWith(fontSize: 14),
                        ),
                        Text(
                          "24 Dummy Street Area, Location, Karachi, Pakistan.",
                          style: TextStyling.text.copyWith(
                              color: AppColors.darkGrey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: context.screenSize().width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoice #",
                              style:
                                  TextStyling.heading1.copyWith(fontSize: 14),
                            ),
                            Text(
                              "52148",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.darkGrey, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style:
                                  TextStyling.heading1.copyWith(fontSize: 14),
                            ),
                            Text(
                              "01 / 02 / 2022",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.darkGrey, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              VerticalSpacing(10),
              Container(
                width: context.screenSize().width,
                decoration:
                    BoxDecoration(border: Border.all(color: AppColors.primary)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: AppColors.primary),
                      height: 50,
                      width: context.screenSize().width,
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "SL.",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.white, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Item Description",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.white, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Price",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.white, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Qty",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.white, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Total",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          HorizontalSpacing(10),
                          Expanded(
                            child: Text(
                              "1",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "11",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "123123",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.primary, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: context.screenSize().width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Thank you for your business",
                          style: TextStyling.heading1.copyWith(fontSize: 14),
                        ),
                        VerticalSpacing(10),
                        Text(
                          "Terms & Conditions",
                          style: TextStyling.heading1.copyWith(fontSize: 14),
                        ),
                        VerticalSpacing(5),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                          style: TextStyling.text.copyWith(
                              color: AppColors.darkGrey, fontSize: 12),
                        ),
                        VerticalSpacing(10),
                        Text(
                          "Payment Info:",
                          style: TextStyling.heading1.copyWith(fontSize: 14),
                        ),
                        VerticalSpacing(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Account #",
                              style:
                                  TextStyling.heading1.copyWith(fontSize: 14),
                            ),
                            Text(
                              "123456789",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.darkGrey, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "A/C Name",
                              style:
                                  TextStyling.heading1.copyWith(fontSize: 14),
                            ),
                            Text(
                              "ABCD",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.darkGrey, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bank Detail",
                              style:
                                  TextStyling.heading1.copyWith(fontSize: 14),
                            ),
                            Expanded(
                                child: Text(
                              "Add your bank detail",
                              style: TextStyling.text.copyWith(
                                  color: AppColors.darkGrey, fontSize: 14),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: context.screenSize().width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style:
                                    TextStyling.heading1.copyWith(fontSize: 14),
                              ),
                              Text(
                                "\$220.00",
                                style: TextStyling.text.copyWith(
                                    color: AppColors.darkGrey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tax",
                                style:
                                    TextStyling.heading1.copyWith(fontSize: 14),
                              ),
                              Text(
                                "0.00%",
                                style: TextStyling.text.copyWith(
                                    color: AppColors.darkGrey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(color: AppColors.secondary),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub Total",
                                  style: TextStyling.heading1
                                      .copyWith(fontSize: 14),
                                ),
                                Text(
                                  "\$220.00",
                                  style: TextStyling.text.copyWith(
                                      color: AppColors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              VerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: context.screenSize().width / 2.2,
                    height: 2,
                    decoration: BoxDecoration(color: AppColors.secondary),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border(top: BorderSide(color: AppColors.black))),
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Authorizer Sign",
                      style: TextStyling.paragraphTheme.copyWith(fontSize: 14),
                    ),
                  ),
                  Container(
                    width: context.screenSize().width / 6,
                    height: 2,
                    decoration: BoxDecoration(color: AppColors.secondary),
                  ),
                ],
              ),
              VerticalSpacing(10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border(right: BorderSide(color: AppColors.black))),
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      "Phone #",
                      style: TextStyling.heading1.copyWith(fontSize: 14),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border(right: BorderSide(color: AppColors.black))),
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Text(
                      "Address",
                      style: TextStyling.heading1.copyWith(fontSize: 14),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Website",
                      style: TextStyling.heading1.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
              VerticalSpacing(20),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => InvoiceViewModel(),
    );
  }
}
