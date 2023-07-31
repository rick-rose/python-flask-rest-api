DO
$$
DECLARE
    workout_id workout.id%TYPE;
    workout_task_id workout_task.id%TYPE;
BEGIN
    INSERT INTO "workout"
        ("created_on", "modified_on", "name", "goal_id")
    VALUES
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Old Faithful', 5) RETURNING id INTO workout_id;

        -- 10
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 1, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 10),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 10),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 10),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 10);      -- 7000, 'Air Squat'

        -- 9
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 2, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 9),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 9),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 9),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 9);      -- 7000, 'Air Squat'

        -- 8
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 3, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 8),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 8),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 8),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 8);      -- 7000, 'Air Squat'

        -- 7
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 4, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 7),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 7),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 7),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 7);      -- 7000, 'Air Squat'

        -- 6
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 5, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 6),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 6),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 6),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 6);      -- 7000, 'Air Squat'

        -- 5
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 6, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 5),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 5),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 5),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 5);      -- 7000, 'Air Squat'

        -- 4
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 7, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 4),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 4),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 4),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 4);      -- 7000, 'Air Squat'

        -- 3
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 8, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 3),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 3),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 3),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 3);      -- 7000, 'Air Squat'

        -- 2
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 9, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 2),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 2),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 2),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 2);      -- 7000, 'Air Squat'

        -- 1
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 10, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 0.00, 1),      -- 6005, 'Pull-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3020, 2, 0.00, 1),      -- 3020, 'Dip'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 3, 0.00, 1),      -- 3000, 'Push-Up'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7000, 4, 0.00, 1);      -- 7000, 'Air Squat'
END
$$;
COMMIT;

DO
$$
DECLARE
    workout_id workout.id%TYPE;
    workout_task_id workout_task.id%TYPE;
BEGIN
    INSERT INTO "workout"
        ("created_on", "modified_on", "name", "goal_id")
    VALUES
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Countdown to Torture', 5) RETURNING id INTO workout_id;

        -- 10
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 1, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 10),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 10),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 10),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 10),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 10),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 10),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 10);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 9
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 2, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 9),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 9),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 9),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 9),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 9),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 9),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 9);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 8
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 3, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 8),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 8),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 8),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 8),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 8),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 8),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 8);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 7
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 4, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 7),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 7),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 7),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 7),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 7),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 7),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 7);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 6
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 5, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 6),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 6),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 6),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 6),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 6),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 6),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 6);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 5
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 6, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 5),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 5),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 5),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 5),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 5),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 5),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 5);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 4
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 7, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 4),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 4),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 4),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 4),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 4),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 4),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 4);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 3
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 8, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 3),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 3),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 3),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 3),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 3),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 3),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 3);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 2
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 9, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 2),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 2),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 2),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 2),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 2),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 2),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 2);     -- 10000, 'Flat-Lying EZ-Bar Extension'

        -- 1
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 101, 10, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "rest", "repetitions")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3047, 1, 0.00, 1),      -- 3047, 'EZ-Bar Flat Bench Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 5066, 2, 0.00, 1),      -- 5066, 'EZ-Bar Row'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8035, 2, 0.00, 1),      -- 8035, 'EZ-Bar Deadlift'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 4033, 3, 0.00, 1),      -- 4033, 'EZ-Bar Strict Press'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7040, 4, 0.00, 1),      -- 7040, 'EZ-Bar Squat'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 9000, 5, 0.00, 1),      -- 9000, 'Standing EZ-Bar Curl'
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 10000, 6, 0.00, 1);     -- 10000, 'Flat-Lying EZ-Bar Extension'
END
$$;
COMMIT;

DO
$$
DECLARE
    workout_id workout.id%TYPE;
    workout_task_id workout_task.id%TYPE;
BEGIN
    INSERT INTO "workout"
        ("created_on", "modified_on", "name", "goal_id")
    VALUES
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'Spartan 300', 5) RETURNING id INTO workout_id;

        -- 6005,  'Pull-Up'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 1, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 25, null, 0.00, null);

        -- 8007,  'Barbell Deadlift'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 2, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 8007, 1, 50, 135.00, 0.00, null);

        -- 3000,  'Push-Up'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 3, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 3000, 1,  50, null, 0.00, null);

        -- 7005,  'Box Jump'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 4, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 7005, 1,  50, null, 0.00, null);

        -- 11068, 'Floor Wiper'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 5, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 11068, 1, 50, 135.00, 0.00, null);

        -- 1012,  'Single-Arm Kettlebell Clean and Press'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 6, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 1011, 1, 50, 35.00, 0.00, '25 reps per arm.');

        -- 6005,  'Pull-Up'
        INSERT INTO "workout_task"
            ("created_on", "modified_on", "workout_id", "method_id", "sort", "rest")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_id, 100, 7, 0.00) RETURNING id INTO workout_task_id;

        INSERT INTO "workout_task_action"
            ("created_on", "modified_on", "workout_task_id", "exercise_id", "sort", "repetitions", "weight", "rest", "note")
        VALUES
            (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, workout_task_id, 6005, 1, 25, null, 0.00, null);
END
$$;
COMMIT;