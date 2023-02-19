# TODO: need to make this idempotent
3.times do |f|
  Driver.create(home_address: "12#{f} Main St").tap do |driver|
    # create rides for driver
    30.times do |n|
      driver.rides << Ride.new(
        start_address: "12#{n} Apple St",
        destination: "12#{n} Orange St",
        ride_earnings: rand(4..80), # float
        ride_duration:  rand(300..2000), # integer
        commute_duration: rand(300..2000)# integer in seconds
      )
    end
  end
end
