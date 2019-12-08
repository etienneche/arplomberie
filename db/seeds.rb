
      # This file should contain all the record creation needed to seed the database with its default values.
      # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
      #
      # The seeds below were created by WALD (We Are Lazy Developers)
      10.times { |index| User.create( phone: rand(1..10) , name: Faker::Name.unique.name , address: Faker::Lorem.paragraph(sentence_count: 8)  , email: "#{index}@email.com" , password: 'password' ) } 
 10.times { |index| Problem.create( description: Faker::Lorem.paragraph(sentence_count: 8) , price: rand(1..10)  ) } 
 10.times { |index| Appointement.create( address: Faker::Lorem.paragraph(sentence_count: 8) , date: rand(Time.now..(Time.now + 60 * 60 * 24)) , price: rand(1..10) , price: rand(1..10) , problem_id: rand(1..10)  ) } 

