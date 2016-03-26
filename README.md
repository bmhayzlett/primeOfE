In 2004, two billboards went up on opposite sides of the country. The billboards
had a simple message:

{first 10-digit prime found in consecutive digits of e}.com

Upon visiting the website, solvers of the problem were greeted with a message:

Congratulations! You've made it to round 2.

This was the start of a job application for Google. digOfE.rb can perform the same
calculation and arrive at the solution: 7427466391.

In order to run the code, clone the repo and load it in pry or irb. digOfE.rb
has expanded functionality over what is required to calculate the above solution.

primeOfE(num_digits,nth_prime) can calculate "num_digits" number of digits for
the "nth_prime" with that number of digits. For the above problem, run
primeOfE(10,1) to find the first 10-digit prime in consecutive digits of e.
primeOfE(9,2) would find the second 9-digit prime.

Calculating whether or not a number is prime takes O(n) time complexity.
Micro-optimizations were used to reduce the calculating time, but num_digits is
limited to 1 <= num_digits <= 15, and nth_prime is limited to nth_prime >= 1.
