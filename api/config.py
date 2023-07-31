class BaseConfig(object):
    DEBUG = False
    TESTING = False
    SITE_NAME = "API"
    SQLALCHEMY_DATABASE_URI = "postgresql://postgres:idiot@localhost:5001/api"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SECRET_KEY = (
        b"\xb6\xac\xd5\xa1\x86w\xd6\xcc\x07\xe2\xa9\x8eB^-!\x99\xcd\\\x98\xb5$D\xad"
    )
    JWT_SECRET_KEY = b"?\xf8\x97q\x0b\x97\xb4!\xe5q\xfe#\x16\xa48\x1a"


class DevConfig(BaseConfig):
    DEBUG = True


class TestConfig(BaseConfig):
    TESTING = True
