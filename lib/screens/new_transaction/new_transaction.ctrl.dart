import 'package:flutter/material.dart';
import 'package:money_manager/widgets/category_picker/category_picker.dart';

class NewTransactionController extends ChangeNotifier {
  DateTime? selectedDate = DateTime.now();

  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;

  Future<void> pickDate(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        initialDate: selectedDate ?? now);
    if (picked != null) {
      selectedDate = picked;
      notifyListeners();
    }
  }

  String get formattedDate {
    if (selectedDate == null) return 'Pilih tanggal';
    return '${selectedDate!.day.toString().padLeft(2, '0')} '
        '${_monthName(selectedDate!.month)} '
        '${selectedDate!.year}';
  }

  String _monthName(int month) {
    const months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];
    return months[month - 1];
  }

  void pickCategory(BuildContext context) async {
    await showModalBottomSheet<String>(
        context: context,
        builder: (_) => CategoryPicker(
            selected: _selectedCategory,
            onSelected: (category) {
              Navigator.pop(context);
              _selectedCategory = category;
              notifyListeners();
            }));
  }
}
