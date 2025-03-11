# create a new Class, User, that has the following attributes:
# - name
# - email
# - password

class User
  attr_accessor :name, :email, :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def enter_room(room)
    room.users << self
    puts "#{name} entered #{room.name}"
  end

  def send_message(room, content)
    return puts "You are not in this room" unless room.users.include?(self)

    message = Message.new(self, room, content)
    room.broadcast(message)
  end

  def acknowledge_message(message)
    puts "#{name} received: #{message.content} from #{message.user.name} in #{message.room.name}"
  end
end


# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users

class Room
    attr_accessor :name, :description, :users

    def initialize(name, description)
        @name = name
        @description = description
        @users = []
    end

    def broadcast(message)
        users.each do |user|
            user.acknowledge_message(message) unless user == message.user
        end
    end
end

# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content

class Message
    attr_accessor :user, :room, :content

    def initialize(user, room, content)
        @user = user
        @room = room
        @content = content
    end
end

# create a new Class, Chat, that

# add a method to user so, user can enter to a room
# user.enter_room(room)



# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)

# After your existing classes, add these test cases:

# Test the chat system
puts "\nTesting Chat System:"
puts "-------------------"

# Create users
alice = User.new("Alice", "alice@example.com", "password123")
bob = User.new("Bob", "bob@example.com", "password456")
charlie = User.new("Charlie", "charlie@example.com", "password789")

# Create a room
general_room = Room.new("General", "General discussion room")

# Users enter the room
alice.enter_room(general_room)
bob.enter_room(general_room)
charlie.enter_room(general_room)

# Test sending messages
puts "\nTesting messages:"
alice.send_message(general_room, "Hello everyone!")
bob.send_message(general_room, "Hi Alice!")
charlie.send_message(general_room, "Hey folks!")

# Test sending message when not in room
puts "\nTesting unauthorized message:"
dave = User.new("Dave", "dave@example.com", "password000")
dave.send_message(general_room, "Can I join?")  # Should show error message
