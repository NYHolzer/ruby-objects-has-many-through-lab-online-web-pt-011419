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
  
  def new_appointment(patient, date)
    date = date 
    patient = patient
    appointment = Appointment.new(date, self, patient1)
    appointment
  end 
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self}
  end 
  
  def patients 
    binding.pry
    self.appointments.map {|a| a.patient}
  end 
  
end 