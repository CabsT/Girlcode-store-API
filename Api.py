from flask import Flask
from flask_cors import CORS

app = Flask(__name__)

@app.route('/')
def main():
    return"Girlcode Store API"

@app.route('/categories')
def category_route():
    tmp_categories = [
          {
            "name": 'Furniture',
            "path": '/category/furniture',
            "imagePath": 'furnImg',
          },
          {
            "name": 'Handbags',
            "path": '/category/handbags',
            "imagePath": 'handbagImg',
          },
          {
            "name": 'Books',
            "path": '/category/books',
            "imagePath": 'bookImg',
          },
          {
            "name": 'Tech',
            "path": '/category/tech',
            "imagePath": 'techImg',
          },
          {
            "name": 'Sneakers',
            "path": '/category/sneakers',
            "imagePath": 'sneakerImg',
          },
          {
            "name": 'Travel',
            "path": '/category/travel',
            "imagePath": 'travelImg',
          },
        

    ]

    categories_dict = {
        "categories": tmp_categories 
    }

    return categories_dict