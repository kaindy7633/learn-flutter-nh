import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const NetworkImage(
                  'http://resources.ninghao.org/images/say-hello-to-barry.jpg'),
              alignment: Alignment.topCenter,
              // repeat: ImageRepeat.repeatY,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400]!.withOpacity(0.5),
                  BlendMode.hardLight))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: const Icon(Icons.pool, size: 32.0, color: Colors.white),
              // color: const Color.fromRGBO(3, 54, 255, 1.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100]!,
                    width: 3.0,
                    style: BorderStyle.solid),
                // borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 25.0,
                      spreadRadius: -9.0)
                ],
                shape: BoxShape.circle,
                // 径向渐变
                // gradient: const RadialGradient(colors: [
                //   Color.fromRGBO(7, 102, 255, 1.0),
                //   Color.fromRGBO(3, 28, 128, 1.0),
                // ]),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              width: 90.0,
              height: 90.0,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0)),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: 'Kaindy.Liu',
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 34.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100),
            children: [
          TextSpan(
              text: '.com',
              style: TextStyle(fontSize: 17.0, color: Colors.grey))
        ]));
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  final TextStyle _textStyle = const TextStyle(fontSize: 18.0);

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》- $_author。君不见黄河之水天上来, 奔流到海不复回。君不见高堂明镜悲白发, 朝如青丝暮成雪。人生得意须尽欢, 莫使金樽空对月。天生我材必有用, 千金散尽还复来。烹羊宰牛且为乐, 会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
