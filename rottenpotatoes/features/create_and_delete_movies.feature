Feature: create and delete movies
 
  As an admin
  So that I can change the database
  I want to see movies I create but not after I delete

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the RottenPotatoes home page
  
Scenario: Create a movie
    When I follow "Add new movie"
    And I fill in "movie_title" with "Spectre"
    And I press "Save Changes"
    Then I should see "Spectre was successfully created."

Scenario: Delete a movie
    When I follow "More about Aladdin"
    And I press "Delete"
    Then I should see "Movie 'Aladdin' deleted."
    And I press "Refresh"
    Then I should not see "Aladdin"