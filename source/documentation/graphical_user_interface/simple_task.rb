require 'orocos/async'

Orocos.initialize
Orocos.load_typekit_for "/std/string"

# create a dummy ruby task which is sending and receiving text messages
task_dummy = Orocos::RubyTaskContext.new "simple_task"
input_port = task_dummy.create_input_port("input","/std/string")
output_port = task_dummy.create_output_port("text_message","/std/string")

Orocos::Async.every(0.1) do
    @i ||= 0
    sample = input_port.read_new
    puts "got: #{sample}" if sample
    output_port.write "meassage #{@i}"
    @i += 1
end

puts "task is running"
Orocos::Async.exec

