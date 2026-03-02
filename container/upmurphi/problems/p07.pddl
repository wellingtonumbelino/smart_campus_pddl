(define (problem smart-campus-scenario)
  (:domain smart_campus)

  (:objects
    bl1_sl1 bl1_sl2 bl1_sl3 bl1_sl4 bl1_sl_pet_ti bl1_sl_pet_si bl1_sl_sec_acad bl1_sl_coord_com bl1_lab1 bl1_lab2 bl1_lab3 bl1_lab4 - room
    bl2_sl1 bl2_sl2 bl2_sl3 bl2_sl4 bl2_library - room
    bl3_sl1 bl3_sl2 bl3_sl3 bl3_sl4 bl3_lab_info_design bl3_lab_info - room
    bl4_sl1 bl4_sl2 bl4_sl3 bl4_sl4 bl4_lab_prototype bl4_sl_projects bl4_lab_arch bl4_lab_electronics bl4_lab_info bl4_lab_robotic bl4_lab_pos - room
    bl1_sl1_ac1 bl1_sl1_ac2 bl1_sl2_ac1 bl1_sl2_ac2 bl1_sl3_ac1 bl1_sl3_ac2 bl1_sl4_ac1 bl1_sl4_ac2 bl1_sl_pet_ti_ac1 bl1_sl_pet_si_ac1 bl1_sl_sec_acad_ac1 bl1_sl_coord_com_ac1 bl1_lab1_ac1 bl1_lab1_ac2 bl1_lab2_ac1 bl1_lab2_ac2 bl1_lab3_ac1 bl1_lab3_ac2 bl1_lab4_ac1 bl1_lab4_ac2 bl2_library_ac1 bl2_library_ac2 bl2_library_ac3 bl2_library_ac4 - air_conditioner
    bl2_sl1_ac1 bl2_sl1_ac2 bl2_sl2_ac1 bl2_sl2_ac2 bl2_sl3_ac1 bl2_sl3_ac2 bl2_sl4_ac1 bl2_sl4_ac2 bl3_lab_info_design_ac1 bl3_lab_info_design_ac2 bl3_lab_info_ac1 bl3_lab_info_ac2 - air_conditioner
    bl3_sl1_ac1 bl3_sl1_ac2 bl3_sl2_ac1 bl3_sl2_ac2 bl3_sl3_ac1 bl3_sl3_ac2 bl3_sl4_ac1 bl3_sl4_ac2 - air_conditioner
    bl4_sl1_ac1 bl4_sl1_ac2 bl4_sl2_ac1 bl4_sl2_ac2 bl4_sl3_ac1 bl4_sl3_ac2 bl4_sl4_ac1 bl4_sl4_ac2 bl4_lab_prototype_ac1 bl4_lab_prototype_ac2 bl4_sl_projects_ac1 bl4_sl_projects_ac2 bl4_lab_arch_ac1 bl4_lab_arch_ac2 bl4_lab_electronics_ac1 bl4_lab_electronics_ac2 bl4_lab_info_ac1 bl4_lab_info_ac2 bl4_lab_robotic_ac1 bl4_lab_robotic_ac2 bl4_lab_pos_ac1 bl4_lab_pos_ac2 - air_conditioner
    bl1_sl1_l1 bl1_sl1_l2 bl1_sl1_l3 bl1_sl1_l4 bl1_sl2_l1 bl1_sl2_l2 bl1_sl2_l3 bl1_sl2_l4 bl1_sl3_l1 bl1_sl3_l2 bl1_sl3_l3 bl1_sl3_l4 bl1_sl4_l1 bl1_sl4_l2 bl1_sl4_l3 bl1_sl4_l4 bl1_sl_pet_ti_l1 bl1_sl_pet_ti_l2 bl1_sl_pet_si_l1 bl1_sl_pet_si_l2 bl1_sl_sec_acad_l1 bl1_sl_sec_acad_l2 bl1_sl_sec_acad_l3 bl1_sl_sec_acad_l4 bl1_sl_coord_com_l1 bl1_sl_coord_com_l2 bl1_lab1_l1 bl1_lab1_l2 bl1_lab1_l3 bl1_lab1_l4 bl1_lab2_l1 bl1_lab2_l2 bl1_lab2_l3 bl1_lab2_l4 bl1_lab3_l1 bl1_lab3_l2 bl1_lab3_l3 bl1_lab3_l4 bl1_lab4_l1 bl1_lab4_l2 bl1_lab4_l3 bl1_lab4_l4 - light
    bl2_sl1_l1 bl2_sl1_l2 bl2_sl1_l3 bl2_sl1_l4 bl2_sl2_l1 bl2_sl2_l2 bl2_sl2_l3 bl2_sl2_l4 bl2_sl3_l1 bl2_sl3_l2 bl2_sl3_l3 bl2_sl3_l4 bl2_sl4_l1 bl2_sl4_l2 bl2_sl4_l3 bl2_sl4_l4 bl2_library_l1 bl2_library_l2 bl2_library_l3 bl2_library_l4 bl2_library_l5 bl2_library_l6 - light
    bl3_sl1_l1 bl3_sl1_l2 bl3_sl1_l3 bl3_sl1_l4 bl3_sl2_l1 bl3_sl2_l2 bl3_sl2_l3 bl3_sl2_l4 bl3_sl3_l1 bl3_sl3_l2 bl3_sl3_l3 bl3_sl3_l4 bl3_sl4_l1 bl3_sl4_l2 bl3_sl4_l3 bl3_sl4_l4 bl3_lab_info_design_l1 bl3_lab_info_design_l2 bl3_lab_info_design_l3 bl3_lab_info_design_l4 bl3_lab_info_l1 bl3_lab_info_l2 bl3_lab_info_l3 bl3_lab_info_l4 - light
    bl4_sl1_l1 bl4_sl1_l2 bl4_sl1_l3 bl4_sl1_l4 bl4_sl2_l1 bl4_sl2_l2 bl4_sl2_l3 bl4_sl2_l4 bl4_sl3_l1 bl4_sl3_l2 bl4_sl3_l3 bl4_sl3_l4 bl4_sl4_l1 bl4_sl4_l2 bl4_sl4_l3 bl4_sl4_l4 bl4_lab_prototype_l1 bl4_lab_prototype_l2 bl4_lab_prototype_l3 bl4_lab_prototype_l4 bl4_sl_projects_l1 bl4_sl_projects_l2 bl4_sl_projects_l3 bl4_sl_projects_l4 bl4_lab_arch_l1 bl4_lab_arch_l2 bl4_lab_arch_l3 bl4_lab_arch_l4 bl4_lab_electronics_l1 bl4_lab_electronics_l2 bl4_lab_electronics_l3 bl4_lab_electronics_l4 bl4_lab_info_l1 bl4_lab_info_l2 bl4_lab_info_l3 bl4_lab_info_l4 bl4_lab_robotic_l1 bl4_lab_robotic_l2 bl4_lab_robotic_l3 bl4_lab_robotic_l4 bl4_lab_pos_l1 bl4_lab_pos_l2 bl4_lab_pos_l3 bl4_lab_pos_l4 - light
  )

  (:init
    (= (ac_temperature bl1_sl1_ac1) 0)
    (= (ac_temperature bl1_sl1_ac2) 0)
    (= (ac_temperature bl1_sl2_ac1) 0)
    (= (ac_temperature bl1_sl2_ac2) 0)
    (= (ac_temperature bl1_sl3_ac1) 0)
    (= (ac_temperature bl1_sl3_ac2) 0)
    (= (ac_temperature bl1_sl4_ac1) 0)
    (= (ac_temperature bl1_sl4_ac2) 0)
    (= (ac_temperature bl1_sl_pet_ti_ac1) 0)
    (= (ac_temperature bl1_sl_pet_si_ac1) 0)
    (= (ac_temperature bl1_sl_sec_acad_ac1) 0)
    (= (ac_temperature bl1_sl_coord_com_ac1) 0)
    (= (ac_temperature bl1_lab1_ac1) 0)
    (= (ac_temperature bl1_lab1_ac2) 0)
    (= (ac_temperature bl1_lab2_ac1) 0)
    (= (ac_temperature bl1_lab2_ac2) 0)
    (= (ac_temperature bl1_lab3_ac1) 0)
    (= (ac_temperature bl1_lab3_ac2) 0)
    (= (ac_temperature bl1_lab4_ac1) 0)
    (= (ac_temperature bl1_lab4_ac2) 0)

    (= (ac_temperature bl2_sl1_ac1) 0)
    (= (ac_temperature bl2_sl1_ac2) 0)
    (= (ac_temperature bl2_sl2_ac1) 0)
    (= (ac_temperature bl2_sl2_ac2) 0)
    (= (ac_temperature bl2_sl3_ac1) 0)
    (= (ac_temperature bl2_sl3_ac2) 0)
    (= (ac_temperature bl2_sl4_ac1) 0)
    (= (ac_temperature bl2_sl4_ac2) 0)
    (= (ac_temperature bl3_lab_info_design_ac1) 0)
    (= (ac_temperature bl3_lab_info_design_ac2) 0)
    (= (ac_temperature bl3_lab_info_ac1) 0)
    (= (ac_temperature bl3_lab_info_ac2) 0)
    (= (ac_temperature bl2_library_ac1) 0)
    (= (ac_temperature bl2_library_ac2) 0)
    (= (ac_temperature bl2_library_ac3) 0)
    (= (ac_temperature bl2_library_ac4) 0)

    (= (ac_temperature bl3_sl1_ac1) 0)
    (= (ac_temperature bl3_sl1_ac2) 0)
    (= (ac_temperature bl3_sl2_ac1) 0)
    (= (ac_temperature bl3_sl2_ac2) 0)
    (= (ac_temperature bl3_sl3_ac1) 0)
    (= (ac_temperature bl3_sl3_ac2) 0)
    (= (ac_temperature bl3_sl4_ac1) 0)
    (= (ac_temperature bl3_sl4_ac2) 0)

    (= (ac_temperature bl4_sl1_ac1) 0)
    (= (ac_temperature bl4_sl1_ac2) 0)
    (= (ac_temperature bl4_sl2_ac1) 0)
    (= (ac_temperature bl4_sl2_ac2) 0)
    (= (ac_temperature bl4_sl3_ac1) 0)
    (= (ac_temperature bl4_sl3_ac2) 0)
    (= (ac_temperature bl4_sl4_ac1) 0)
    (= (ac_temperature bl4_sl4_ac2) 0)
    (= (ac_temperature bl4_lab_prototype_ac1) 0)
    (= (ac_temperature bl4_lab_prototype_ac2) 0)
    (= (ac_temperature bl4_sl_projects_ac1) 0)
    (= (ac_temperature bl4_sl_projects_ac2) 0)
    (= (ac_temperature bl4_lab_arch_ac1) 0)
    (= (ac_temperature bl4_lab_arch_ac2) 0)
    (= (ac_temperature bl4_lab_electronics_ac1) 0)
    (= (ac_temperature bl4_lab_electronics_ac2) 0)
    (= (ac_temperature bl4_lab_info_ac1) 0)
    (= (ac_temperature bl4_lab_info_ac2) 0)
    (= (ac_temperature bl4_lab_robotic_ac1) 0)
    (= (ac_temperature bl4_lab_robotic_ac2) 0)
    (= (ac_temperature bl4_lab_pos_ac1) 0)
    (= (ac_temperature bl4_lab_pos_ac2) 0)

    (= (metric_total_cost) 0)

    (at 0.0
      (operating_hour))

    (at 1.0
      (= (people_in_room bl1_sl1) 15))
    (at 1.0
      (= (people_in_room bl1_sl4) 12))
    (at 1.0
      (= (people_in_room bl1_sl_pet_ti) 2))
    (at 1.0
      (= (people_in_room bl1_sl_sec_acad) 2))
    (at 1.0
      (= (people_in_room bl2_sl1) 35))
    (at 1.0
      (= (people_in_room bl2_sl4) 20))
    (at 1.0
      (= (people_in_room bl2_sl2) 25))
    (at 1.0
      (= (people_in_room bl2_library) 2))
    (at 1.0
      (= (people_in_room bl3_sl1) 15))
    (at 1.0
      (= (people_in_room bl3_sl2) 30))
    (at 1.0
      (= (people_in_room bl3_sl3) 20))
    (at 1.0
      (= (people_in_room bl3_sl4) 25))

    (at 2.0
      (= (people_in_room bl1_sl2) 4))
    (at 2.0
      (= (people_in_room bl1_sl3) 26))
    (at 2.0
      (= (people_in_room bl2_library) 6))

    (at 3.0
      (= (people_in_room bl1_sl_coord_com) 1))
    (at 3.0
      (= (people_in_room bl2_sl3) 30))
    (at 3.0
      (= (people_in_room bl4_sl1) 32))
    (at 3.0
      (= (people_in_room bl4_sl2) 15))
    (at 3.0
      (= (people_in_room bl4_sl3) 36))
    (at 3.0
      (= (people_in_room bl4_sl4) 25))
    (at 3.0
      (= (people_in_room bl4_lab_prototype) 5))
    (at 3.0
      (= (people_in_room bl4_sl_projects) 15))
    (at 3.0
      (= (people_in_room bl4_lab_arch) 10))
    (at 3.0
      (= (people_in_room bl4_lab_electronics) 5))
    (at 3.0
      (= (people_in_room bl4_lab_info) 15))
    (at 3.0
      (= (people_in_room bl4_lab_robotic) 12))
    (at 3.0
      (= (people_in_room bl4_lab_pos) 3))

    (at 5.0
      (= (people_in_room bl1_sl_pet_si) 3))
    (at 5.0
      (= (people_in_room bl1_lab1) 20))
    (at 5.0
      (= (people_in_room bl1_lab2) 30))
    (at 5.0
      (= (people_in_room bl2_library) 2))

    (at 7.0
      (= (people_in_room bl1_lab3) 25))
    (at 7.0
      (= (people_in_room bl1_lab4) 15))
    (at 7.0
      (= (people_in_room bl2_library) 10))

    (at 10.0
      (peak_hours))
    (at 10.0
      (= (people_in_room bl1_lab1) 0))
    (at 10.0
      (= (people_in_room bl1_lab2) 0))
    (at 10.0
      (= (people_in_room bl1_lab3) 0))
    (at 10.0
      (= (people_in_room bl1_lab4) 0))
    (at 10.0
      (= (people_in_room bl3_lab_info_design) 15))
    (at 10.0
      (= (people_in_room bl3_lab_info) 20))
    (at 10.0
      (= (people_in_room bl2_library) 3))

    (at 15.0
      (= (people_in_room bl1_sl1) 0))
    (at 15.0
      (= (people_in_room bl1_sl2) 0))
    (at 15.0
      (= (people_in_room bl1_sl3) 0))
    (at 15.0
      (= (people_in_room bl1_sl4) 0))
    (at 15.0
      (= (people_in_room bl1_sl_pet_ti) 0))
    (at 15.0
      (= (people_in_room bl1_sl_pet_si) 0))
    (at 15.0
      (= (people_in_room bl1_sl_sec_acad) 0))
    (at 15.0
      (= (people_in_room bl1_sl_coord_com) 0))
    (at 15.0
      (= (people_in_room bl2_sl1) 0))
    (at 15.0
      (= (people_in_room bl2_sl2) 0))
    (at 15.0
      (= (people_in_room bl2_sl3) 0))
    (at 15.0
      (= (people_in_room bl2_sl4) 0))
    (at 15.0
      (= (people_in_room bl3_lab_info_design) 0))
    (at 15.0
      (= (people_in_room bl3_lab_info) 0))
    (at 15.0
      (= (people_in_room bl2_library) 0))
    (at 15.0
      (= (people_in_room bl3_sl1) 0))
    (at 15.0
      (= (people_in_room bl3_sl2) 0))
    (at 15.0
      (= (people_in_room bl3_sl3) 0))
    (at 15.0
      (= (people_in_room bl3_sl4) 0))
    (at 15.0
      (= (people_in_room bl4_sl1) 0))
    (at 15.0
      (= (people_in_room bl4_sl2) 0))
    (at 15.0
      (= (people_in_room bl4_sl3) 0))
    (at 15.0
      (= (people_in_room bl4_sl4) 0))
    (at 15.0
      (= (people_in_room bl4_lab_prototype) 0))
    (at 15.0
      (= (people_in_room bl4_sl_projects) 0))
    (at 15.0
      (= (people_in_room bl4_lab_arch) 0))
    (at 15.0
      (= (people_in_room bl4_lab_electronics) 0))
    (at 15.0
      (= (people_in_room bl4_lab_info) 0))
    (at 15.0
      (= (people_in_room bl4_lab_robotic) 0))
    (at 15.0
      (= (people_in_room bl4_lab_pos) 0))
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
      (ac_off bl1_sl_pet_ti bl1_sl_pet_ti_ac1)
      (ac_off bl1_sl_pet_si bl1_sl_pet_si_ac1)
      (ac_off bl1_sl_sec_acad bl1_sl_sec_acad_ac1)
      (ac_off bl1_sl_coord_com bl1_sl_coord_com_ac1)
      (ac_off bl1_lab1 bl1_lab1_ac1)
      (ac_off bl1_lab1 bl1_lab1_ac2)
      (ac_off bl1_lab2 bl1_lab2_ac1)
      (ac_off bl1_lab2 bl1_lab2_ac2)
      (ac_off bl1_lab3 bl1_lab3_ac1)
      (ac_off bl1_lab3 bl1_lab3_ac2)
      (ac_off bl1_lab4 bl1_lab4_ac1)
      (ac_off bl1_lab4 bl1_lab4_ac2)
      (ac_off bl2_sl1 bl2_sl1_ac1)
      (ac_off bl2_sl1 bl2_sl1_ac2)
      (ac_off bl2_sl2 bl2_sl2_ac1)
      (ac_off bl2_sl2 bl2_sl2_ac2)
      (ac_off bl2_sl3 bl2_sl3_ac1)
      (ac_off bl2_sl3 bl2_sl3_ac2)
      (ac_off bl2_sl4 bl2_sl4_ac1)
      (ac_off bl2_sl4 bl2_sl4_ac2)
      (ac_off bl3_lab_info_design bl3_lab_info_design_ac1)
      (ac_off bl3_lab_info_design bl3_lab_info_design_ac2)
      (ac_off bl3_lab_info bl3_lab_info_ac1)
      (ac_off bl3_lab_info bl3_lab_info_ac2)
      (ac_off bl2_library bl2_library_ac1)
      (ac_off bl2_library bl2_library_ac2)
      (ac_off bl2_library bl2_library_ac3)
      (ac_off bl2_library bl2_library_ac4)
      (ac_off bl3_sl1 bl3_sl1_ac1)
      (ac_off bl3_sl1 bl3_sl1_ac2)
      (ac_off bl3_sl2 bl3_sl2_ac1)
      (ac_off bl3_sl2 bl3_sl2_ac2)
      (ac_off bl3_sl3 bl3_sl3_ac1)
      (ac_off bl3_sl3 bl3_sl3_ac2)
      (ac_off bl3_sl4 bl3_sl4_ac1)
      (ac_off bl3_sl4 bl3_sl4_ac2)
      (ac_off bl4_sl1 bl4_sl1_ac1)
      (ac_off bl4_sl1 bl4_sl1_ac2)
      (ac_off bl4_sl2 bl4_sl2_ac1)
      (ac_off bl4_sl2 bl4_sl2_ac2)
      (ac_off bl4_sl3 bl4_sl3_ac1)
      (ac_off bl4_sl3 bl4_sl3_ac2)
      (ac_off bl4_sl4 bl4_sl4_ac1)
      (ac_off bl4_sl4 bl4_sl4_ac2)
      (ac_off bl4_lab_prototype bl4_lab_prototype_ac1)
      (ac_off bl4_lab_prototype bl4_lab_prototype_ac2)
      (ac_off bl4_sl_projects bl4_sl_projects_ac1)
      (ac_off bl4_sl_projects bl4_sl_projects_ac2)
      (ac_off bl4_lab_arch bl4_lab_arch_ac1)
      (ac_off bl4_lab_arch bl4_lab_arch_ac2)
      (ac_off bl4_lab_electronics bl4_lab_electronics_ac1)
      (ac_off bl4_lab_electronics bl4_lab_electronics_ac2)
      (ac_off bl4_lab_info bl4_lab_info_ac1)
      (ac_off bl4_lab_info bl4_lab_info_ac2)
      (ac_off bl4_lab_robotic bl4_lab_robotic_ac1)
      (ac_off bl4_lab_robotic bl4_lab_robotic_ac2)
      (ac_off bl4_lab_pos bl4_lab_pos_ac1)
      (ac_off bl4_lab_pos bl4_lab_pos_ac2)
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
      (light_off bl1_sl4 bl1_sl4_l4)
      (light_off bl1_sl_pet_ti bl1_sl_pet_ti_l1)
      (light_off bl1_sl_pet_ti bl1_sl_pet_ti_l2)
      (light_off bl1_sl_pet_si bl1_sl_pet_si_l1)
      (light_off bl1_sl_pet_si bl1_sl_pet_si_l2)
      (light_off bl1_sl_sec_acad bl1_sl_sec_acad_l1)
      (light_off bl1_sl_sec_acad bl1_sl_sec_acad_l2)
      (light_off bl1_sl_sec_acad bl1_sl_sec_acad_l3)
      (light_off bl1_sl_sec_acad bl1_sl_sec_acad_l4)
      (light_off bl1_sl_coord_com bl1_sl_coord_com_l1)
      (light_off bl1_sl_coord_com bl1_sl_coord_com_l2)
      (light_off bl1_lab1 bl1_lab1_l1)
      (light_off bl1_lab1 bl1_lab1_l2)
      (light_off bl1_lab1 bl1_lab1_l3)
      (light_off bl1_lab1 bl1_lab1_l4)
      (light_off bl1_lab2 bl1_lab2_l1)
      (light_off bl1_lab2 bl1_lab2_l2)
      (light_off bl1_lab2 bl1_lab2_l3)
      (light_off bl1_lab2 bl1_lab2_l4)
      (light_off bl1_lab3 bl1_lab3_l1)
      (light_off bl1_lab3 bl1_lab3_l2)
      (light_off bl1_lab3 bl1_lab3_l3)
      (light_off bl1_lab3 bl1_lab3_l4)
      (light_off bl1_lab4 bl1_lab4_l1)
      (light_off bl1_lab4 bl1_lab4_l2)
      (light_off bl1_lab4 bl1_lab4_l3)
      (light_off bl1_lab4 bl1_lab4_l4)
      (light_off bl2_sl1 bl2_sl1_l1)
      (light_off bl2_sl1 bl2_sl1_l2)
      (light_off bl2_sl1 bl2_sl1_l3)
      (light_off bl2_sl1 bl2_sl1_l4)
      (light_off bl2_sl2 bl2_sl2_l1)
      (light_off bl2_sl2 bl2_sl2_l2)
      (light_off bl2_sl2 bl2_sl2_l3)
      (light_off bl2_sl2 bl2_sl2_l4)
      (light_off bl2_sl3 bl2_sl3_l1)
      (light_off bl2_sl3 bl2_sl3_l2)
      (light_off bl2_sl3 bl2_sl3_l3)
      (light_off bl2_sl3 bl2_sl3_l4)
      (light_off bl2_sl4 bl2_sl4_l1)
      (light_off bl2_sl4 bl2_sl4_l2)
      (light_off bl2_sl4 bl2_sl4_l3)
      (light_off bl2_sl4 bl2_sl4_l4)
      (light_off bl3_lab_info_design bl3_lab_info_design_l1)
      (light_off bl3_lab_info_design bl3_lab_info_design_l2)
      (light_off bl3_lab_info_design bl3_lab_info_design_l3)
      (light_off bl3_lab_info_design bl3_lab_info_design_l4)
      (light_off bl3_lab_info bl3_lab_info_l1)
      (light_off bl3_lab_info bl3_lab_info_l2)
      (light_off bl3_lab_info bl3_lab_info_l3)
      (light_off bl3_lab_info bl3_lab_info_l4)
      (light_off bl2_library bl2_library_l1)
      (light_off bl2_library bl2_library_l2)
      (light_off bl2_library bl2_library_l3)
      (light_off bl2_library bl2_library_l4)
      (light_off bl2_library bl2_library_l5)
      (light_off bl2_library bl2_library_l6)
      (light_off bl3_sl1 bl3_sl1_l1)
      (light_off bl3_sl1 bl3_sl1_l2)
      (light_off bl3_sl1 bl3_sl1_l3)
      (light_off bl3_sl1 bl3_sl1_l4)
      (light_off bl3_sl2 bl3_sl2_l1)
      (light_off bl3_sl2 bl3_sl2_l2)
      (light_off bl3_sl2 bl3_sl2_l3)
      (light_off bl3_sl2 bl3_sl2_l4)
      (light_off bl3_sl3 bl3_sl3_l1)
      (light_off bl3_sl3 bl3_sl3_l2)
      (light_off bl3_sl3 bl3_sl3_l3)
      (light_off bl3_sl3 bl3_sl3_l4)
      (light_off bl3_sl4 bl3_sl4_l1)
      (light_off bl3_sl4 bl3_sl4_l2)
      (light_off bl3_sl4 bl3_sl4_l3)
      (light_off bl3_sl4 bl3_sl4_l4)
      (light_off bl4_sl1 bl4_sl1_l1)
      (light_off bl4_sl1 bl4_sl1_l2)
      (light_off bl4_sl1 bl4_sl1_l3)
      (light_off bl4_sl1 bl4_sl1_l4)
      (light_off bl4_sl2 bl4_sl2_l1)
      (light_off bl4_sl2 bl4_sl2_l2)
      (light_off bl4_sl2 bl4_sl2_l3)
      (light_off bl4_sl2 bl4_sl2_l4)
      (light_off bl4_sl3 bl4_sl3_l1)
      (light_off bl4_sl3 bl4_sl3_l2)
      (light_off bl4_sl3 bl4_sl3_l3)
      (light_off bl4_sl3 bl4_sl3_l4)
      (light_off bl4_sl4 bl4_sl4_l1)
      (light_off bl4_sl4 bl4_sl4_l2)
      (light_off bl4_sl4 bl4_sl4_l3)
      (light_off bl4_sl4 bl4_sl4_l4)
      (light_off bl4_lab_prototype bl4_lab_prototype_l1)
      (light_off bl4_lab_prototype bl4_lab_prototype_l2)
      (light_off bl4_lab_prototype bl4_lab_prototype_l3)
      (light_off bl4_lab_prototype bl4_lab_prototype_l4)
      (light_off bl4_sl_projects bl4_sl_projects_l1)
      (light_off bl4_sl_projects bl4_sl_projects_l2)
      (light_off bl4_sl_projects bl4_sl_projects_l3)
      (light_off bl4_sl_projects bl4_sl_projects_l4)
      (light_off bl4_lab_arch bl4_lab_arch_l1)
      (light_off bl4_lab_arch bl4_lab_arch_l2)
      (light_off bl4_lab_arch bl4_lab_arch_l3)
      (light_off bl4_lab_arch bl4_lab_arch_l4)
      (light_off bl4_lab_electronics bl4_lab_electronics_l1)
      (light_off bl4_lab_electronics bl4_lab_electronics_l2)
      (light_off bl4_lab_electronics bl4_lab_electronics_l3)
      (light_off bl4_lab_electronics bl4_lab_electronics_l4)
      (light_off bl4_lab_info bl4_lab_info_l1)
      (light_off bl4_lab_info bl4_lab_info_l2)
      (light_off bl4_lab_info bl4_lab_info_l3)
      (light_off bl4_lab_info bl4_lab_info_l4)
      (light_off bl4_lab_robotic bl4_lab_robotic_l1)
      (light_off bl4_lab_robotic bl4_lab_robotic_l2)
      (light_off bl4_lab_robotic bl4_lab_robotic_l3)
      (light_off bl4_lab_robotic bl4_lab_robotic_l4)
      (light_off bl4_lab_pos bl4_lab_pos_l1)
      (light_off bl4_lab_pos bl4_lab_pos_l2)
      (light_off bl4_lab_pos bl4_lab_pos_l3)
      (light_off bl4_lab_pos bl4_lab_pos_l4)
      (out_work_time)
    )
  )

  (:metric minimize
    (metric_total_cost)
  )
)