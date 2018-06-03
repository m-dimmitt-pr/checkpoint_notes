class Runtimey_Method

   def self.tell(name)
     puts "#{name}: #{yield}"
   end

   def self.be()
     return yield
   end

   def self.ta(object)
        puts object
        yield(object)
   end

   self.ta(be(){
      varz={'test' => 'hi', 'hello' => 'rwaarrr im a value'}
   }){
      |x| puts x.keys[1]; puts x.values[1]; puts x['hello']
    }

 end
