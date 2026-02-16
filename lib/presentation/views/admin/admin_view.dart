import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = const [
      _AdminStat('Orders', '128', Icons.inventory_2_outlined),
      _AdminStat('Revenue', '\$12.4k', Icons.attach_money),
      _AdminStat('Customers', '64', Icons.people_outline),
    ];
    final actions = const [
      _AdminAction('Add product', Icons.add_box_outlined),
      _AdminAction('Manage orders', Icons.fact_check_outlined),
      _AdminAction('Inventory', Icons.inventory_outlined),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Store overview',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              'Quick snapshot of performance',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            Row(
              children: stats
                  .map(
                    (stat) => Expanded(
                      child: _AdminStatCard(stat: stat),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),
            Text(
              'Actions',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            ...actions.map((action) => _AdminActionCard(action: action)),
          ],
        ),
      ),
    );
  }
}

class _AdminStatCard extends StatelessWidget {
  final _AdminStat stat;

  const _AdminStatCard({required this.stat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
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
          Icon(stat.icon, color: Colors.black87),
          const SizedBox(height: 10),
          Text(
            stat.value,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            stat.label,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class _AdminActionCard extends StatelessWidget {
  final _AdminAction action;

  const _AdminActionCard({required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
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
      child: Row(
        children: [
          Icon(action.icon),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              action.title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _AdminStat {
  final String label;
  final String value;
  final IconData icon;

  const _AdminStat(this.label, this.value, this.icon);
}

class _AdminAction {
  final String title;
  final IconData icon;

  const _AdminAction(this.title, this.icon);
}
