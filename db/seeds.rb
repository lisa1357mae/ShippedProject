# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create ([{ username: 'jborbon',email: 'jborbon@live.com', firstname:'Joan', lastname:'Borbon', password: 'test123'},

  { username: 'lisamae',email: 'lisa@example.com', firstname: 'Lisa', lastname:
    'Mae', password: 'test123'}
  ])

Boat.create([{name: 'little tug tug', size: 'small', max_load: 30, photo: open('http://lorempixel.com/output/transport-q-c-640-480-5.jpg'), assign_jobs:3, company_id: 1},

  {name: 'perfect storm', size: 'large', max_load: 100, photo: nil, assign_jobs:5, company_id: 2},

  {name: 'voyage', size: 'medium', max_load: 75, photo: nil, assign_jobs:2, company_id: 2}
  ])

  BoatJob.create ([
  {boat_id: 2, job_id:3},
  {boat_id: 3, job_id:1},
  {boat_id:1, job_id:2}
])

Customer.create([
  {firstname: 'kevin', lastname:'gallaher', address:'90 John Street', email:'kg@gmail.com', contact: '555-5555'},

    {firstname: 'sherille', lastname:'samual', address:'80 John Street', email:'SS@gmail.com', contact: '555-1234'},

    {firstname: 'bob', lastname:'billy', address:'105 John Street', email:'BB@gmail.com', contact: '123-4567'}
  ])


  Job.create ([
    {boat_id:1, status:nil, load_amount: 70, sender_id:1, buyer_id:1,
      cost:1500.00, origin: 'USA', destination: 'Thailand' },

      {boat_id:2, status:nil, load_amount: 95, sender_id:2, buyer_id:2,
        cost:3000.00, origin: 'USA', destination: 'China' },

        {boat_id:3, status:nil, load_amount: 80, sender_id:3, buyer_id:3,
          cost:2500.00, origin: 'USA', destination: 'Canada' }
    ])
