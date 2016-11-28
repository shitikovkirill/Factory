require_relative 'factory'

Student = Factory.new(:first_name, :last_name, :rating) do
  def hello(count)
    puts "Hello #{first_name}!" * count
  end
end

kirill = Student.new('Kirill', 'Shitikov', 5)

kirill.hello(2)

puts kirill.first_name

puts kirill['first_name']

puts kirill[:last_name]

puts kirill[2]