A different approach and solution to the common kata (the drinking game) FizzBuzz. FizzBuzz is a game where in a group you count upwards, and apply various rules as you count, ie multiples of 3 say 'Fizz'.

The solution removes the worst (but not all) coupling smells between implementation and test. In turn this helps product a more object orientated solution where by the logic and configuration can be tested separately. 

````
make build  # build the container
make test   # run the tests
make        # build, test
````
