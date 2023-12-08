import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final TextEditingController _writeCaptionController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(context),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          writePost(_writeCaptionController),
          const Divider(),
          addText(context,"Add Location"),
          const Divider(),
          addLocationButton,
          const Divider(),
          addText(context,"Add Music"),
          const Divider(),
          addMusicButton,
          const Divider(),
        ],
      ),

    );
  }

//===============================================================================

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color.fromRGBO(29, 41, 57, 1),
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title:Text("New Post",style: Theme.of(context).textTheme.titleMedium,) ,
      actions: [
        Center(child: Text("Post",style:Theme.of(context).textTheme.titleSmall?.apply(color: Colors.blue),)),
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromRGBO(29, 41, 57, 1),
          ),
          onPressed: () {

          },
        ),

      ],
    );
  }
}

Padding writePost(controller){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/page_image.JPG",width: 100,height: 100,fit: BoxFit.fill,),

          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: "Write a Caption",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 2)
              ),
              maxLines: 10,
            ),
          )
        ],
      ),

    ),
  );
}

SizedBox addText(context,text){
  return  SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: (){}, child: Text(text,style:Theme.of(context).textTheme.titleMedium,)),
    ),
  );
}

SizedBox get addLocationButton{
  return SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
          ],
        ),
      ),
    ),
  );
}

SizedBox get addMusicButton{
  return  SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
          ],
        ),
      ),
    ),
  );
}
