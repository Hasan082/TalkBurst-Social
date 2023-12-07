import 'package:flutter/material.dart';
import 'border_less_circular_avater.dart';
import 'custom_avater.dart';
class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                const CustomCircularAvater(
                  radius: 13,
                ),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hasan",style: TextStyle(fontWeight: FontWeight.w500),),
                    Text("User Name",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15,
                    child: Image.asset("assets/images/notification.png")
                )
              ],
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/page_image.JPG",width: double.infinity,height: 300,fit: BoxFit.fill,),
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                Image.asset("assets/images/heart.png"),
                const SizedBox(width: 8,),
                InkWell(
                  onTap: (){
                    _modalBottomSheetMenu(context);
                  },
                  child:Row(
                    children: [
                      Image.asset("assets/images/message.png"),
                      const SizedBox(width: 8,),
                      const Text("20 comments"),
                    ],
                  ) ,
                ),
                const SizedBox(width: 8,),
                const Spacer(),
                Image.asset("assets/images/bookmark.png"),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const CustomCircularAvater(
                  radius: 13,
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Add comments",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  void _modalBottomSheetMenu(context){
    var size=MediaQuery.sizeOf(context);
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),

        builder: (builder){
          return Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: size.height/2,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                    child: Text("Comment",style:Theme.of(context).textTheme.titleSmall,),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context,index){
                          return  ListTile(
                            leading: const BorderlessCircularAvater(
                              radius: 17,
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("mferdos12",style: Theme.of(context).textTheme.titleSmall,),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10,),
                                Text("Nice Picture You have capture",style:Theme.of(context).textTheme.bodySmall,),
                                const SizedBox(height: 8,),
                                InkWell(
                                    onTap: (){},
                                    child: const Text("Replay")
                                )
                              ],
                            ),
                            trailing: Image.asset("assets/images/heart_outline.png",width: 35,),
                          );
                        }
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                    child: Row(
                      children: [
                        const CustomCircularAvater(
                          radius: 13,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Add comments",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            ),
                            autofocus: true,
                          ),
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text("Post",style: Theme.of(context).textTheme.titleSmall?.apply(color: Colors.grey),)
                        )
                      ],
                    ),
                  )


                ],
              ),
            ),
          );
        }
    );
  }




}


