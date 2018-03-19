require "pry"
class Appointment
  attr_accessor :name, :doctor, :patient
  def initialize(date, doctor)
    @name = name
    @doctor = doctor
    doctor.appointments << self
  end


end
