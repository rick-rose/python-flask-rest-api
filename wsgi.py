import os
from api.app import create_app
from api.config import BaseConfig


class ProdConfig(BaseConfig):
    SQLALCHEMY_DATABASE_URI = os.environ.get(
        "APP_SQLALCHEMY_DATABASE_URI", default=None
    )
    SECRET_KEY = os.environ.get("APP_SECRET_KEY", default=None)
    JWT_SECRET_KEY = os.environ.get("APP_JWT_SECRET_KEY", default=None)

    if not SQLALCHEMY_DATABASE_URI:
        raise ValueError("Missing [SQLALCHEMY_DATABASE_URI] environment variable.")

    if not SECRET_KEY:
        raise ValueError("Missing [SECRET_KEY] environment variable.")

    if not JWT_SECRET_KEY:
        raise ValueError("Missing [JWT_SECRET_KEY] environment variable.")


app = create_app(ProdConfig)
