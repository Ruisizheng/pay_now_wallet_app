import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:pay_now_wallet_app/widgets/horizontal_spacer.dart';
import 'package:pay_now_wallet_app/widgets/vertical_spacer.dart';

enum TransactionType { send, request }

class Transaction {
  String userImage;
  String userName;
  String dateTime;
  double amount;
  TransactionType transactionType;

  Transaction(
      {required this.userImage,
      required this.userName,
      required this.dateTime,
      required this.amount,
      required this.transactionType});
}

class TransactionsScreen extends StatelessWidget {
  TransactionsScreen({super.key});

  final List<Transaction> octTransactions = [
    Transaction(
      userImage: 'hiba.png',
      userName: 'Hiba Saleh',
      dateTime: 'Oct 19, 05:45 AM',
      amount: 12.50,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'sahar.png',
      userName: 'Sahar Fawzi',
      dateTime: 'Oct 15, 09:10 PM',
      amount: 54.00,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'sara.png',
      userName: 'Sara Ibrahim',
      dateTime: 'Oct 12, 02:13 PM',
      amount: 25.00,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'nisreen.png',
      userName: 'Nisreen Ismail',
      dateTime: 'Oct 07, 09:10 PM',
      amount: 10.50,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'ahmed.png',
      userName: 'Ahmed Ibrahim',
      dateTime: 'Oct 02, 01:19 AM',
      amount: 8.0,
      transactionType: TransactionType.send,
    ),
  ];

  final List<Transaction> sepTransactions = [
    Transaction(
      userImage: 'yara.png',
      userName: 'Yara Khalil',
      dateTime: 'Sep 28, 09:10 PM',
      amount: 13.00,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'reem.png',
      userName: 'Reem Khaled',
      dateTime: 'Sep 25, 09:10 PM',
      amount: 10.50,
      transactionType: TransactionType.send,
    ),
    Transaction(
      userImage: 'yara.png',
      userName: 'Yara Khalil',
      dateTime: 'Sep 22, 10:34 AM',
      amount: 15.0,
      transactionType: TransactionType.send,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.w),
            height: 102.h,
            width: 375.w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.black.withOpacity(0.1), width: 1.h),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                ),
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                      'assets/images/search_icon.svg',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpacer(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              height: 57.w,
              width: 345.w,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F5),
                borderRadius: BorderRadius.circular(15.w),
              ),
              child: TabBar(
                padding: EdgeInsets.all(4.h),
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: const Color(0xFF1A1A1A),
                labelColor: const Color(0xFF1A1A1A),
                tabs: const [
                  Tab(
                    child: Text('Incomes'),
                  ),
                  Tab(
                    child: Text('Expenses'),
                  )
                ],
              ),
            ),
          ),
          const VerticalSpacer(height: 24),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'October,202',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => TransactionCard(
                            transaction: octTransactions[index]),
                        separatorBuilder: (context, index) =>
                            const VerticalSpacer(height: 16),
                        itemCount: octTransactions.length),
                    const VerticalSpacer(height: 24),
                    Text(
                      'September,202',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => TransactionCard(
                            transaction: sepTransactions[index]),
                        separatorBuilder: (context, index) =>
                            const VerticalSpacer(height: 16),
                        itemCount: sepTransactions.length),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});
  final Transaction transaction;

  String formatCurrency(double amount) {
    final NumberFormat numberFormat = NumberFormat("#,##00.00", "en_US");
    return numberFormat.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.w,
            backgroundColor: const Color(0xFFF3F4F5),
            backgroundImage:
                AssetImage('assets/images/${transaction.userImage}'),
          ),
          const HorizontalSpacer(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                transaction.userName,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 1),
              Text(
                transaction.dateTime,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF1A1A1A).withOpacity(0.4),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            transaction.transactionType == TransactionType.send
                ? '-\$${formatCurrency(transaction.amount)}'
                : '+\$${formatCurrency(transaction.amount)}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
