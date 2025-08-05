# Porting Forza Motorsport 3/4 tracks into Assetto Corsa

general process:

## extraction
1. get the `Forza Motorsport 3/4` `.iso`
2. use `xbox360 iso extract` to extract files from the `.iso`
3. use [`Forza Studio 4.4t2`](https://www.tapatalk.com/groups/kottons_chop_shop/forza-studio-4-4-t3213-s20.html) to extract your favorite track's meshes, textures, and UVs
4. import extracted `.obj` and `.mtl` files into `Blender`

## blender
5. convert all textures into `.png`
6. for each object, find the right texture and apply it to the object's material
7. some objects will have complex shaders with 2+ textures. good luck
8. for each object, bake the texture and apply it to its respective object
9. export track as `.fbx`

## ksEditor
10. import your track's `.fbx` file into ksEditor
11. export as `.kn5`
12. copy into assetto corsa's track folder
13. play
