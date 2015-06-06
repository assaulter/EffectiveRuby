class Person
  def name
    'name'
  end
end

class Customer < Person
end

customer = Customer.new
p customer.class
# print Customer

p Customer.superclass
# print Person

p customer.respond_to?(:name)
# print true

p customer.name
# print "name"
