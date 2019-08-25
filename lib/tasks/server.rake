namespace :server do
    desc "task to initialize the server rails in ip 0.0.0.0 port 3000"
    task up: :environment do
        puts "Initialized server, to exit press Crtl+C"
       puts %x(rails s -b 0.0.0.0 -p 3000)
       
    end    
end