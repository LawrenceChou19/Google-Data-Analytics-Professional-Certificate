id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
print(employee)
separate(employee,name, into=c('first_name','last_name'),sep=' ')

first_name <- c("John","Rob","Rachel","Christy","Johnson","Candace","Pansy","Darius","Claudia")
last_name <- c("Mendes","Stewart","Abrahamson","Hickman","Harper","Miller","Landy","Jordan","Berry","Garcia")


# Note: if you are following along within your Posit (R Studio) project, the following code was pasted into the script editor:
# Copy + paste the syntax of the following concatenated list function that defines the three variables: first_name, last_name, and job_title:

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

# The employee variable is defined as a data frame with the following parameters: id, first_name, last_name, and job_title.
# Once this code is pasted into your editor, run the code, and continue with the video. 

unite(employee,'name',first_name,last_name,sep=' ')
