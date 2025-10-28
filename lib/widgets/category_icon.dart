import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? color.withOpacity(0.2) : Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
              border: isSelected
                  ? Border.all(color: color, width: 2)
                  : Border.all(color: Colors.transparent),
            ),
            padding: const EdgeInsets.all(12),
            child: Icon(
              icon,
              color: isSelected ? color: Colors.grey[700],
              size: 28,
            ),
          ),
          const SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 13, color: isSelected ? color: Colors.black87, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
