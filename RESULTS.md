1. I created 3 child processes. Child A was assigned 10 tickets, 
Child B was assigned 20 tickets, and Child C was assigned 30 tickets.

2. Each child process runs a heavy CPU-bound loop executing integer addition 
millions of times (using a variation of the burn() function from testlottery.c).

3. Child A (16.6% of total tickets) finished 1000 work units in roughly 16% of 
the total time. Child B (33.3% of tickets) captured roughly 33% of the time, 
and Child C (50% of tickets) captured roughly 50% of the time. These observed 
shares closely match the expected probabilistic shares.

4. Because lottery scheduling relies on a random number generator to pick the 
next process, short runs experience high variance—a process with few tickets 
might get lucky and run multiple times in a row. However, due to the law of 
large numbers, as the run gets longer and more lotteries are held, the 
scheduler converges on the expected mathematical proportions.