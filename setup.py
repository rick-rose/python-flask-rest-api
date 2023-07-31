from setuptools import setup, find_packages

setup(
    name="api",
    packages=find_packages(),
    include_package_data=True,
    install_requires=["flask", "flask-sqlalchemy", "flask-wtf", "flask-marshmallow"],
    setup_requires=[],
    tests_require=[],
)
