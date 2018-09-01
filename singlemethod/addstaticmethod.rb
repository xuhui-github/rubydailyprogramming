class MyClass
  def self.test1
      puts "test1..."
  end
  class << self
    def test3
        puts "test3..."
    end
  end
end
def MyClass.test
    puts "test..."
end
MyClass.test
MyClass.test1
MyClass.test3
m=MyClass.new



