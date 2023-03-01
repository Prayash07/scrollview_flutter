import 'package:flutter/material.dart';
import 'package:flutter_scrollview/core/appbar/appbar.dart';
import 'package:flutter_scrollview/core/cards/header_card.dart';
import 'package:flutter_scrollview/core/cards/list_card.dart';
import 'package:flutter_scrollview/core/cards/text_form_field.dart';
import 'package:sliver_tools/sliver_tools.dart';

class NestedScrollViewExample extends StatelessWidget {
  const NestedScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1117),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: NestedScrollView(
          headerSliverBuilder: ((context, innerBoxIsScrolled) {
            return [
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
            ];
          }),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: List.generate(
                  20,
                  (index) => const ListCard(),
                ),
              ),
            ),
          )),
    );
  }
}
