(define (domain smart_campus)
  (:requirements :strips :typing :fluents :durative-actions :timed-initial-literals :negative-preconditions)

  (:types
    room air_conditioner light
  )

  (:predicates
    (operating_hour)
    (work_time)
    (out_work_time)
    (peak_hours)
    (ac_on ?r - room ?a - air_conditioner)
    (ac_off ?r - room ?a - air_conditioner)
    (light_on ?r - room ?l - light)
    (light_off ?r - room ?l - light)
    (people_in_room ?r - room)
  )

  (:functions
    (ac_temperature ?a - air_conditioner)
    (metric_total_cost)
  )

  (:durative-action start_campus_operating
    :parameters ()
    :duration (= ?duration 0.4)
    :condition (and
      (at start (operating_hour))
      (over all (operating_hour))
    )
    :effect (and
      (at start (work_time))
      (at end (not (work_time)))
      (at end (out_work_time))
    )
  )

  (:durative-action turn_on_air_conditioner
    :parameters (?r - room ?a - air_conditioner)
    :duration (= ?duration 0.2)
    :condition (and
      (at start (work_time))
      (at start (people_in_room ?r))
    )
    :effect (and
      (at start (ac_on ?r ?a))
      (at end (increase (metric_total_cost) 4))
    )
  )

  (:durative-action turn_on_air_conditioner_peak_hours
    :parameters (?r - room ?a - air_conditioner)
    :duration (= ?duration 0.3)
    :condition (and
      (at start (work_time))
      (at start (people_in_room ?r))
      (at start (peak_hours))
    )
    :effect (and
      (at start (ac_on ?r ?a))
      (at end (increase (metric_total_cost) 2))
    )
  )

  (:durative-action turn_off_air_conditioner
    :parameters (?r - room ?a - air_conditioner)
    :duration (= ?duration 0.1)
    :condition (and
      (at start (ac_on ?r ?a))
      (over all (not (people_in_room ?r)))
    )
    :effect (and
      (at start (not (ac_on ?r ?a)))
      (at start (ac_off ?r ?a))
    )
  )

  (:durative-action turn_on_light
    :parameters (?r - room ?l - light)
    :duration (= ?duration 0.2)
    :condition (and
      (at start (work_time))
      (at start (people_in_room ?r))
    )
    :effect (and
      (at start (light_on ?r ?l))
      (at end (increase (metric_total_cost) 2))
    )
  )

  (:durative-action turn_off_light
    :parameters (?r - room ?l - light)
    :duration (= ?duration 0.1)
    :condition (and
      (at start (light_on ?r ?l))
      (over all (not (people_in_room ?r)))
    )
    :effect (and
      (at start (not (light_on ?r ?l)))
      (at start (light_off ?r ?l))
    )
  )

  (:durative-action set_ac_temperature_25
    :parameters (?r - room ?a - air_conditioner)
    :duration (= ?duration 0.3)
    :condition (and
      (at start (ac_on ?r ?a))
      (over all (peak_hours))
    )
    :effect (and
      (at start (assign (ac_temperature ?a) 25))
      (at end (decrease (metric_total_cost) 1))
    )
  )
)
