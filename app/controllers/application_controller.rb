class ApplicationController < Sinatra::Base

    configure do
        set :views, "app/views"
    end

    get '/' do
       erb :homepage
    end

    get '/doctors' do
        erb :index
    end

    get '/doctors/:id' do
        @doctor = Doctor.find(params[:id])
        erb :show
    end

    get '/doctors/:id/make_appointment' do
        @doctor = Doctor.find(params[:id])
        erb :new_appointment
    end

    post '/doctors/:id/make_appointment' do
        doctor_id = params[:id]
        date = params[:date]
        time = params[:time]
        family_name = Family.find_or_create_by(name: params[:name])
        binding.pry
        Appointment.create_or_find_by(date: date, 
                           time: time, 
                           doctor_id: doctor_id, 
                           family_id: family_name.id)
        
        redirect '/doctors/:id/scheduled'
    end

    get '/doctors/:id/scheduled' do

        erb :scheduled
    end

end
