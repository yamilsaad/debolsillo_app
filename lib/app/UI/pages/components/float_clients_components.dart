import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatComponentClient extends StatelessWidget {
  const FloatComponentClient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 45,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: IconButton(
                  onPressed: () {},
                  tooltip: 'Editar',
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  )),
            ),
          ),
          Divider(
            height: 1.0,
          ),
          ShareComponentWidget(),
          Divider(
            height: 1.0,
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: IconButton(
                  onPressed: () {},
                  tooltip: 'Enviar Mensaje',
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                  )),
            ),
          ),
          Divider(
            height: 1.0,
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: IconButton(
                  onPressed: () {},
                  tooltip: 'Eliminar',
                  icon: Icon(
                    Icons.delete_forever,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ShareComponentWidget extends StatelessWidget {
  const ShareComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: Text(
                        'Compartir datos',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                        'Compartir con Apps:',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 3.0,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.wechat_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'WhatsApp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Gmail',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.whatshot_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'LinkedIn',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Copy',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ]),
                        Divider(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                              onPressed: () => Get.back(),
                              child: Text(
                                'Salir',
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    );
                  });
            },
            tooltip: 'Compartir',
            icon: Icon(
              Icons.share,
              color: Colors.white,
            )),
      ),
    );
  }
}
