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
    
        @appointment = Appointment.find_or_create_by(date: date, 
                           time: time, 
                           doctor_id: doctor_id, 
                           family_id: family_name.id)
        
        redirect "/doctors/#{doctor_id}/scheduled"
    end

    get '/doctors/:id/scheduled' do
        doc = Doctor.find(params[:id])
          @appointment = Appointment.find_by(doctor_id: doc.id)
         
        erb :scheduled
    end

    get '/families' do
        
        erb :fam_index
    end

    get "/families/:id" do
        family = Family.find(params[:id])
        @appointment = Appointment.find_by(family_id: family.id)
    erb :fam_appointment
    end


end
