library(rtweet)

#I have created a Twitter app, now I authenticate 

token <- create_token(
  app = "capstone_project_scebba",
  consumer_key = API_k,
  consumer_secret = API_seck,
  access_token = access_t,
  access_secret = access_sect
)

auth <- rtweet_app()

auth_save(auth, "sarascebba")

auth_as("sarascebba")

aut_token <- rtweet_app(token)

auth_setup_default()