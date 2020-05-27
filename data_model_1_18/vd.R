

# Create the VD based on sampled vessels in 2016
detach("package:fishline2rdbes", unload = TRUE)

library(fishline2rdbes)

source("./data_model_1_18/get_codes_fields_sequence.R")

output_dir <- "./data_model_1_18/test_files/"

VD <- VD_fishline_2_rdbes_1_18(data_model = fields_sequence, year = 2016, cruises = c("MON", "SEAS"), type = "only_mandatory")
head(VD[[1]])

write.table(select(VD[[1]], -tripId), paste0(output_dir, "dk_VD.csv"), row.names = F,  col.names = F, sep = ",", na = "", quote = FALSE)
