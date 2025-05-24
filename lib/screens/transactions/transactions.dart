import 'package:flutter/material.dart';
import 'package:money_manager/styles/colors.dart';
import 'package:money_manager/styles/styles.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      floatingActionButton: SizedBox(
        height: 54,
        width: 54,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/new-transaction');
          },
          backgroundColor: AppColors.primaryBlue,
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 17, 16),
              decoration: AppDecorations.statisticHeader,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.chevron_left),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Mei',
                        style: AppTextStyles.headerText,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
            Container(
              height: 21,
              color: Colors.white,
            ),
            Container(
              decoration: AppDecorations.statisticHeader,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 18, 15),
                    child: Column(
                      children: [
                        Text(
                          'Total',
                          style: AppTextStyles.totalLabel,
                        ),
                        Text(
                          'Rp 50.000',
                          style: AppTextStyles.totalNominal,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: AppDecorations.statisticHeader,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(19, 10, 18, 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '17',
                          style: AppTextStyles.dateDayText,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          decoration: AppDecorations.currentDayContainer,
                          child: Text(
                            'Minggu',
                            style: AppTextStyles.currentDayName,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '05.2025',
                          style: AppTextStyles.normalText,
                        )
                      ],
                    ),
                    Text(
                      'Rp 50.000',
                      style: AppTextStyles.nominalText,
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(19, 9, 18, 9),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🍲 Makanan',
                                style: AppTextStyles.transactionCategory,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Mie ayam',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 10.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🧑‍🤝‍🧑 Kehidupan sosial',
                                style: AppTextStyles.transactionCategory,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Kado nikah Gary',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 20.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🚗 Transportasi',
                                style: AppTextStyles.transactionCategory,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Gojek stasiun',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 10.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              decoration: AppDecorations.statisticHeader,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(19, 10, 18, 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '16',
                          style: AppTextStyles.dateDayText,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          decoration: AppDecorations.dayContainer,
                          child: Text(
                            'Sabtu',
                            style: AppTextStyles.dayName,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '05.2025',
                          style: AppTextStyles.normalText,
                        )
                      ],
                    ),
                    Text(
                      'Rp 50.000',
                      style: AppTextStyles.nominalText,
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(19, 9, 18, 9),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🍲 Makanan',
                                style: AppTextStyles.transactionCategory,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Mie ayam',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 10.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🧑‍🤝‍🧑 Kehidupan sosial',
                                style: AppTextStyles.transactionCategory,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Kado nikah Gary',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 20.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                '🚗 Transportasi',
                                style: AppTextStyles.transactionCategory,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Gojek stasiun',
                                style: AppTextStyles.normalText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Rp 10.000',
                        style: AppTextStyles.nominalText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
