
class True_Runtimey_Evil

  def self.do_thing
    test = "def self.do_also()\n puts 'Hello Cruel World';\n end\n self.do_also"

    input = gets.chomp()
    input.trust
    # input = "def self.do_also()\n puts 'Hello Cruel World';\n end\n self.do_also"
    myStr = String.new(input)
    # myStr = test
    test = myStr
    puts test.tainted?

    # puts myStr
    eval(test);
  end


  self.do_thing
end
