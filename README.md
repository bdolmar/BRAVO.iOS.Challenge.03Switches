This is the third challenge of a new series of activities. The goal of this series of challenges is to give developers a chance to explore portions of the API that have a discrete, small scope and that are likely to be less understood.

The requirements for the challenge are as follows:

1. You will be presented with a bank of switches and one master switch.
2. When any of the child switches are off, the master switch should be off.
3. When all of the child switches are on, the master switch should be on.
4. When the master switch changes its state, all of the child switches should switch to the master's state (e.g. if you turn the master switch on, all of the child switches should turn on).

In order to make this challenge interesting the following additional rules are in effect:

1. No loops are allowed in the implementation of the business logic. This includes "for", "while" or any variant there of.
2. No use of any selector that begins with the word "enumerate" is allowed in the implementation of the business logic.

I'm making a contest of the challenge. Entries will be accepted up until 1/7/2014. All entries will be evaluated by Ben Dolmar and the best challenge will be announced at the next iOS Talk Shop and win a free lunch. If I judge a tie to have occurred, I'll raffle the lunch. In addition, I'll post my solution to the problem on that Friday and include an article explaining how I approached the problem.

To submit an entry for evaluation, please do the following:

1. Fork the project from [https://github.com/bdolmar/BRAVO.iOS.Challenge.03Switches](https://github.com/bdolmar/BRAVO.iOS.Challenge.03Switches).
2. Post your files to your public fork on Github. 
3. Send a pull request back to the original repository with your project by midnight on 1/7/2014.