import 'dart:convert';
import 'dart:io';
import 'dart:developer';
import 'package:flutter_app/utils/modals/posts_model/posts_model.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  List<XFile> localFiles = <XFile>[];
  PostData? posts;

  bool isLoading = false;
  final ImagePicker _imagePicker = ImagePicker();
  String path = 'http://localhost:8000/api/posts/';

  Future<void> _pickImage() async {
    List<XFile> selectedFiles = await _imagePicker.pickMultiImage();

    if (selectedFiles.isEmpty) {
      log('No image selected.');
      return;
    }

    localFiles = selectedFiles;
    setState(() {});
  }

  Future<void> _getPosts() async {
    Response response = await http.get(
      Uri.parse(path),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );

    log(response.body);
    posts = PostData.fromJson(jsonDecode(response.body));
    setState(() {});
  }

  Future<void> _submitImages() async {
    try {
      setState(() {
        isLoading = true;
      });

      MultipartRequest request = http.MultipartRequest('POST', Uri.parse(path));
      final List<http.MultipartFile> userFiles = <http.MultipartFile>[];
      int index = 0;
      for (final XFile localFile in localFiles) {
        http.MultipartFile imageFile = await http.MultipartFile.fromPath(
          'medias$index',
          localFile.path,
          filename: localFile.name,
        );

        userFiles.add(imageFile);
        index++;
      }
      request.files.addAll(userFiles);
      request.fields.addAll({
        "userId": "1",
        "message": "Trying to upload multiple media.",
      });

      await request.send();
      setState(() {
        isLoading = false;
      });
    } catch (e, stackTrace) {
      log(stackTrace.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (posts != null && posts!.medias!.isNotEmpty)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: posts!.medias!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          'http://localhost:8000/${posts!.medias![index].url!}',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              Expanded(
                flex: 0,
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ElevatedButton(
                    onPressed: _getPosts,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Text(
                      'Get Data',
                      style: TextStyle(color: Theme.of(context).canvasColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: _pickImage,
                child: Ink(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.file_upload_outlined,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              if (localFiles.isNotEmpty)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: localFiles.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.file(
                          File(localFiles[index].path),
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              if (localFiles.isNotEmpty)
                Expanded(
                  flex: 0,
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: ElevatedButton(
                      onPressed: _submitImages,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator.adaptive(
                                strokeWidth: 3,
                              ),
                            )
                          : Text(
                              'Submit',
                              style: TextStyle(
                                  color: Theme.of(context).canvasColor),
                            ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
