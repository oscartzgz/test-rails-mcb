module HasOcupationsHelper

  def checked(area)
    @has_ocupation.ocupation_id.nil? ? false : @has_ocupation.ocupation_id.match(area)
  end
end
