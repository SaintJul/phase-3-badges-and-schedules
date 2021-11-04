# Write your code here.
def badge_maker name = "Arel"
    "Hello, my name is #{name}."
end

def batch_badge_creator name 
   name.collect do |n|
    "Hello, my name is #{n}."
   end
end

def assign_rooms name
    # seems to get the desired result but doesn't pass the test.
    # name.each_with_index do |n, index|
    #  puts "Hello, #{n}! You'll be assigned to room #{index + 1}!"
    # end
    name.collect.with_index(1) do |n, index|
        "Hello, #{n}! You'll be assigned to room #{index}!"
    end
end

def printer name
    batch_badge_creator(name).each do |n|
       puts n
    end
    assign_rooms(name).each do |room|
        puts room
    end

end