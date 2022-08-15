import 'package:f_web_consumption/domain/models/post.dart';
import 'package:f_web_consumption/ui/controllers/content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebConsumptionPage extends GetView<ContentController> {
  const WebConsumptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network State'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<Post>>(
            // TODO: Usando el controlador vas a llamar el futuro para obtener
            // los posts.
            builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        'Lista de Posts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          final post = snapshot.data![index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${post.title}:',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(post.body),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 12.0,
                          );
                        },
                        itemCount: snapshot.data!.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          /* TODO: Usando el controlador publica un post */.then(
                            (value) {
                              Get.showSnackbar(
                                const GetSnackBar(
                                  message: 'Se subió el Post...',
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          ).catchError(
                            (error) {
                              Get.showSnackbar(
                                const GetSnackBar(
                                  message: 'Hubo un problema...',
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('Subir Post'),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text('No hay datos...'),
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
