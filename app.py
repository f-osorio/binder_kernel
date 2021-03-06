# Build and populate database with information - possible to do with docker
import os
from app import create_app

app = create_app(os.getenv('FLASK_CONFIG') or 'development')


if __name__ == "__main__":
    app.run(port=5030, debug=True)
