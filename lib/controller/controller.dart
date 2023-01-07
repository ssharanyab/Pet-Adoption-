import 'package:get/get.dart';

import '../models/category_model.dart';
import '../models/pet_model.dart';

class Controller extends GetxController {
  List<String> animalList = ['Dogs', 'Cats', 'Rabbit', 'Fish'];
  List<CategoryModel> categoryList = [
    CategoryModel(
      'All',
      'https://cdn-icons-png.flaticon.com/512/3047/3047928.png',
    ),
    CategoryModel(
      'Dogs',
      'https://cdn-icons-png.flaticon.com/512/616/616408.png',
    ),
    CategoryModel(
      'Cats',
      'https://cdn-icons-png.flaticon.com/512/616/616430.png',
    ),
    CategoryModel(
      'Rabbit',
      'https://cdn-icons-png.flaticon.com/512/523/523442.png',
    ),
    CategoryModel(
      'Fish',
      'https://cdn-icons-png.flaticon.com/512/3075/3075494.png',
    ),
  ];
  // List<PetModel> petList = [
  //   PetModel(
  //     'Rover',
  //     'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Fawn_pug_2.5year-old.JPG/1200px-Fawn_pug_2.5year-old.JPG',
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //     2,
  //     200,
  //   ),
  //   PetModel(
  //     'Rex',
  //     'https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc4MzAwMjIwNTk2MDM3MjI5/german-shepherd-puppy-bite-inhibition-games.jpg',
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //     1,
  //     100,
  //   ),
  //   PetModel(
  //     'Murphy',
  //     'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Alert_Pug_Puppy.jpg/1200px-Alert_Pug_Puppy.jpg',
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //     1,
  //     100,
  //   ),
  //   PetModel(
  //       'Rocky',
  //       'https://i.pinimg.com/originals/d2/6e/b3/d26eb3a76559bf520a2fbeb9f2698bbb.jpg',
  //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //       1,
  //       100),
  //   PetModel(
  //     'Louis',
  //     'https://static.independent.co.uk/2020/12/26/11/highland-terrier.jpg?width=1200',
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //     1,
  //     100,
  //   ),
  //   PetModel(
  //     'Rex',
  //     'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Golden_Retriever_Puppy_12weeks.JPG/1200px-Golden_Retriever_Puppy_12weeks.JPG',
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
  //     1,
  //     100,
  //   ),
  // ];
  List<PetModel> dogList = [
    PetModel(
      'Rover',
      'Pug',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Fawn_pug_2.5year-old.JPG/1200px-Fawn_pug_2.5year-old.JPG',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      2,
      200,
    ),
    PetModel(
      'Sheru',
      'German Shepherd',
      'https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc4MzAwMjIwNTk2MDM3MjI5/german-shepherd-puppy-bite-inhibition-games.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
      'Murphy',
      'Puggle',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Alert_Pug_Puppy.jpg/1200px-Alert_Pug_Puppy.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
        'Rocky',
        'Husky',
        'https://i.pinimg.com/originals/d2/6e/b3/d26eb3a76559bf520a2fbeb9f2698bbb.jpg',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
        1,
        100),
    PetModel(
      'Louis',
      'Westie',
      'https://static.independent.co.uk/2020/12/26/11/highland-terrier.jpg?width=1200',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
      'Yuki',
      'Golden Retriever',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Golden_Retriever_Puppy_12weeks.JPG/1200px-Golden_Retriever_Puppy_12weeks.JPG',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
  ];
  List<PetModel> catList = [
    PetModel(
      'Milo',
      'Scottish Fold',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Adult_Scottish_Fold.jpg/1200px-Adult_Scottish_Fold.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      2,
      200,
    ),
    PetModel(
      'Snow Bell',
      'Persian',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Persian_Cat_by_Pouria_Afkhami_pixoos.jpg/1200px-Persian_Cat_by_Pouria_Afkhami_pixoos.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
      'Shvi',
      'American Curl',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/American_curl_2.jpg/1200px-American_curl_2.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
        'Meww',
        'Mannie Coon',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Maine_Coon_Cat_List_Characteristics.jpg/1200px-Maine_Coon_Cat_List_Characteristics.jpg',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
        1,
        100),
    PetModel(
      'Camphor',
      'Siberian Cat',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/1_Year_old_male_Siberian_cat.jpg/1200px-1_Year_old_male_Siberian_cat.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
      'Jingle',
      'Scottish Fold',
      'https://s1.1zoom.me/b5050/473/Cats_Scottish_Fold_Glance_Paws_568570_1920x1200.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
  ];
  List<PetModel> rabbitList = [
    PetModel(
      'Bush',
      'Angora',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Joey_Giant_Angora_Buck.jpg/1200px-Joey_Giant_Angora_Buck.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      2,
      300,
    ),
    PetModel(
      'Bunny',
      'American',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Ufenau_-_Oryctolagus_cuniculus_2011-07-25_17-33-40.jpg/1200px-Ufenau_-_Oryctolagus_cuniculus_2011-07-25_17-33-40.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      200,
    ),
    PetModel(
      'Jackkie',
      'Jack Rabbit',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Jackrabbit1.JPG/1200px-Jackrabbit1.JPG',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
        'Eliza',
        'Hotot Rabbit',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Hotot_Rabbit%21.jpg/1200px-Hotot_Rabbit%21.jpg',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
        3,
        100),
    PetModel(
      'Cinnamon',
      'Brown Rabbit',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Mecklenburger_Schecke.jpg/1200px-Mecklenburger_Schecke.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      100,
    ),
    PetModel(
      'Heather',
      'Florida White',
      'https://cdn-fastly.petguide.com/media/2022/02/16/8214275/florida-white-rabbit.jpg?size=1200x628',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      300,
    ),
  ];
  List<PetModel> fishList = [
    PetModel(
      'Nemo',
      'Clown Fish',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Clown_fish_in_the_Andaman_Coral_Reef.jpg/1200px-Clown_fish_in_the_Andaman_Coral_Reef.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      500,
    ),
    PetModel(
      'Goldie',
      'Goldfish',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/%E3%83%AF%E3%82%AD%E3%83%B320120701.JPG/1200px-%E3%83%AF%E3%82%AD%E3%83%B320120701.JPG',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      50,
    ),
    PetModel(
      'Hally',
      'Black Moor',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Black_Moor_Fish.jpg/1200px-Black_Moor_Fish.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      50,
    ),
    PetModel(
      'Angel',
      'Ranchu Goldfish',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Goldfish_Ranchu_2.jpg/1200px-Goldfish_Ranchu_2.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      50,
    ),
    PetModel(
      'Kutie',
      'Faintail Goldfish',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Goldfishorange.jpg/1200px-Goldfishorange.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      50,
    ),
    PetModel(
      'Bob',
      'Bluetail',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Blue_tang_%28Paracanthurus_hepatus%29_01.jpg/1200px-Blue_tang_%28Paracanthurus_hepatus%29_01.jpg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
      1,
      50,
    ),
  ];
  List<PetModel> petList = [];

  // Append all elements in dogList, catList, and fishList to petList
  // petList.addAll(dogList);
  // petList.addAll(catList);
  // petList.addAll(fishList);

  addPet(PetModel pet) {
    petList.add(pet);
  }

  List<PetModel> historyList = [];

  addToHistory(PetModel pet) {
    historyList.add(pet);
    update();
  }

  disableButton(bool isDisabled) {
    isDisabled = true;
    update();
  }
}
