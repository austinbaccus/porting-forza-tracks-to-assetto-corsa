# overview
Unfortunately, as mentioned earlier, the tools used do not automatically link the correct texture to their respective materials or objects. And to make matters worse, we cannot use the texture filenames to get any hints either, because they're all named something like `_0x0000095d` or `_0x00000235`. So although the object names you get in Blender are often descriptive, that does not help. This part requires visual comparison.

It also helps to have an actual instance of FM3/4 up on a second screen, so you can drive around and actually see what the object you're texturing is supposed to look like.

# process
This is all you need to do for most objects:
1. Find the nearest untextured object in your Blender scene.
2. Look at that object in FM3/4.
3. Back in Blender, click the object, go to the `Materials` tab in the `Properties` area, click the little yellow dot next to the `Base Color` property and finally click `Image Texture`.
4. Click `Open`.
5. Navigate to the folder where you think the texture is likely to be. Select and apply the likely texture.
6. Does it look correct? If yes, you're done. If no, go back to step 4.

## roads
Roads typically require two textures: a surface texture and a weathering texture.

<img width="256" height="256" alt="surface" src="https://github.com/user-attachments/assets/ccc0b099-7b04-415f-8106-c2e9107284c1" />
<img width="256" height="256" alt="weathering" src="https://github.com/user-attachments/assets/29e40c08-ab6b-4de0-b021-4398f8212222" />

<br/>

This is what my main road's shader looks like:

<img width="1584" height="938" alt="image" src="https://github.com/user-attachments/assets/d06828f8-0a3d-4dea-a0be-05ec5a547d90" />

The lower image texture node is for the surface texture, and the upper image texture node is for the weathering texture. I apply some scaling to the surface texture to get more fidelity out of the texture, but the weathering is usually already correctly scaled for the road's UV, so I don't mess with that.

This is the result in Blender:

<img width="739" height="336" alt="image" src="https://github.com/user-attachments/assets/a9ea9eeb-ba4e-4cf8-80b9-e9fdad670f6c" />


## terrain
For Amalfi, I ended up completely scrapping what the game gave me and used my own textures and shaders. This was for a few reasons:
- The terrain shaders in Forza are complex and I couldn't figure out a perfect 1:1 match.
- The terrain textures are low resolution and didn't look very good.

I ended up using the terrain meshes and that was about it. So for the terrain, you might be best off doing your own thing.
