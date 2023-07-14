# frozen_string_literal: true

route1 = Route.create({ name: 'Route1' })
route2 = Route.create({ name: 'Route2' })

trip1 = route1.trips.create({ name: 'Trip1', start_date: Time.zone.today, end_date: Time.zone.today + 4.days })
trip2 = route1.trips.create({ name: 'Trip2', start_date: Time.zone.today, end_date: Time.zone.today + 4.days })

trip1.deliveries.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                          delivered_at: Time.zone.today + 4.days })
trip2.deliveries.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                          delivered_at: Time.zone.today + 4.days })
trip1.withdrawals.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                           withdrawal_at: Time.zone.today + 1.day })
trip2.withdrawals.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                           withdrawal_at: Time.zone.today + 2.days })

trip3 = route2.trips.create({ name: 'Trip3', start_date: Time.zone.today, end_date: Time.zone.today + 4.days })
trip4 = route2.trips.create({ name: 'Trip4', start_date: Time.zone.today, end_date: Time.zone.today + 4.days })

trip3.deliveries.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                          delivered_at: Time.zone.today + 4.days })
trip4.deliveries.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                          delivered_at: Time.zone.today + 3.days })
trip3.withdrawals.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                           withdrawal_at: Time.zone.today + 2.days })
trip4.withdrawals.create({ address: Faker::Address.street_address, description: Faker::Lorem.words(number: 3),
                           withdrawal_at: Time.zone.today + 1.day })
