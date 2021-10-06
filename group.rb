# frozen_string_literal: true

# gr
class Group

  @users = []

  def initialize(*users)
    @users = users
  end

  def each
    @users.each { |user| puts "name: #{user.name}, surname: #{user.surname}, patronymic: #{user.patronymic} !" }
  end
end
