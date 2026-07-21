library(plume)

tbl_authors <- googlesheets4::read_sheet("123JiCxSHvA7Wiaz6tU25B7Wq27Ty_cV7n6UUqlhyvrY",
                                         sheet = 2)
aut <- PlumeQuarto$new(tbl_authors, file="_quarto.yml")
aut$set_corresponding_authors(1)
aut$to_yaml()
