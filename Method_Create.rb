class Runtimey_Method

   def self.tell(name)
     puts "#{name}: #{yield}"
   end

   def self.beat_around_the_bush()
     return yield
   end

   def self.tell_ape(object)
        puts object[:hello]
   end

   def self.tell_ape_all(object)
        puts object
        yield(object)
   end

   # self.tell_ape(beat_around_the_bush(){object={test: "hi", hello: "rwaarrr im a value "} })
   self.tell_ape_all(beat_around_the_bush(){object={test: "hi", hello: "rwaarrr im a value "} }){ |x| puts x[:hello]}
 end
