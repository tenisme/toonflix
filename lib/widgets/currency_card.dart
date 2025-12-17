import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon;
  final int index;
  // 짝수인지 홀수인지에 따라 카드 색상을 바꾸기 위한 getter
  bool get isInverted => index.isOdd;

  // ignore: unused_field
  final Color _blackColor = const Color(0xFF1F2123);

  // Flutter에서는 위젯의 성능 최적화를 위해 가능하면 const를 유지하는 것을 권장한다.
  // 여기서 : isInverted = index.isOdd;를 사용하면 const 생성자를 사용할 수 없게 되므로, isInverted를 getter로 바꿔서 해결했다.
  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, index * -20),
      child: Container(
        // 컨테이너 바깥을 어떻게 처리할지 정할 수 있는 속성
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                // 부모에 영향을 끼치지 않고 아이콘 크기를 배수 단위로 키움
                scale: 2.2,
                child: Transform.translate(
                  // 아이콘의 위치를 조정
                  offset: const Offset(-5, 12),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 98,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
