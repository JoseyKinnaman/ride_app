FactoryBot.define do
  factory(:ride) do
    driver
    start_address "123 Apple St",
    destination "123 Orange St",
    ride_earnings {25},
    ride_duration  {600},
    commute_duration {300}
  end
end
