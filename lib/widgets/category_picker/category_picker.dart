import 'package:flutter/material.dart';
import 'package:money_manager/styles/styles.dart';

class CategoryPicker extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onSelected;
  const CategoryPicker(
      {super.key, required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    final categories = [
      '🍲 Makanan',
      '🚗 Transportasi',
      '🧑‍🤝‍🧑 Kehidupan Sosial',
      '🏠 Kebutuhan Rumah',
      '🎓 Pendidikan',
      '🎉 Hiburan',
      '💊 Kesehatan',
      '🕌 Agama',
      '🎣 Hobi',
      '🎁 Kado',
      '👔 Pekerjaan'
    ];
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(21, 8, 13, 8),
            decoration: AppDecorations.categoryHeader,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kategori',
                  style: AppTextStyles.categoryTitle,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: AppDecorations.categoryGrid,
              child: GridView.builder(
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1 / 0.6),
                  itemBuilder: (_, index) {
                    final category = categories[index];
                    return GestureDetector(
                        onTap: () {
                          onSelected(category);
                        },
                        child: Container(
                          height: 10,
                          padding: EdgeInsets.all(10),
                          decoration: AppDecorations.categoryItem,
                          alignment: Alignment.center,
                          child: Text(
                            category,
                            style: AppTextStyles.normalText,
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
