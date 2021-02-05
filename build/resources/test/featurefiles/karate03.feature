Feature: Karate Test Suite 3
  Validating XML content
  
  Scenario: Karate XML TestCase 1
    XML first test case

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: Karate XML TestCase 2
    XML 2nd test case

    Given def xml =
    """
    <info>
      <id>101</id>
      <tool>
        <name>Karate</name>
        <version>0.9.6</version>
      </tool>
    </info>
    """
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: Karate XML TestCase 3
    XML 3rd test case

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml/info/id == 101
    * match xml.info.tool.name == "Karate"

  Scenario: Karate XML TestCase 4
    XML 4th test case

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"

  Scenario: Karate XML TestCase 5
    XML validation with the whole content including the xml nodes

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<name>Karate</name>"

  Scenario: Karate XML TestCase 6
    XML with duplicate nodes while traversing

    Given def xml =
    """
    <info>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
        <tool>
          <name>IntelliJ</name>
         <version>2020.2</version>
        </tool>
    </info>
    """
    * match xml/info/tool[1]/name contains "Karate"
    * match xml/info/tool[2]/name contains "IntelliJ"




