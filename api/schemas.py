from .extensions import ma
from .models import (
    ExerciseMovement,
    Exercise,
    Goal,
    Method,
    Movement,
    Workout,
    WorkoutTask,
    WorkoutTaskAction,
)


class GoalSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Goal

    links = ma.Hyperlinks({"href": ma.URLFor("goal_api", id="<id>"), "rel": "self"})


class MethodSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Method

    links = ma.Hyperlinks({"href": ma.URLFor("method_api", id="<id>"), "rel": "self"})


class MovementSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Movement

    links = ma.Hyperlinks({"href": ma.URLFor("movement_api", id="<id>"), "rel": "self"})


class ExerciseMovementSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = ExerciseMovement

    movement = ma.Nested(MovementSchema, only=["id", "name"])


class ExerciseSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Exercise

    movements = ma.Nested(ExerciseMovementSchema, many=True, only=["movement"])
    links = ma.Hyperlinks({"href": ma.URLFor("exercise_api", id="<id>"), "rel": "self"})


class WorkoutTaskActionSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = WorkoutTaskAction

    exercise = ma.Nested(
        ExerciseSchema, only=["id", "name", "description", "movements"]
    )
    movement = ma.Nested(MovementSchema, only=["id", "name", "description"])


class WorkoutTaskSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = WorkoutTask

    actions = ma.Nested(
        WorkoutTaskActionSchema,
        many=True,
        only=[
            "distance",
            "duration",
            "exercise",
            "id",
            "movement",
            "note",
            "sort",
            "repetitions",
            "rest",
            "speed",
            "weight",
            "load",
        ],
    )
    method = ma.Nested(MovementSchema, only=["id", "name", "description"])


class WorkoutSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Workout

    tasks = ma.Nested(WorkoutTaskSchema, many=True, only=["id", "actions"])
    links = ma.Hyperlinks({"href": ma.URLFor("workout_api", id="<id>"), "rel": "self"})


exercise_schema = ExerciseSchema()
exercises_schema = ExerciseSchema(many=True)

goal_schema = GoalSchema()
goals_schema = GoalSchema(many=True)

method_schema = MethodSchema()
methods_schema = MethodSchema(many=True)

movement_schema = MovementSchema()
movements_schema = MovementSchema(many=True)

workout_schema = WorkoutSchema()
workouts_schema = WorkoutSchema(many=True)

workout_task_schema = WorkoutTaskSchema()
workout_tasks_schema = WorkoutTaskSchema(many=True)

workout_task_action_schema = WorkoutTaskActionSchema()
workout_task_actions_schema = WorkoutTaskActionSchema(many=True)
