from flask import Flask

app = Flask(__name__)

@app.route('/')
def main():
    return"Girlcode Store API"

@app.route('/categories')
def products_route():
    tmp_categories = [
    
         { "name" : "Furniture",
           "path"  : "/category/furniture"},

    ]

    categories_dict = {
        "categories": tmp_categories 
    }

    return categories_dict