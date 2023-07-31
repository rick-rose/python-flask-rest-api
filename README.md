# Python Flask REST API

## Description
This is a RESTful API made in Python and the Flask framework.

## Install Local
1. Start PostgreSQL in Docker
  ```
  docker run --name postgres1 -p 5001:5432 -e POSTGRES_PASSWORD=idiot -d postgres
  ```

2. Create a PostgreSQL database
  ```
  docker exec -it postgres1 psql -U postgres -c "create database api"
  ```

3. Create a python virtual environment
  ```
  virtualenv -p python3 .venv
  source .venv/bin/activate
  ```

4. Install python packages
  ```
  pip install -r requirements.txt
  ```

5. Configure flask environment variables
  ```
  export FLASK_APP=run.py
  export FLASK_ENV=development
  ```

### Commands
| Command | Prompts | Description |
| ------- | ------- | ---------- |
| flask install_db | No | creates the database tables |
| flask reset_db | No | drops and re-creates the database tables |
| flask seed_db | No | populates the database tables |
| flask create_user | Yes | creates a user |
| flask run | No | runs the application |

### Endpoints
| Endpoint| Method | Description |
| ------- | ------- | ---------- |
| v1/health | GET | returns a status check |
| v1/login | GET | obtain an API authentication token |
| v1/exercises | GET | list of exercises |
| v1/exercises/<id> | GET | an exercise |
| v1/goals | GET | list of goals |
| v1/goals/<id> | GET | a goal |
| v1/methods | GET | list of methods |
| v1/methods/<id> | GET | a method |
| v1/movements | GET | list of movements |
| v1/movements/<id> | GET | a movement |
| v1/workouts | GET | list of workouts |
| v1/workouts/<id> | GET | a workout |
| v1/workout-tasks | GET | list of workout tasks |
| v1/workout-tasks/<id> | GET | a workout task |
| v1/workout-task-actions | GET | list of workout task actions |
| v1/workout-task-actions/<id> | GET | a workout task action |