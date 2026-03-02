(define (problem BL1-SL1-scenario-half-capacity)
  (:domain smart_campus)

  (:requirements :strips :typing :fluents :durative-actions :timed-initial-literals :negative-preconditions)

  (:objects
    bl1_sl1 - room
    bl1_sl1_ac1 - air_conditioner
    bl1_sl1_l1 bl1_sl1_l2 - light
  )

  (:init
    (= (ac_temperature bl1_sl1_ac1) 0)
    (= (metric_total_cost) 0)

    (operating_hour)

    (at 0.1
      (people_in_room bl1_sl1))

    (at 0.4
      (not (people_in_room bl1_sl1)))
  )

  (:goal
    (and
      (not (ac_on bl1_sl1 bl1_sl1_ac1))
      (ac_off bl1_sl1 bl1_sl1_ac1)
      (not (light_on bl1_sl1 bl1_sl1_l1))
      (not (light_on bl1_sl1 bl1_sl1_l2))
      (light_off bl1_sl1 bl1_sl1_l1)
      (light_off bl1_sl1 bl1_sl1_l2)
      (out_work_time)
    )
  )
)
