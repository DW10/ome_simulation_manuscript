
## The author list is seeded using the Plume package. 

## Uncomment the lines of code and add your email and the sheet ID. See Plume DOCS for help. 
## Then rename to "pre_render.R"

## First we authenticate the username so that plume can run in non-interactive mode when rendering and run quietly

library(googledrive)
#drive_auth(email = "<youremailhere>@gmail.com")
#googlesheets4::gs4_auth(token = drive_token())

## THen we fetch the updated author list and refresh the .yaml with the updated info

library(plume)
options(googlesheets4_quiet = TRUE)
#tbl_authors <- googlesheets4::read_sheet("<YOURSHEETIDHERE>",sheet = 2)
#aut <- PlumeQuarto$new(tbl_authors, file="_quarto.yml")
#aut$set_corresponding_authors(1)
#aut$to_yaml()
