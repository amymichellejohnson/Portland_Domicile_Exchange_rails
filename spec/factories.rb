FactoryGirl.define do
  factory(:user) do
    email('derp@derp.com')
    password('derpderp')
  end
  factory(:listing) do
    price(25)
    title("Cute NW aparmtent")
    details("My aparment has 2 rooms")
    location("NW")
    user
  end

end
