import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:money_manager/screens/new_transaction/new_transaction.ctrl.dart';
import 'package:money_manager/styles/styles.dart';
import 'package:provider/provider.dart';

class NewTransactionScreen extends StatelessWidget {
  const NewTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewTransactionController(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Consumer<NewTransactionController>(
            builder: (context, controller, _) => Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 17),
                  decoration: AppDecorations.statisticHeader,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.chevron_left)),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Transaksi Baru',
                        style: AppTextStyles.headerText,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 75,
                            child: Text(
                              'Tanggal',
                              style: AppTextStyles.normalText,
                            ),
                          ),
                          Expanded(
                              child: GestureDetector(
                            onTap: () => controller.pickDate(context),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3, 0, 3, 3),
                              decoration: AppDecorations.bottomBorder,
                              child: Text(
                                controller.formattedDate,
                                style: AppTextStyles.normalText,
                              ),
                            ),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 75,
                            child: Text(
                              'Catatan',
                              style: AppTextStyles.normalText,
                            ),
                          ),
                          Expanded(
                              child: TextField(
                            style: AppTextStyles.normalText,
                            decoration: AppDecorations.transactionInput,
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 75,
                            child: Text(
                              'Total',
                              style: AppTextStyles.normalText,
                            ),
                          ),
                          Expanded(
                              child: TextField(
                            style: AppTextStyles.normalText,
                            decoration: AppDecorations.inputNominal,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CurrencyInputFormatter(
                                thousandSeparator: ThousandSeparator.Period,
                                mantissaLength: 0,
                              )
                            ],
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 75,
                            child: Text(
                              'Kategori',
                              style: AppTextStyles.normalText,
                            ),
                          ),
                          Expanded(
                              child: GestureDetector(
                            onTap: () => controller.pickCategory(context),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3, 0, 3, 3),
                              decoration: AppDecorations.bottomBorder,
                              child: Text(
                                controller.selectedCategory,
                                style: AppTextStyles.normalText,
                              ),
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
