library(targets)
# Run all steps
tar_make()
# View result of last step
dir_final_data = tar_read(final_data)  # Ahora es un directorio
df = feather::read_feather(dir_final_data)
# Visualize the dependency graph
tar_visnetwork()
