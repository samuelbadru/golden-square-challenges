# Reading time design recipe

## 1. Describe the Problem

User story:
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

# `estimate time` will estimate reading time for text given
read_time = estimate_time(text)

text: a string (e.g. "It was the best of times, it was the worst of times")
read_time: a string with the time in minutes interpolated (e.g.  "5.0 minutes"). A float to account for seconds.

## 3. Create Examples as Tests

estimate_time("hello " * 200) => 1.0 minute
estimate_time("hello " * 400) => 2.0 minutes
estimate_time("hello " * 500) => 2.5 minutes
estimate_time(" ") => 0 minutes

## 4. Implement the Behaviour


