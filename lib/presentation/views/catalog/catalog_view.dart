import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = const [
      'All',
      'Running',
      'Basketball',
      'Lifestyle',
      'Training',
    ];
    final items = const [
      _CatalogItem(
        name: 'Air Pulse',
        category: 'Running',
        price: 129,
        accentColor: Color(0xFFEDE7F6),
      ),
      _CatalogItem(
        name: 'Court Vision',
        category: 'Basketball',
        price: 99,
        accentColor: Color(0xFFE8F5E9),
      ),
      _CatalogItem(
        name: 'Street Flex',
        category: 'Lifestyle',
        price: 119,
        accentColor: Color(0xFFE3F2FD),
      ),
      _CatalogItem(
        name: 'Metcon Core',
        category: 'Training',
        price: 139,
        accentColor: Color(0xFFFFF3E0),
      ),
      _CatalogItem(
        name: 'Zoom Elevate',
        category: 'Running',
        price: 149,
        accentColor: Color(0xFFF3E5F5),
      ),
      _CatalogItem(
        name: 'Legacy 96',
        category: 'Lifestyle',
        price: 109,
        accentColor: Color(0xFFE0F7FA),
      ),
    ];

    final width = MediaQuery.of(context).size.width;
    final columns = width >= 1200 ? 4 : width >= 760 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Explore',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              'Fresh picks from the latest drop',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search in catalog',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 38,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return Chip(
                    label: Text(categories[index]),
                    backgroundColor: Colors.grey[100],
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (context, index) {
                return _CatalogCard(item: items[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CatalogCard extends StatelessWidget {
  final _CatalogItem item;

  const _CatalogCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: item.accentColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Icon(
                  Icons.directions_run,
                  size: 44,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            item.name,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            item.category,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${item.price.toStringAsFixed(0)}',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _CatalogItem {
  final String name;
  final String category;
  final double price;
  final Color accentColor;

  const _CatalogItem({
    required this.name,
    required this.category,
    required this.price,
    required this.accentColor,
  });
}
