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
      appBar: AppBar(title: const Text('NGCK MEMBERS')),
      body: ListView.builder(
        itemCount: churchMembers.length,
        itemBuilder: (context, index) =>
            Card(child: Text(churchMembers[index].fullName)),
      ),
    );
  }
}
