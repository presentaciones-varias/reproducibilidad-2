library(targets)
# Run all steps
tar_make()
# View result of last step
tar_read(final_data) 

# Visualize the dependency graph
tar_visnetwork()
