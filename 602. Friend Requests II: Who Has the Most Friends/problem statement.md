## Problem Statement
Given a table RequestAccepted, which records friend requests that have been accepted, we need to find the user who has the most friends along with the number of friends they have.

## Expected Output
The output should contain one row with:

id: The user ID of the person with the most friends.
num: The total number of friends they have.

## Explanation
User 3 has three friends: {1, 2, 4}
No other user has more than three friends.
Therefore, user 3 is the answer.

## Constraints
The test cases are designed such that only one person has the highest number of friends.

## Approach
Since friendships are bidirectional, both requester_id and accepter_id contribute to a user's friend count.
We can count the number of times a user appears in either column.
Find the user with the highest count.

## Complexity Analysis
The query scans the RequestAccepted table twice to collect all friendships.
The GROUP BY operation aggregates counts per user.
The ORDER BY num DESC LIMIT 1 ensures only the user with the most friends is selected.
