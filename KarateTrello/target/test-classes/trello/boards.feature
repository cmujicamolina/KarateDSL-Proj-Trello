Feature: boards resource test scripts
  Scenario: Create a new board
    Given url 'https://trello.com/'
    And path '1','boards'
    And param name = 'CreateFromKarate'
    And param key = '9703df553c88b14f74028616d60574bb'
    And param token = '8d10c47fdb7aa7cb51c4b349992aab4069ed92c1fc29a257489aa58e781a32ca'
    When method post
    Then status 200

    * def boardID = response.id

    Given url 'https://trello.com/'
    And path '1','boards',boardID
    And param key = '9703df553c88b14f74028616d60574bb'
    And param token = '8d10c47fdb7aa7cb51c4b349992aab4069ed92c1fc29a257489aa58e781a32ca'
    When method delete
    Then status 200


