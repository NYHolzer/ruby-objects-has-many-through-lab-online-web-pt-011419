class Patient 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  
  def all 
    @@all
  end 
  
  def new_appointment(date, doctor)
    date = date
    doctor = doctor
    appointment = Appointment.new(date, doctor, self)
    appointment
  end 
  
  def appointments 
    Appointment.all.select {|a| a.patient == self}
  end 
end 