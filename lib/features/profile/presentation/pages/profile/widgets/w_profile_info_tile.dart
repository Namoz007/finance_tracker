import 'package:finance/src.dart';

class WProfileInfoTile extends StatelessWidget {
  IconData? icon;
  String title;
  String info;
  VoidCallback? onTap;
  WProfileInfoTile({super.key, this.icon, required this.title,required this.info, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w,
      child: Row(
        children: [
          if(icon != null)
            Icon(icon!).paddingOnly(right: 15),
          Text(title,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
          Spacer(),
          Text(info,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
        ],
      ),
    );
  }
}
