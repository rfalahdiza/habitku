import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitku/models/habit.dart';

class HabitProvider extends Notifier<List<Habit>>{
  @override
  List<Habit>build(){
    return const[
      Habit(
      icon: Icons.water_drop,
      title: 'Minum Air',
      subtitle: 'Minum 8 gelas air',
      isDone: true,
      ),
      Habit(
        icon: Icons.menu_book,
        title: 'Baca buku',
        subtitle: 'Membaca buku filosofi teras',
        isDone: true,
      ),
      Habit(
        icon: Icons.code,
        title: 'Ngoding',
        subtitle: 'Raion Academy 2026',
      ),
      Habit(
        icon: Icons.directions_run,
        title: 'Olahraga',
        subtitle: 'Lari 5 km pace 3',
      ),
    ];
  }
  //mengubah status widget habit
  void toggle(int index){
    final list = [...state];
    list[index] = list[index].copywith(isDone: !list[index].isDone);
    state = list;
  }
  void add(String title, String subtitle, IconData icon){
    state = [
      ...state,
      Habit(icon:Icons.star, title: title, subtitle: subtitle),
    ];
  }
}

final habitProvider = NotifierProvider<HabitProvider, List<Habit>>(
  HabitProvider.new,
);