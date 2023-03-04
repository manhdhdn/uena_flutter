class ApiConstants {
  static const String baseUrl = 'https://uena-apis.azurewebsites.net/api';

  static final Map<String, dynamic> eventBodySchema = {
    'type': 'object',
    'properties': {
      'id': {'type': 'string', 'format': 'guid'},
      'name': {'type': 'string'},
      'image': {'type': 'string'},
      'description': {'type': 'datetime'},
      'dateStart': {'type': 'datetime'},
      'location': {'type': 'string'},
      'surveyLink': {'type': 'string'},
      'adLink': {'type': 'string'},
      'specID': {'type': 'string', 'format': 'guid'},
      'status': {'type': 'boolean'}
    },
    'required': [
      'id',
      'name',
      'image',
      'description',
      'dateStart',
      'location',
      'surveyLink',
      'specID',
      'status'
    ]
  };
}
