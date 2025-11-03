import 'package:finance/src.dart';

class MainScreen extends StatefulWidget {
  String? link;
  MainScreen({super.key,this.link});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with MainMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc,MainState>(
      builder: (context, state) {
        
        if(state.menus == null || state.menuIndex == null){
          return Scaffold(
            body: Center(child: Text("Screen not found"),),
          );
        }
        return Scaffold(
          body: state.menus![state.menuIndex!].page,
          bottomNavigationBar: BottomNavigationBar(
            items: List.generate(
              state.menus!.length, (index) =>
                  BottomNavigationBarItem(
                      icon: Icon(
                        menus[index].icon, color: state.menuIndex! == index ? Colors.grey.shade700 : Colors.grey.shade400,),
                      key: Key(menus[index].key),
                      label: menus[index].name,
                  ),
            ),
            onTap: (index) => context.read<MainBloc>().add(MainEvent.updateIndex(index: index)),
            currentIndex: state.menuIndex!,
            selectedLabelStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w700,
            ),

          ),
        );
      },
    );
  }
}
