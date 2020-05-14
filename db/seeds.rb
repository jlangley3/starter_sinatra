Doctor.destroy_all
Family.destroy_all

jim = Doctor.find_or_create_by(name: "Jason Finstein", speciality: "Peds", biography: "Born in the dirt, raised in the dirt")
alex = Doctor.find_or_create_by(name: "Alex G", speciality: "Nuero", biography: "Excon taught himself how to do heart surgery")
jesse = Doctor.find_or_create_by(name: "Jesse L", speciality: "Oncologist", biography: "Likes taking long walks on the beach.")


barnes = Family.find_or_create_by(name: "Sam")
langley = Family.find_or_create_by(name: "Jay Langley")
gautherin = Family.find_or_create_by(name: "Al Gautherin")






