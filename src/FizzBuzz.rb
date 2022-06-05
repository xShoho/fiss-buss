class FizzBuzz

    def process(num)
        if num <= 0
            return nil
        end

        if num % 3 == 0 && num % 5 == 0
            return 'FizzBuzz'
        end

        if num % 3 == 0
            return 'Fizz'
        end

        if num % 5 ==0
            return 'Buzz'
        end

        return num
    end
end