import requests
from PIL import Image

def handler(event, context):
    try:
      response = requests.get("https://zenquotes.io/api/random/")
      res = response.json()
      quote = res[0]['q']

      return {
          'statusCode': 200,
          'body': quote
      }

    except Exception as e:
            return {
                'statusCode': 500,
                'body': f'Error: {str(e)}'
            }