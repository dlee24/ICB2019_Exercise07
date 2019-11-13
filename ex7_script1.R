#Logan Thayer and Diane Lee

#getting every odd row from a dataframe

every.odd <- function(x){
    odd.rows = x[seq(from = 1, to = nrow(x), 2), ]
    return(odd.rows)
}

