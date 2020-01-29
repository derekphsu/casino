# README


There are many Casinos
There are many Games (poker, blackjack, etc)
Each game has many casinos and each casino has many games.  They are related via a join table

PlayerBalance allows the player to find out the balance they have at each casino

BetHistory tracks each bet made by each player and the result.  creating this row will also update the PlayerBalance

PlayerTransacations will record deposits and withdrawls by the player.  Creating this will also update PlayerBalance

The advantage of having a separate player balance is that the player can have a easy access to the balance he has at each casino. If there is any discrepancies with the balance, all the records are not destroyed so we can have an easier time identifying the bug in our system and resolve the balance issue.

Casino Transactions records whether the casino made money for lost money for each bet.  This will give an accurate snapshot of the profit and loss the casino has. This is not to be confused with BetHistory as the casino has no stake in some games like poker.

**Casino with blackjack **

Casino.joins(:games).where("games.name = 'blackjack'")


**Texas holdem played at casino**

bh_id = BetHistory.where(casino_id: 1, game_id: 1).pluck(:id)
ct = CasinoTransaction.where(bet_history_id: bh_id)
number_of_hands = ct.size
total_profit = ct.sum(:net_gross)
