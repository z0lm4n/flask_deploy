from dotenv import load_dotenv
import os

load_dotenv()


class Config:
    FLASK_APP = 'wsgi.py'
    # SECRET_KEY = os.getenv('SECRET_KEY')
    SECRET_KEY = 'ZZTOP'
    
    SQLALCHEMY_DATABASE_URI = 'sqlite:///my_db.db'