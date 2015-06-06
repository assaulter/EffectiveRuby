module ThingsWithNames
  def name
    'things with names'
  end
end

class Person
  include(ThingsWithNames)
end

class Customer < Person
end

p Person.superclass
# print Object

customer = Customer.new
p customer.respond_to?(:name)
# print true

p customer.name
# print things with names

# 特異メソッドを追加する
def customer.name
  'Leonard'
end

p customer.name
# print "Leonard"
