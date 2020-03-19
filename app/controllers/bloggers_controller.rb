class BloggersController < ApplicationController 

    def index 
        @bloggers = Blogger.all 

        render :index 
    end 

    def new 
        @blogger = Blogger.new 
        render :new
    end 

   #Bloggers should have unique names and ages above 0, and their bio should be over 30 characters long.
    def create 
        name = params[:blogger] [:name]
        bio = params[:blogger] [:bio]
        age = params[:blogger] [:age]

        puts "Name: #{name}"
        puts "Bio: #{bio}"
        puts "Age: #{age}"

        blogger = Blogger.new(name: name, bio: bio, age: age)

        if @blogger.valid?
            @blogger.save 
            redirect_to blogger_path(@blogger)
        else 
            render :new
        end 
    end 

    def show 
        @blogger = Blogger.find(params[:id])
        @post = Post.find_by(blogger_id: @blogger.id)
        render :show
    end 

end 


    end 



end 