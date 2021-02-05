Feature: Karate Test Suite 5
  Validating SOAP API

  @soap
  Scenario: Karate SOAP API TestCase 1
    Given url "http://www.dneonline.com/calculator.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
     <?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
      <Add xmlns="http://tempuri.org/">
        <intA>10</intA>
        <intB>30</intB>
      </Add>
    </soap:Body>
  </soap:Envelope>
    """
    When soap action "http://tempuri.org/Add"
    Then status 200
    * print responseHeaders
    * print responseHeaders["Server"]
    * print responseHeaders["Server"][0]
    * match responseHeaders["Server"] == ["Microsoft-IIS/8.0"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/8.0"
    * print responseType
    * match responseType == "xml"
    * print response
    * match response contains "40"
    * match response //AddResult == 40
    * print responseTime
    * assert responseTime <= 2000
    * print responseStatus


