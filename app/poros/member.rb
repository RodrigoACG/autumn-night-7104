class Member
  attr_reader :name, :photo_url, :allies, :enemies, :affiliations

  def initialize(member_data)
    @name = member_data[:name]
    @photo_url = member_data[:photoUrl]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliations = member_data[:affiliation]
  end
end