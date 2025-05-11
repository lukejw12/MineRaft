# raft_utility/cooking_pot/generate_stew.mcfunction (macro)
# Give the dynamic mushroom stew to the player
$give @a mushroom_stew[custom_name=$(final_name),food={nutrition:$(nutrition),saturation:$(saturation)}]