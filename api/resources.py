from flask import jsonify, request
from flask.views import MethodView
from flask_jwt_extended import verify_jwt_in_request, create_access_token

from .identity import IdentityContext
from .enums import ApiStatusEnum
from .models import (
    Exercise,
    Movement,
    Workout,
    WorkoutTask,
    WorkoutTaskAction,
    Goal,
    Method,
    User,
)
from .schemas import (
    exercise_schema,
    exercises_schema,
    goal_schema,
    goals_schema,
    movement_schema,
    movements_schema,
    workout_schema,
    workouts_schema,
    workout_task_schema,
    workout_tasks_schema,
    workout_task_action_schema,
    workout_task_actions_schema,
    method_schema,
    methods_schema,
)


def respond(content=None, status=ApiStatusEnum.OK):
    return jsonify({"data": content}), status


class HealthApi(MethodView):
    def get(self):
        return respond({"status": ApiStatusEnum.OK})


class LoginApi(MethodView):
    def post(self):
        error_message = "There was an error with your E-Mail/Password combination. Please try again."
        email = request.json.get("email", None)
        password = request.json.get("password", None)
        user = User.query.filter(User.email == email).first()

        if user is None:
            return respond({"message": error_message}, ApiStatusEnum.BAD_REQUEST)

        if not IdentityContext().verify_password(password, user.password):
            return respond({"message": error_message}, ApiStatusEnum.BAD_REQUEST)

        access_token = create_access_token(identity=email, fresh=True)
        content = {"access_token": access_token}
        return respond(content)


class ExerciseApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = Exercise.query.all()
            serialized = exercises_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = Exercise.query.get(id)
            serialized = exercise_schema.dump(data)
            return respond(serialized)


class GoalApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = Goal.query.all()
            serialized = goals_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = Goal.query.get(id)
            serialized = goal_schema.dump(data)
            return respond(serialized)


class MethodApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = Method.query.all()
            serialized = methods_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = Method.query.get(id)
            serialized = method_schema.dump(data)
            return respond(serialized)


class MovementApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = Movement.query.all()
            serialized = movements_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = Movement.query.get(id)
            serialized = movement_schema.dump(data)
            return respond(serialized)


class WorkoutApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = Workout.query.all()
            serialized = workouts_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = Workout.query.get(id)
            serialized = workout_schema.dump(data)
            return respond(serialized)


class WorkoutTaskApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = WorkoutTask.query.all()
            serialized = workout_tasks_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = WorkoutTask.query.get(id)
            serialized = workout_task_schema.dump(data)
            return respond(serialized)


class WorkoutTaskActionApi(MethodView):
    def __init__(self):
        verify_jwt_in_request()

    def get(self, id=None):
        if id is None:
            # return a list
            data = WorkoutTaskAction.query.all()
            serialized = workout_task_actions_schema.dump(data)
            return respond(serialized)
        else:
            # return a single
            data = WorkoutTaskAction.query.get(id)
            serialized = workout_task_action_schema.dump(data)
            return respond(serialized)
