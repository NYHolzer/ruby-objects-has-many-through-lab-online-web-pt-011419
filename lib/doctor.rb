  require 'pry'
  class Doctor 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, patient)
    date1 = date 
    patient1 = patient
    appointment = Appointment.new(date1, self, patient1)
    appointment
  end 
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self}
  end 
  
  def patients 
    self.appointments.map {|a| a.patient}
  end 
  
end 