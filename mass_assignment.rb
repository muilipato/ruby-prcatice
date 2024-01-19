#using keyword arguements to do masss assignment

twitter_user = {
  name: "Patrick",
  user_name: "mm3",
  age: 22,
  location: "Nairobi",
  bio: "Here we are"
}

class User
  attr_accessor :name, :user_name, :age, :location


  def initialize args
    args.each_key do |key, value|
      self.class.attr_accessor key #we add setters and
      #getters dynamically by using attr_accessor
       # because it is a class method
       #so self.class to reference the current instance's class
       #and self.class.attr_accessor key to set the getter and setter


      self.send("#{key}=", args[key])
    end
  end

end

user1 = User.new twitter_user
puts user1.bio
