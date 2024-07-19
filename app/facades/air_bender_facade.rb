class AirBenderFacade 
  attr_reader :members

  def initialize(nation, service = AirBenderService.new)
    @nation = nation
    @service = service
    @members = nil
  end

  def get_nation_members
    @members ||= begin 
      member_data = @service.get_nation_members(@nation)
      
      @members = member_data.map { |member_info| Member.new (member_info)}
      
    end
  end
end