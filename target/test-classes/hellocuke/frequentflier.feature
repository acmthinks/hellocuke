Feature: Frequent flier status
    The currency fliers care most about

    Scenario Outline: Earning extra points by Frequent Flyer status 
        Given I am a <status> Frequent Flyer member 
        When I fly on a flight that is worth <base> base points 
        Then I should earn a status bonus of <bonus>
        And I should have guaranteed minimum points of <minimum> 
        And I should earn <total> points in all 

    Examples: 
        | status	| base	| bonus	| minimum	| total	| notes         |
        | Standard 	| 439   | 0    	| 0     	| 439   |               |
        | Silver 	| 148 	| 74    | 500  	    | 500   | minimum points|  
        | Silver 	| 439 	| 220 	| 500 	    | 659 	| 50% bonus     |
        | Gold 	    | 439 	| 329 	| 1000 	    | 1000 	| minimum points|
        | Gold 	    | 2041 	| 1531 	| 1000 	    | 3572 	| 75% bonus     |