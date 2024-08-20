import 'package:attendance/src/features/members_page/widgets/members_list.dart';
import 'package:attendance/src/features/members_page/widgets/search_bar.dart';
import 'package:attendance/src/model/church_member.dart';
import 'package:attendance/src/provider/attendance_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MembersPage extends ConsumerWidget {
  const MembersPage({super.key});

  static const String routeName = 'members-page';
  static const String path = '/members-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ChurchMember> churchMembers = ref.watch(attendanceListProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('NGCK MEMBERS'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(
              onChanged: (value) {},
              onTapSortOption: () {},
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Filter :'),
                    Expanded(child: MembersList(churchMembers: churchMembers)),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
