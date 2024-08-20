import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    required this.onChanged,
    required this.onTapSortOption,
    super.key,
  });

  final ValueChanged<String> onChanged;

  final VoidCallback onTapSortOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blueGrey,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                leading: const Icon(Icons.search_rounded),
                onChanged: onChanged,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: onTapSortOption,
              child: const Icon(Icons.sort),
            ),
          ),
        ],
      ),
    );
  }
}
