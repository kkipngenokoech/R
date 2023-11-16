# Assuming your data frame is named tab02_eng

# Filter out rows with N/A in the "Region of Work" column
filtered_data <- tab02_eng[complete.cases(tab02_eng$region_of_work), ]

# Select only columns with "_"
selected_cols <- colnames(filtered_data)[grep("_", colnames(filtered_data))]

# Create a long format of the data for better plotting
long_data <- tidyr::gather(filtered_data, key = "category", value = "value", selected_cols)

# Convert percentages to numeric
long_data$value <- as.numeric(long_data$value)

# Create a bar plot
ggplot(long_data, aes(x = region_of_work, y = value, fill = category)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Categories Across Regions",
       x = "Region of Work", y = "Value",
       fill = "Category") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

