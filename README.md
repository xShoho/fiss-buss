# Fizz Buzz problem in Ruby using TDD

## Table of Contents
- [What is TDD](#what-is-tdd)
- [TDD vs Unit Tests](#tdd-vs-unit-tests)
- [FizzBuzz Problem](#fizzbuzz-problem)
- [Unit Tests framework for Ruby](#unit-tests-framework-for-ruby)
- [How RSpec works](#how-rspec-works)

## What is TDD
Test-Driven Development is programming approach to write tests before functionalities.

## TDD vs Unit Tests
This two terms are often used alternately. This is caused by misunderstanding this two terms.

### Unit Tests
In Unit Tests we first create functionalities and then We check if they are working properly through writing Tests.

### Test-Driven Development
In TDD however we create test for the functionality and then we write function to make it pass the test.

### Conclusion
This approach makes The programmer to consider what the function has to do before programming

## FizzBuzz Problem
In FizzBuzz problem we want the program to return Null if number is lower than 0, return given number if its not divisible by 3 or 5, if number is divisible by 3 we want to return Fizz, if number is divisible by 5 we want to return Buzz, if number is divisible by 3 and 5 we want to return FizzBuzz.

## Unit Tests framework for Ruby
To solve this problem using TDD approach I used RSpec framework

## How RSpec works

### Creating test for a class
To create a test we have to describe tested class

```ruby
describe FizzBuzz do
    ...
end
```

### Types of methods in Ruby
If we have described class now we can describe its methods.

In Ruby language we have Class and Instance methods.
```ruby
class FizzBuzz do

    # Class Method
    def self.process(num)
        ...
    end

    # Instance Method
    def process(num)
        ...
    end

end
```

### Testing Different method types
To test class method in RSpec we do
```ruby
describe FizzBuzz do
    describe '.process' do
        ...
    end
end
```

To test instance method in RSpec we do
```ruby
describe FizzBuzz do
    describe '#process' do
        ...
    end
end
```

### Describing different cases
If we have described class and method we can now describe our cases.

To describe case in RSpec we have to tell its context and what it is supposed to return.
```ruby
describe FizzBuzz do
    describe '#process' do
        context 'given 3' do
            it 'returns "Fizz"' do
                ...
            end
        end
    end
end
```

If we have that, our next step is to simply check the returned value by using expect() method.
```ruby
describe FizzBuzz do
    describe '#process' do
        context 'given 3' do
            it 'returns "Fizz"' do
                expect(subject.process(3)).to eql('Fizz')
            end
        end
    end
end
```
