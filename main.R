# Number Guessing Game Using R
secret_number <- sample(1:100, 1)
attempts <- 0
cat("Guess the number between 1 and 100!\n")
repeat {
  guess <- suppressWarnings(as.integer(readline("Enter your guess: ")))
  if (is.na(guess)) {
    cat("Please enter a whole number.\n")
    next
  }
  attempts <- attempts + 1
  if (guess < secret_number) {
    cat("Too low! Try again.\n")
  } else if (guess > secret_number) {
    cat("Too high! Try again.\n")
  } else {
    cat("Correct! You guessed it in", attempts, "attempt(s).\n")
    break
  }
}
