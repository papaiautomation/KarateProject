Feature: Karate Test Suite 2
  Validating JSON content
  
  Scenario: Karate TestCase 1
    JSON first test case

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: Karate TestCase 2
    JSON 2nd test case

    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name

  Scenario: Karate TestCase 3
    JSON 3rd test case

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Karate TestCase 4
    JSON 4th test case

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * assert json.id == "101"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Karate TestCase 5
    JSON 5th test case negative

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * assert json.id == "101"
    * match json.tool == { "name":"Karate", "version":"0.9.0"}




