import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopresearchWidget(),
    );
  }
}

class TopresearchWidget extends StatefulWidget {
  const TopresearchWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TopresearchWidgetState createState() => _TopresearchWidgetState();
}

class _TopresearchWidgetState extends State<TopresearchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController textController = TextEditingController();
  final FocusNode textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.green,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Recommendations', style: TextStyle(color: Colors.white)),
          elevation: 2.0,
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              _buildSearchBar(context),
              const SizedBox(height: 20.0),
              _buildRecommendation(
                context,
                'https://www.seoultower.co.kr/',
                'https://images.unsplash.com/photo-1685761341534-b155d516eb80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxN3x8TiUyMFNlb3VsJTIwVG93ZXJ8ZW58MHx8fHwxNzIyNzc1NzE4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                'N Seoul Tower\n4.7 (89 reviews)',
              ),
              const SizedBox(height: 12.0),
              _buildRecommendation(
                context,
                'https://royal.cha.go.kr/ENG/contents/E101010000.do',
                'https://images.unsplash.com/photo-1638964663550-e2123ac8900b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxHeWVvbmdib2tndW5nJTIwUGFsYWNlfGVufDB8fHx8MTcyMjc3NTc5MHww&ixlib=rb-4.0.3&q=80&w=1080',
                'Gyeongbokgung Palace\n4.3 (58 reviews)',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded, color: Colors.grey),
          Expanded(
            child: TextField(
              controller: textController,
              focusNode: textFieldFocusNode,
              decoration: const InputDecoration(
                labelText: 'Search for the place',
                border: InputBorder.none,
              ),
            ),
          ),
          const Icon(Icons.mic_none, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildRecommendation(
      BuildContext context, String url, String imageUrl, String title) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              height: 86.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          const Icon(Icons.star, color: Colors.grey, size: 24.0),
        ],
      ),
    );
  }
  
  canLaunch(String url) {}
  
  launch(String url) {}
}

