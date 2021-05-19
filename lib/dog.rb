class Dog

    @@all=[]

    attr_accessor :name

    def initialize(name)
        @name=name
        # save gets called inside initialize when a new Dog is created
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        # clears all dogs from array
        @@all=[]
    end

    def self.print_all
        # prints dogs names
        @@all.map {|dog| puts dog.name }
    end

    def save
        #save adds this dog instance to the @@all array when called
        @@all << self
    end
end