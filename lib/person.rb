class Person
  
  def initialize(attr)
    attr.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

  
end

Doe_attr = {
  name: "John Doe", 
  birthday:"22", 
  hair_color:"black", 
  eye_color:"blue",
  height:"6'3",
  weight:"80kg",
  handed:"right",
  complexion:"olive",
  t_shirt_size: "6",
  wrist_size:"6", 
  glove_size:"10", 
  pant_length:"3", 
  pant_width:"36"
}

user=Person.new(Doe_attr)
puts user.height