import 'package:flutter/material.dart';
import 'package:text_example/widget/text_counter_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Text Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              'This is larger text',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a bold text',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a italic text',
              style: TextStyle(
                fontSize: 32,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a colored text',
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is custom text 1',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'SyneMono',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is custom text 2',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.orange
                  ..strokeWidth = 1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a shadowed text',
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(2, 1),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is word spacing text',
              style: TextStyle(
                fontSize: 20,
                wordSpacing: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is word spacing text',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              child: Text(
                'This text \nhas some\n new lines',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(8),
              child: Text(
                'This text is limited to 3 lines no matter how much I write here I cannot write more than 3 lines asjkdkjasjkdjkas asdkjjk',
                style: TextStyle(fontSize: 24, color: Colors.white),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a centered text',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextCounterWidget(),
            const SizedBox(height: 8),
            Text(
              'This is a underlined text',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is a crossed out text',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      );
}
