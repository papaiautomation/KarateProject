Feature: Karate Test Suite 9
  Validating with Regular Expression
  
  Scenario: Karate Regular Expression Validation TestCase 1

    * def a = "10"
    * def b = "Karate"
    * def c = "Karate Framework training 01"
    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"
    * match b == "#regex \\w+"
    * match b == "#regex [A-Z][a-z]+"
    #* match c == "#regex [A-Za-z\\s]+"
    * match c == "#regex (\\w+\\s?)+"


