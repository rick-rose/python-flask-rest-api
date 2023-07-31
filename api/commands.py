import os
import click
from flask.cli import with_appcontext
from sqlalchemy import text

from .extensions import db
from .models import User
from .identity import IdentityContext


@click.command("install_db")
@with_appcontext
def install():
    print("installing...")
    print("...creating database tables")
    db.create_all()
    db.session.commit()


@click.command("reset_db")
@with_appcontext
def reinstall():
    print("reinstalling...")
    print("...dropping database tables")
    db.drop_all()
    print("installing...")
    print("...creating database tables")
    db.create_all()
    db.session.commit()


@click.command("seed_db")
@with_appcontext
def seed():
    print("seeding...")
    execute_sql_script("../data/exercises.sql")
    execute_sql_script("../data/goals.sql")
    execute_sql_script("../data/methods.sql")
    execute_sql_script("../data/movements.sql")
    execute_sql_script("../data/exercise_movements.sql")
    execute_sql_script("../data/workouts.sql")


def execute_sql_script(file):
    print(f"executing {file}")
    working_path = os.path.abspath(os.path.dirname(__file__))
    sql_file_path = os.path.join(working_path, file)
    with open(sql_file_path, "r") as sql_reader:
        sql = sql_reader.read()
        try:
            db.session.execute(text(sql))
            db.session.commit()
        except Exception as error:
            print(sql)
            print(error)


@click.command("create_user")
@click.option("--email", prompt="Your email please")
@click.option("--password", prompt="Your password please")
@click.option("--birth_year", prompt="Your birth year please")
@click.option("--post_code", prompt="Your post code (ZIP) please")
@with_appcontext
def create_user(email, password, birth_year, post_code):
    user = User()
    user.email = email
    user.password = IdentityContext().encrypt_password(password)
    user.birth_year = birth_year
    user.post_code = post_code
    db.session.add(user)
    db.session.commit()
