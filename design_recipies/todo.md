# Task tracker design recipe

## 1. Descrive the Problem

User story: 
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

task_tracker = todo(text)

text: a string (e.g. "#TODO Walk the dog")
task_tracker: a boolean value, true or false, to show if "#TODO" is present or not, respectively.

## 3. Create Examples as Tests

```ruby
todo("") => false
todo("TODO Feed the cat") => false
todo("#todo Go shopping") => false
todo("#TODO Wash the car") => true
todo("#TODO Do the dishes #TODO Do the laundry") => true
todo("#TODO") => true
todo(1234) => false
```

## 4. Implement the Behaviour
