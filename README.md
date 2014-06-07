# Bring some of the nice features from Swift to Ruby. Accepting pull requests! Ideally with tests.

## Question mark for method calls

This is like ruby's ".try()" but with the following syntax:

```ruby
e = Employee.new
e.transfer?(1)
```

The above should not fail if the method doesn't exist.

