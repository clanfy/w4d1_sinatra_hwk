class Address

  attr_reader :address, :building, :postcode, :phone

  def initialize(address, building, postcode, phone)
    @address = address
    @building = building
    @postcode = postcode
    @phone = phone
  end

  def upcase_postcode
    return @postcode.upcase
  end 

end