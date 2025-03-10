// lib/screens/compliance_screen.dart
import 'package:flutter/material.dart';

class ComplianceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compliance Report'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildComplianceOverview(),
            SizedBox(height: 24),
            _buildSafetySection(),
            SizedBox(height: 24),
            _buildEnvironmentalSection(),
            SizedBox(height: 24),
            _buildQualitySection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'Add Compliance Report',
      ),
    );
  }

  Widget _buildComplianceOverview() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Compliance Overview',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildComplianceStat('Total Requirements', '15'),
                _buildComplianceStat('Compliant', '13'),
                _buildComplianceStat('Pending', '2'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComplianceStat(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildSafetySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Safety Compliance',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        _buildComplianceItem(
          'Equipment Safety',
          'Compliant',
          '2025-01-15',
          true,
        ),
        _buildComplianceItem(
          'Worker Safety Training',
          'Pending Review',
          '2025-01-10',
          false,
        ),
        _buildComplianceItem(
          'Emergency Procedures',
          'Compliant',
          '2025-01-20',
          true,
        ),
      ],
    );
  }

  Widget _buildEnvironmentalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Environmental Compliance',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        _buildComplianceItem(
          'Waste Management',
          'Compliant',
          '2025-01-18',
          true,
        ),
        _buildComplianceItem(
          'Water Usage',
          'Compliant',
          '2025-01-17',
          true,
        ),
        _buildComplianceItem(
          'Pesticide Usage',
          'Pending Review',
          '2025-01-16',
          false,
        ),
      ],
    );
  }

  Widget _buildQualitySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quality Control',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        _buildComplianceItem(
          'Product Standards',
          'Compliant',
          '2025-01-19',
          true,
        ),
        _buildComplianceItem(
          'Storage Conditions',
          'Compliant',
          '2025-01-18',
          true,
        ),
        _buildComplianceItem(
          'Documentation',
          'Compliant',
          '2025-01-17',
          true,
        ),
      ],
    );
  }

  Widget _buildComplianceItem(
      String title,
      String status,
      String date,
      bool isCompliant,
      ) {
    return Card(
      margin: EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text('Last checked: $date'),
        trailing: Chip(
          label: Text(status),
          backgroundColor: isCompliant ? Colors.green : Colors.orange,
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}