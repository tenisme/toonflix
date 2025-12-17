import 'package:flutter/material.dart';
import 'package:prac_stateless_widget/widgets/button.dart';
import 'package:prac_stateless_widget/widgets/currency_card.dart';

void main() {
  // 아래의 App() 위젯이 어플을 시작할 때 뜨는 첫 번째 위젯이다.
  runApp(const App());
}

// 이 'App 위젯'은 어플의 시작점이다.
// "App 위젯의 build 메소드가 MeterialApp 위젯을 (이 앱의 UI를) 리턴한다."
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 안드로이드 - MaterialApp(); iOS - CupertinoApp();
    // 안드로이드 및 iOS와 관련 없는 시스템 UI를 짜고 싶어도 앱의 root 부분(여기)에서는 둘 중에 하나의 테마를 반드시 골라줘야 한다.
    return MaterialApp(
      // home에 포함된 위젯은 사용자가 어플을 켰을 때 가장 먼저 보게 되는 화면(위젯)이다.
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        // 네비게이션 바 아래의 본문(body) 부분
        // 화면이 길어질 경우 스크롤할 수 있도록 아래의 View 위젯 사용
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 간격을 주기 위해 SizedBox 위젯 사용
                const SizedBox(height: 70),
                Row(
                  // Row의 mainAxis는 가로축, crossAxis는 세로축이다.
                  // 가로로 정렬하고 싶으므로 mainAxisAlignment를 end로 설정함.
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      // Column의 mainAxis는 세로축, crossAxis는 가로축이다.
                      // 가로로 정렬하고 싶으므로 crossAxisAlignment를 end로 설정함.
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withAlpha(150),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withAlpha(150),
                    fontSize: 22,
                  ),
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // button.dart에서 만든 Button 위젯 사용
                    Button(text: "Transfer"),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withAlpha(150),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                // currency_card.dart에서 만든 CurrencyCard 위젯 사용
                const CurrencyCard(
                  name: "Euro",
                  amount: "6 428",
                  code: "EUR",
                  icon: Icons.euro_rounded,
                  index: 0,
                ),
                const CurrencyCard(
                  name: "Dollar",
                  amount: "55 622",
                  code: "USD",
                  icon: Icons.attach_money_rounded,
                  index: 1,
                ),
                const CurrencyCard(
                  name: "Rupee",
                  amount: "28 981",
                  code: "INR",
                  icon: Icons.currency_rupee_rounded,
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
