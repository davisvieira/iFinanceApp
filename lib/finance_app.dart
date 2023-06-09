import 'package:flutter/material.dart';
import 'package:ifinance/page_indicator.dart';
import 'package:ifinance/who_we_are.dart';
import 'finance_initial.dart';

const imgUrl =
    'https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2F019b666de8fe500d5030b29c22f3b0fd.cdn.bubble.io%2Ff1602183199121x609488759365052200%2Fifinance-2.png?w=&h=&auto=compress&dpr=1&fit=max';

class FinanceApp extends StatefulWidget {
  const FinanceApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FinanceApp();
  }
}

class _FinanceApp extends State<FinanceApp> {
  final _financeController = PageController();
  int _page = 0;

  final List _listPages = [
    financeBody(imgUrl, 'Serviços'),
    financeWhoWeAre(imgUrl, 'Conheça o gerenciador financeiro iFinanceApp')
  ];

  void _changeStep(bool nextPage) {
    if (_page < 1 && nextPage) {
      setState(() {
        _page++;
      });
      _financeController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      _financeController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _financeController,
          itemBuilder: (BuildContext context, int index) {
            return _listPages[index];
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => _changeStep(false),
            child: const Icon(
              Icons.navigate_before,
              color: Color.fromRGBO(0, 155, 179, 0.808),
            ),
          ),
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          TextButton(
            onPressed: () => _changeStep(true),
            child: const Icon(
              Icons.navigate_next,
              color: Color.fromRGBO(0, 155, 179, 0.808),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 5, 34, 49),
    );
  }
}
