# frozen_string_literal: true

require_relative 'hello'
require_relative 'user'
require_relative 'group'
require_relative 'foo'

hello = Hello.new('world')
hello.say
puts hello

user = User.new('name', 'surname', 'patronic')
puts user.name
user.name = 'Changed name'
puts user.name

user1 = User.new('name1', 'surname1', 'patronic1')
user2 = User.new('name2', 'surname2', 'patronic2')
user3 = User.new('name3', 'surname3', 'patronic3')

gr = Group.new(user, user1, user2, user3)
gr.each

foo = Foo.new({ test: 'test', say: 'say' })
foo.test
foo.say
