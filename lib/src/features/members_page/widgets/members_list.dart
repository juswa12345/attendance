import 'package:attendance/src/model/church_member.dart';
import 'package:flutter/material.dart';

class MembersList extends StatelessWidget {
  const MembersList({
    required this.churchMembers,
    super.key,
  });

  final List<ChurchMember> churchMembers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: churchMembers.length,
      itemBuilder: (context, index) => Card(
        child: Column(
          children: [
            ListTile(
              leading: Text(churchMembers[index].id.toString()),
              title: Text(churchMembers[index].fullName),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Edit'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Generate QR'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
