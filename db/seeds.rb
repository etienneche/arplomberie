
      # This file should contain all the record creation needed to seed the database with its default values.
      # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
      #
      # The seeds below were created by WALD (We Are Lazy Developers)
      10.times { |index| User.create( phone: rand(1..10) , name: Faker::Name.unique.name , address: Faker::Lorem.paragraph(sentence_count: 8) , type: Faker::Lorem.sentence(word_count: 5)  , email: "#{index}@email.com" , password: 'password' ) } 
 10.times { |index| Problem.create( description: Faker::Lorem.paragraph(sentence_count: 8) , price: rand(1..10) , time_to_fix: Faker::Lorem.sentence(word_count: 5)  ) } 
 10.times { |index| Appointement.create( address: Faker::Lorem.paragraph(sentence_count: 8) , date: rand(Time.now.to_date..(Time.now.to_date + 365)) , price: rand(1..10) , user_id: rand(1..10) , problem_id: rand(1..10) , total_price: rand(1..10)  ) } 
 10.times { |index| Material.create( price: rand(1..10) , description: Faker::Lorem.paragraph(sentence_count: 8) , quantity: rand(1..10)  ) } 
 10.times { |index| ProblemsMaterial.create( problem_id: rand(1..10) , material_id: rand(1..10)  ) } 

