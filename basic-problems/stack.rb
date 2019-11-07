class Stack

    def initialize
        @array = []
    end

    def push(el)
        @array << el
        el
    end

    def pop
        @array.pop
    end

    def peek
        @array[-1]
    end


end



stack_ex = Stack.new()

p stack_ex.push(2)
p stack_ex.push(3)
p stack_ex.pop()
p stack_ex.peek
p stack_ex