admin_params = {
  admin: true,
  password: 'vrg_password',
  password_confirmation: 'vrg_password'
}

steve = User.new(admin_params.merge(
                   email: 'steverimmer19@gmail.com',
                   first_name: 'Steve',
                   last_name: 'Rimmer'
                 ))

gordon = User.new(admin_params.merge(
                    email: 'gjrevans@gmail.com',
                    first_name: 'Gordon',
                    last_name: 'Evans'
                  ))

steve.save
gordon.save
