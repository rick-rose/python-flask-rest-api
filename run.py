from api.app import create_app
from api.config import DevConfig

app = create_app(DevConfig)
