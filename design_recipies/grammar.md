# Grammar design recipe

## 1. Describe the Problem

User story:
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

is_valid = grammar_check(text)

text: a string (e.g. "First thing first RIP Uncle Phil!")
is_valid = returns a boolean value, true if it is grammatically correct, and false if not.

## 3. Create Examplees as Tests

```ruby
grammar_check("") => "No text"
grammar_check("when I wake up") => false
grammar_check("I remember syrup sandwiches,") => false
grammar_check("then you dive in it.") => false
grammar_check("$wimming pool full of liquor.") => false
grammar_check("I recognise you're looking at me for the pay cut.") => true
grammar_check("My left stroke just went viral!") => true
grammar_check("Why you babysitting only two or three shots?") => true
```

## 4. Implement the Behaviour
