import os

basefir = os.path.abspath(os.path.dirname(__file__))

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'hard to geuss key'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = False

    @staticmethod
    def init_app(app):
        pass


class DevConfig(Config):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'postgresql+psycopg2://testuser:pass@localhost:5432/metrics'

config = {
            'development': DevConfig,
            'default': DevConfig
        }
