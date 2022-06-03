class FissBuss

    def process(num)
        if num <= 0
            return nil
        end

        if num % 3 == 0 && num % 5 == 0
            return 'FissBuss'
        end

        if num % 3 == 0
            return 'Fiss'
        end

        if num % 5 ==0
            return 'Buss'
        end

        return num
    end
end