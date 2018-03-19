class Patient
  attr_accessor :name, :appointment, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    self.appointments << app
    app.patient = self
  end

  def doctors
    appointments.collect{|app| app.doctor}
  end
end
