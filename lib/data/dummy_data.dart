import 'package:flutter/material.dart';

import 'package:flutter_chapter_8/models/category.dart';
import 'package:flutter_chapter_8/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Món Italia',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Ăn Nhanh',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Món Đức',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Đáng Yêu',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Món Lạ',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Châu Á',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Châu Á',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Pháp',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Hè',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Mỳ Ý với sốt cà chua',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 quả cà chua',
      '1 muỗng canh dầu ô liu',
      '1 củ hành',
      'Mì Ý 250g',
      'Gia vị',
      'Phô mai (tùy chọn)'
    ],
    steps: [
      'Cắt cà chua và hành tây thành miếng nhỏ.',
      'Đun sôi một ít nước - thêm muối vào khi nước sôi.',
      'Cho mì spaghetti vào nước sôi - sẽ chín trong khoảng 10 đến 12 phút.',
      'Trong khi chờ đợi, hãy đun nóng một ít dầu ô liu và cho hành tây cắt lát vào.',
      'Sau 2 phút, thêm miếng cà chua, muối, tiêu và các loại gia vị khác vào.',
      'Nước sốt sẽ chín sau khi làm xong spaghetti.',
      'Hãy thoải mái thêm một ít phô mai lên trên món ăn đã hoàn thành.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Bánh mì nướng Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 lát bánh mì trắng',
      '1 lát giăm bông',
      '1 lát dứa',
      '1-2 lát phô mai',
      'Bơ'
    ],
    steps: [
      'Bơ một mặt của bánh mì trắng',
      'Lắp giăm bông, dứa và phô mai lên bánh mì trắng',
      'Nướng bánh mì nướng khoảng 10 phút trong lò ở nhiệt độ 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Hamburger cổ điển',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      'Bí quyết gia súc 300g',
      '1 quả cà chua',
      '1 quả dưa chuột',
      '1 củ hành',
      'Sốt cà chua',
      '2 chiếc bánh burger'
    ],
    steps: [
      'Mẫu 2 miếng',
      'Chiên miếng chả cho c. 4 phút mỗi bên',
      'Rán bánh nhanh cho c. Mỗi bên 1 phút',
      'Bánh Bruch với sốt cà chua',
      'Phục vụ burger với cà chua, dưa chuột và hành tây'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'thịt lợn Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 miếng thịt bê cốt lết',
      '4 quả trứng',
      '200g vụn bánh mì',
      '100g Bột mì',
      'Bơ 300ml',
      'Dầu thực vật 100g',
      'Muối',
      'Chanh lát'
    ],
    steps: [
      'Làm mềm thịt bê khoảng 2–4mm và rắc muối vào cả hai mặt.',
      'Trên một đĩa phẳng, dùng nĩa khuấy nhanh trứng.',
      'Lăn nhẹ các miếng cốt lết qua bột mì, sau đó nhúng vào trứng, và cuối cùng phủ qua vụn bánh mì.',
      'Đun nóng bơ và dầu trong chảo lớn (để mỡ thật nóng) rồi chiên thịt schnitzel cho đến khi vàng nâu cả hai mặt.',
      'Đảm bảo đảo chảo thường xuyên để thịt schnitzel được bao quanh bởi dầu và phần vụn trở nên bông.',
      'Lấy ra và để ráo trên giấy ăn. Chiên mùi tây trong lượng dầu còn lại và để ráo nước.',
      'Đặt món schnitzel lên đĩa đã được hâm nóng và dùng kèm với rau mùi tây và lát chanh.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad với cá hồi hun khói',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Rau diếp cừu',
      'Mùi tây',
      'Thì là',
      '200g Cá hồi hun khói',
      'Mù tạc',
      'Giấm balsamic',
      'Dầu ô liu',
      'Muối và tiêu'
    ],
    steps: [
      'Rửa và cắt salad và các loại thảo mộc',
      'Xắt nhỏ cá hồi',
      'Chế biến mù tạt, giấm và dầu ô liu thành món tráng miệng',
      'Chuẩn bị món salad',
      'Thêm khối cá hồi và nước sốt'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Mousse cam thơm ngon',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 tờ Gelatine',
      'Nước cam 150ml',
      '80g Đường',
      'Sữa chua 300g',
      'Kem 200g',
      'Vỏ cam',
    ],
    steps: [
      'Hòa tan gelatine trong nồi',
      'Thêm nước cam và đường',
      'Bỏ nồi ra khỏi bếp',
      'Thêm 2 thìa sữa chua',
      'Khuấy gelatin dưới phần sữa chua còn lại',
      'Làm nguội mọi thứ trong tủ lạnh',
      'Đánh kem và nhấc nó lên dưới khối màu cam',
      'Hạ nhiệt lại trong ít nhất 4 giờ',
      'Ăn kèm vỏ cam',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Bánh xèo',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 chén bột mì đa dụng',
      '3 1/2 muỗng cà phê bột nở',
      '1 muỗng cà phê muối',
      '1 muỗng canh đường trắng',
      '1 1/4 cốc sữa',
      '1 quả trứng',
      '3 thìa canh bơ tan chảy',
    ],
    steps: [
      'Trong một tô lớn, rây bột mì, bột nở, muối và đường.',
      'Tạo một cái giếng ở giữa rồi đổ sữa, trứng và bơ tan chảy vào; trộn cho đến khi mịn.',
      'Làm nóng vỉ nướng hoặc chảo rán đã phết một ít dầu trên lửa vừa cao.',
      'Đổ hoặc múc bột lên vỉ nướng, dùng khoảng 1/4 cốc cho mỗi chiếc bánh. Chiên chín đều hai mặt và dùng nóng.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Cà ri gà Ấn Độ kem',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 ức gà',
      '1 củ hành',
      '2 tép tỏi',
      '1 miếng gừng',
      '4 muỗng canh hạnh nhân',
      '1 muỗng cà phê ớt cayenne',
      '500ml nước cốt dừa',
    ],
    steps: [
      'Lát và chiên ức gà',
      'Xào hành, tỏi và gừng thành hỗn hợp sệt rồi xào mọi thứ',
      'Thêm gia vị và xào',
      'Thêm ức gà + 250ml nước và nấu mọi thứ trong 10 phút',
      'Thêm nước cốt dừa',
      'Ăn kèm cơm'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 muỗng cà phê bơ tan chảy',
      '2 muỗng canh đường trắng',
      '2 Ounce Sôcôla đen 70%, chia thành từng miếng',
      '1 muỗng canh bơ',
      '1 muỗng canh bột mì đa dụng',
      '4 1/3 thìa sữa lạnh',
      '1 nhúm muối',
      '1 nhúm ớt cayenne',
      '1 lòng đỏ trứng lớn',
      '2 lòng trắng trứng lớn',
      '1 nhúm kem Tartar',
      '1 muỗng canh đường trắng',
    ],
    steps: [
      'Làm nóng lò ở nhiệt độ 190°C. Lót giấy nến vào khay nướng có viền.',
      'Chải nhẹ đáy và các mặt của 2 chiếc ramekin với 1 thìa cà phê bơ tan chảy; che phần dưới và các cạnh lên tới tận vành.',
      'Thêm 1 thìa đường trắng vào ramekins. Xoay ramekins cho đến khi đường phủ lên tất cả các bề mặt.',
      'Đặt miếng sô cô la vào tô trộn kim loại.',
      'Đặt bát lên chảo có khoảng 3 cốc nước nóng ở lửa nhỏ.',
      'Làm tan chảy 1 thìa bơ trong chảo trên lửa vừa. Rắc bột mì. Đánh đều cho đến khi bột hòa vào bơ và hỗn hợp đặc lại.',
      'Đánh trong sữa lạnh cho đến khi hỗn hợp trở nên mịn và đặc lại. Chuyển hỗn hợp vào bát với sô cô la tan chảy.',
      'Thêm muối và ớt cayenne. Trộn đều với nhau. Thêm lòng đỏ trứng vào và trộn đều.',
      'Để tô phía trên nước nóng (không sôi) để giữ ấm sô cô la trong khi đánh lòng trắng trứng.',
      'Cho 2 lòng trắng trứng vào tô trộn; thêm kem tartar. Đánh cho đến khi hỗn hợp bắt đầu đặc lại và một giọt mưa phùn từ máy đánh trứng đọng lại trên bề mặt khoảng 1 giây trước khi tan vào hỗn hợp.',
      'Thêm 1/3 lượng đường và đánh vào. Đánh thêm một chút đường trong khoảng 15 giây.',
      'đánh đều phần đường còn lại. Tiếp tục đánh cho đến khi hỗn hợp đặc như kem cạo râu và giữ được chóp mềm, từ 3 đến 5 phút.',
      'Chuyển ít hơn một nửa lòng trắng trứng sang sô cô la.',
      'Trộn cho đến khi lòng trắng trứng hòa quyện hoàn toàn vào sô cô la.',
      'Thêm phần lòng trắng trứng còn lại; dùng thìa nhẹ nhàng gấp sô-cô-la vào, nhấc từ dưới lên và gập lại.',
      'Ngưng trộn sau khi lòng trắng trứng biến mất. Chia hỗn hợp vào 2 ramekin đã chuẩn bị sẵn. Đặt ramekins lên khay nướng đã chuẩn bị sẵn.',
      'Nướng trong lò đã làm nóng trước cho đến khi các vết phồng rộp và nổi lên trên mặt bánh, từ 12 đến 15 phút.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salad măng tây với cà chua bi',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Măng tây trắng và xanh',
      '30g Hạt Thông',
      '300g cà chua bi',
      'Xa lát',
      'Muối, tiêu và dầu ô liu'
    ],
    steps: [
      'Rửa sạch, gọt vỏ và cắt măng tây',
      'Nấu trong nước muối',
      'Muối và tiêu măng tây',
      'Nướng hạt thông',
      'Cắt đôi quả cà chua',
      'Trộn với măng tây, salad và nước sốt',
      'Ăn kèm với bánh mì baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
