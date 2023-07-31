from sqlalchemy.types import Unicode, UnicodeText
from sqlalchemy.schema import UniqueConstraint

from .extensions import db


# --------------------------------------------------
# abstract models
# --------------------------------------------------
class BaseEntity(db.Model):
    __abstract__ = True
    created_on = db.Column(
        db.DateTime, default=db.func.current_timestamp(), nullable=False
    )
    modified_on = db.Column(
        db.DateTime,
        default=db.func.current_timestamp(),
        onupdate=db.func.current_timestamp(),
        nullable=False,
    )

    @property
    def columns(self):
        return [c.name for c in self.__table__.columns]

    @property
    def column_values(self):
        return dict([(c, getattr(self, c)) for c in self.columns])

    def as_dict(self):
        return self.column_values

    def __repr__(self):
        return "{}({})".format(self.__class__.__name__, self.column_values)

    def __str__(self):
        return "{}({})".format(self.__class__.__name__, self.column_values)


class CoreEntity(BaseEntity):
    __abstract__ = True
    id = db.Column(db.BigInteger, primary_key=True, nullable=False)


class ReferenceEntity(BaseEntity):
    __abstract__ = True
    id = db.Column(db.BigInteger, primary_key=True, nullable=False)
    name = db.Column(Unicode(128), unique=True, nullable=False)
    description = db.Column(Unicode(1024), nullable=True)


# --------------------------------------------------
# reference models
# --------------------------------------------------
class Exercise(ReferenceEntity):
    __tablename__ = "exercise"
    parent_id = db.Column(db.BigInteger, db.ForeignKey("exercise.id"), nullable=True)
    parent = db.relationship("Exercise")
    movements = db.relationship("ExerciseMovement", back_populates="exercise")


class ExerciseMovement(ReferenceEntity):
    __tablename__ = "exercise_movement"
    __table_args__ = (
        (UniqueConstraint("exercise_id", "movement_id", name="uidx_exercise_movement")),
    )
    exercise_id = db.Column(db.BigInteger, db.ForeignKey("exercise.id"), nullable=False)
    movement_id = db.Column(db.BigInteger, db.ForeignKey("movement.id"), nullable=False)
    exercise = db.relationship("Exercise", back_populates="movements")
    movement = db.relationship("Movement")


class Goal(ReferenceEntity):
    __tablename__ = "goal"
    parent_id = db.Column(db.BigInteger, db.ForeignKey("goal.id"), nullable=True)
    parent = db.relationship("Goal")


class Method(ReferenceEntity):
    __tablename__ = "method"
    parent_id = db.Column(db.BigInteger, db.ForeignKey("method.id"), nullable=True)
    parent = db.relationship("Method")


class Movement(ReferenceEntity):
    __tablename__ = "movement"
    parent_id = db.Column(db.BigInteger, db.ForeignKey("movement.id"), nullable=True)
    parent = db.relationship("Movement")


# --------------------------------------------------
# core models
# --------------------------------------------------
class Workout(CoreEntity):
    __tablename__ = "workout"
    goal_id = db.Column(db.BigInteger, db.ForeignKey("goal.id"), nullable=True)
    name = db.Column(Unicode(255), nullable=False, unique=True)
    tasks = db.relationship("WorkoutTask")
    goal = db.relationship("Goal")


class WorkoutTask(CoreEntity):
    __tablename__ = "workout_task"
    workout_id = db.Column(db.BigInteger, db.ForeignKey("workout.id"), nullable=False)
    method_id = db.Column(db.BigInteger, db.ForeignKey("method.id"), nullable=False)
    sort = db.Column(db.Integer(), nullable=False)
    rest = db.Column(db.Numeric(10, 2), nullable=True)
    note = db.Column(UnicodeText(), nullable=True)
    method = db.relationship("Method")
    actions = db.relationship("WorkoutTaskAction")


class WorkoutTaskAction(CoreEntity):
    __tablename__ = "workout_task_action"
    workout_task_id = db.Column(
        db.BigInteger, db.ForeignKey("workout_task.id"), nullable=False
    )
    exercise_id = db.Column(db.BigInteger, db.ForeignKey("exercise.id"), nullable=False)
    sort = db.Column(db.Integer(), nullable=False)
    repetitions = db.Column(db.Integer(), nullable=True)
    load = db.Column(db.Numeric(10, 2), nullable=True)
    weight = db.Column(db.Numeric(10, 2), nullable=True)
    speed = db.Column(db.Numeric(10, 2), nullable=True)
    duration = db.Column(db.Numeric(10, 2), nullable=True)
    distance = db.Column(db.Numeric(10, 2), nullable=True)
    rest = db.Column(db.Numeric(10, 2), nullable=True)
    note = db.Column(UnicodeText(), nullable=True)
    exercise = db.relationship("Exercise")


class User(CoreEntity):
    __tablename__ = "user"
    email = db.Column(Unicode(255), nullable=False, unique=True)
    password = db.Column(Unicode(255), nullable=False)
    birth_year = db.Column(db.Integer(), nullable=False)
    post_code = db.Column(Unicode(255), nullable=False)
