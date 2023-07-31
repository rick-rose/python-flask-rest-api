# setup database
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

# setup marshmallow
from flask_marshmallow import Marshmallow

ma = Marshmallow()

# setup jwt
from flask_jwt_extended import JWTManager

jwt = JWTManager()
