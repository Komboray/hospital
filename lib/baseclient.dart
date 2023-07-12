import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


const String baseUrl = 'https:';

  class BaseClient{
    var client = http.Client();

    Future<dynamic> get(String api) async{
      var url = Uri.parse(api);
      var _headers = {
        'username': 'VFlwz1GWpIeEygAUrWNqLCOa2hIIClqX',
        'password': 'SehOmAA3063QShz1',
      };


      var response = await client.get(url);
      if(response.statusCode == 200){
        return response.body;
      }else{
        ///throw exception

      }
    }


  }