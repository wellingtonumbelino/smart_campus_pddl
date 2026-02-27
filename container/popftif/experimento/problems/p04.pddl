(define (problem BL1-all-classrooms-scenario)
  (:domain smart_campus)

  (:objects
    bl1_sl1 bl1_sl2 bl1_sl3 bl1_sl4 - room
    bl1_sl1_ac1 bl1_sl1_ac2 bl1_sl2_ac1 bl1_sl2_ac2 bl1_sl3_ac1 bl1_sl3_ac2 bl1_sl4_ac1 bl1_sl4_ac2 - air_conditioner
    bl1_sl1_l1 bl1_sl1_l2 bl1_sl1_l3 bl1_sl1_l4 bl1_sl2_l1 bl1_sl2_l2 bl1_sl2_l3 bl1_sl2_l4 bl1_sl3_l1 bl1_sl3_l2 bl1_sl3_l3 bl1_sl3_l4 bl1_sl4_l1 bl1_sl4_l2 bl1_sl4_l3 bl1_sl4_l4 - light
  )

  (:init
    (= (people_in_room bl1_sl1) 0)
    (= (people_in_room bl1_sl2) 0)
    (= (people_in_room bl1_sl3) 0)
    (= (people_in_room bl1_sl4) 0)
    
    (= (ac_temperature bl1_sl1_ac1) 0)
    (= (ac_temperature bl1_sl1_ac2) 0)
    (= (ac_temperature bl1_sl2_ac1) 0)
    (= (ac_temperature bl1_sl2_ac2) 0)
    (= (ac_temperature bl1_sl3_ac1) 0)
    (= (ac_temperature bl1_sl3_ac2) 0)
    (= (ac_temperature bl1_sl4_ac1) 0)
    (= (ac_temperature bl1_sl4_ac2) 0)

    (= (metric_total_cost) 0)

    (at 0.0 (operating_hour))

    (at 1.0 (= (people_in_room bl1_sl1) 8))
    (at 2.0 (= (people_in_room bl1_sl2) 4))
    (at 2.0 (= (people_in_room bl1_sl3) 6))
    (at 1.0 (= (people_in_room bl1_sl4) 12))

    (at 10.0 (peak_hours))

    (at 15.0 (= (people_in_room bl1_sl1) 0))
    (at 15.0 (= (people_in_room bl1_sl2) 0))
    (at 15.0 (= (people_in_room bl1_sl3) 0))
    (at 15.0 (= (people_in_room bl1_sl4) 0))
  )

  (:goal
    (and
      (ac_off bl1_sl1 bl1_sl1_ac1)
      (ac_off bl1_sl1 bl1_sl1_ac2)
      (ac_off bl1_sl2 bl1_sl2_ac1)
      (ac_off bl1_sl2 bl1_sl2_ac2)
      (ac_off bl1_sl3 bl1_sl3_ac1)
      (ac_off bl1_sl3 bl1_sl3_ac2)
      (ac_off bl1_sl4 bl1_sl4_ac1)
      (ac_off bl1_sl4 bl1_sl4_ac2)
      (light_off bl1_sl1 bl1_sl1_l1)
      (light_off bl1_sl1 bl1_sl1_l2)
      (light_off bl1_sl1 bl1_sl1_l3)
      (light_off bl1_sl1 bl1_sl1_l4)
      (light_off bl1_sl2 bl1_sl2_l1)
      (light_off bl1_sl2 bl1_sl2_l2)
      (light_off bl1_sl2 bl1_sl2_l3)
      (light_off bl1_sl2 bl1_sl2_l4)
      (light_off bl1_sl3 bl1_sl3_l1)
      (light_off bl1_sl3 bl1_sl3_l2)
      (light_off bl1_sl3 bl1_sl3_l3)
      (light_off bl1_sl3 bl1_sl3_l4)
      (light_off bl1_sl4 bl1_sl4_l1)
      (light_off bl1_sl4 bl1_sl4_l2)
      (light_off bl1_sl4 bl1_sl4_l3)
      (out_work_time)
    )
  )

  (:metric minimize (metric_total_cost))
)