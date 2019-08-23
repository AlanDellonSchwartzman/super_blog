namespace :server do
    desc "task to initialize the server rails in ip 0.0.0.0 port 3000"
    task up: :environment do
        puts "Initializing server"
       puts %x(rails s -b 0.0.0.0 -p 3000)
       
       puts "Successful lifting the server!"
       
    end    
end