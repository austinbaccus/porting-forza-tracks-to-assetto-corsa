# tools needed
- `organize_fm_track_for_blender.py`
- `assign_material_to_roadlines.py`
- `rename_x_to_y_in_z_collection.py`
- `simplify_name.py`

# overview
There is a lot of unorganized junk in the Blender scene when you first open it up. Luckily for you, a few scripts can go a long ways towards cleaning this up. Also remember that you eventually need to export this into Assetto Corsa, and AC expects things to be named a ccertain way.

This is the general process you're going to follow for this chapter:
1. Run `organize_fm_track_for_blender.py`
2. If things are in the wrong cateogry, put them into the correct category and run `rename_x_to_y_in_z_collection.py`
3. Run `assign_material_to_roadlines.py`

## step 1 - `organize_fm_track_for_blender.py`
The first step is to rename the objects in your Blender scene to be compatible with Assetto Corsa. You can find the a good tutorial on AC track making [here](https://assettocorsamods.net/threads/build-your-first-track-basic-guide.12/), but these are the relevant parts for this chapter:

- An AC-compatible object's name consists of two or more parts: `ID`, `CATEGORY`, and an optional third part for any string you want.
- `{ID}_{CATEGORY}`, `{ID}_{CATEGORY}_{whatever else you want to put}` are both valid. You can also remove the underscores, but I add them for clarity; This does not seem to impact Assetto Corsa's ability to interpret the object.

There are several default categories:
- WALL
- ROAD
- GRASS
- KERB
- SAND
- PIT

There might be more, idk. You can also define your own custom categories if you'd like.

The purpose of the `organize_fm_track_for_blender.py` script is to rename every object in the scene to follow the `{ID}_{CATEGORY}_{whatever else you want to put}` syntax. It guesses which category the object is in based on clues in the object's name. It also assigns a unique ID to every object.
