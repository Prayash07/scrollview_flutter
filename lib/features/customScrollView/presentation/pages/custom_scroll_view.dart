import 'package:flutter/material.dart';
import 'package:flutter_scrollview/core/cards/header_card.dart';
import 'package:flutter_scrollview/core/cards/list_card.dart';
import 'package:flutter_scrollview/core/cards/text_form_field.dart';
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
          const SliverToBoxAdapter(
            child: HeaderCard(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: MultiSliver(
              children: const [
                SliverToBoxAdapter(
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 4)),
                SliverPinnedHeader(
                  child: CustomTextFormField(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                ((context, index) {
                  return const ListCard();
                }),
                childCount: 20,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 54))
        ],
      ),
    );
  }
}
