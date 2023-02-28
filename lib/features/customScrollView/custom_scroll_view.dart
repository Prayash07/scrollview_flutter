import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1117),
      appBar: AppBar(
        title: const Text(
          "Custom Scroll View Example",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff161B22),
        elevation: 0.5,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: MultiSliver(children: [
              const SliverToBoxAdapter(
                child: Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 4)),
              SliverPinnedHeader(
                child: Theme(
                  data: ThemeData(
                    textSelectionTheme: const TextSelectionThemeData(
                      cursorColor: Colors.black,
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.grey,
                      prefixIconColor: Colors.black,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      focusColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(((context, index) {
                return Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  margin: const EdgeInsets.only(
                    bottom: 5,
                    left: 16,
                    right: 16,
                  ),
                );
              }), childCount: 20),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 54))
        ],
      ),
    );
  }
}
