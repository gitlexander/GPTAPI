# plumber.R

library(plumber)

# Define a Plumber router
r <- plumb("/plumber.R")

# Example endpoint
r$handle("GET", "/", function(req, res) {
  res$status(200)
  list(message = "Hello, world!")
})

# Run the API
r$run(host = '0.0.0.0', port = as.numeric(Sys.getenv('PORT', 8000)))
