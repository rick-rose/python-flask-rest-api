from flask import Flask

from .commands import install, reinstall, seed, create_user
from .extensions import db, ma, jwt
from .resources import (
    ExerciseApi,
    GoalApi,
    MovementApi,
    WorkoutApi,
    WorkoutTaskApi,
    WorkoutTaskActionApi,
    MethodApi,
    HealthApi,
    LoginApi,
)


def create_app(config=None):
    app = Flask(__name__)
    app.config.from_object(config)
    register_extensions(app)
    register_resources(app)
    register_hooks(app)
    register_commands(app)

    return app


def register_resources(app):
    api_version = "/v1"

    home_api = HealthApi.as_view("home_api")
    app.add_url_rule("/", view_func=home_api, methods=["GET"])

    health_api = HealthApi.as_view("health_api")
    app.add_url_rule("/health", view_func=health_api, methods=["GET"])

    login_api = LoginApi.as_view("login_api")
    app.add_url_rule(api_version + "/login", view_func=login_api, methods=["POST"])

    exercise_api = ExerciseApi.as_view("exercise_api")
    app.add_url_rule(
        api_version + "/exercises", view_func=exercise_api, methods=["GET"]
    )
    app.add_url_rule(
        api_version + "/exercises/<int:id>", view_func=exercise_api, methods=["GET"]
    )

    goal_api = GoalApi.as_view("goal_api")
    app.add_url_rule(api_version + "/goals", view_func=goal_api, methods=["GET"])
    app.add_url_rule(
        api_version + "/goals/<int:id>", view_func=goal_api, methods=["GET"]
    )

    method_api = MethodApi.as_view("method_api")
    app.add_url_rule(api_version + "/methods", view_func=method_api, methods=["GET"])
    app.add_url_rule(
        api_version + "/methods/<int:id>", view_func=method_api, methods=["GET"]
    )

    movement_api = MovementApi.as_view("movement_api")
    app.add_url_rule(
        api_version + "/movements", view_func=movement_api, methods=["GET"]
    )
    app.add_url_rule(
        api_version + "/movements/<int:id>", view_func=movement_api, methods=["GET"]
    )

    workout_api = WorkoutApi.as_view("workout_api")
    app.add_url_rule(api_version + "/workouts", view_func=workout_api, methods=["GET"])
    app.add_url_rule(
        api_version + "/workouts/<int:id>", view_func=workout_api, methods=["GET"]
    )

    workout_task_api = WorkoutTaskApi.as_view("workout_task_api")
    app.add_url_rule(
        api_version + "/workout-tasks", view_func=workout_task_api, methods=["GET"]
    )
    app.add_url_rule(
        api_version + "/workout-tasks/<int:id>",
        view_func=workout_task_api,
        methods=["GET"],
    )

    workout_task_action_api = WorkoutTaskActionApi.as_view("workout_task_action_api")
    app.add_url_rule(
        api_version + "/workout-task-actions",
        view_func=workout_task_action_api,
        methods=["GET"],
    )
    app.add_url_rule(
        api_version + "/workout-task-actions/<int:id>",
        view_func=workout_task_action_api,
        methods=["GET"],
    )


def register_extensions(app):
    db.init_app(app)
    ma.init_app(app)
    jwt.init_app(app)


def register_hooks(app):
    pass


def register_commands(app):
    app.cli.add_command(install)
    app.cli.add_command(reinstall)
    app.cli.add_command(seed)
    app.cli.add_command(create_user)
