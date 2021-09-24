import 'package:sab_app/models/item_model.dart';

class Utils {
  static List<Item> getMockedSpecials() {
    return [
      Item('Castle Double Malt', 'Beer Cans - (24 x 410ml)', 'castle_double_malt.jpg', 249, 'Beer'),
      Item('Castle Milk Stout', 'Beer Cans - (6 x 500ml)', 'castle_milk_stout_long_tom.jpg', 89, 'Beer'),
      Item('Three Ships', 'Selected Whisky - 1 x 750ml', 'castle_double_malt.jpg', 169, 'Spirits'),
      Item('Castle Lite', 'NRB (5x 250ml))', 'castle_lite_dumpy.jpg', 59, 'Beer'),
      Item('Castle Lager', 'Lager RB - (12 x 1Liter)', 'castle_lager_dumpy.jpg', 209, 'Beer'),

    ];
  }
}