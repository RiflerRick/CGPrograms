## Shader Programming

Now there are a few basic concepts based on shader programming that has been already discussed in details in the exercise book.
Now we deal with the programs of GLSL.

First of all, we get GL Shader Langauge for Vertex Shader as the following program:

#### Vertex Shader Program:

`
uniform vec3 uMaterialColor;
uniform vec3 uDirLight;

/*vec3 is a datatype for a 3 element vector.
so the materialColor and the direction of light has been passed as a uniform values that do not change.*/


varying vec3 vColor; 

/*varying color vColor is an output color
we use the vColor variable for the fragment shader*/

void main()
{
    /*this vertex shader essentially computes the diffuse Lambertian lighting components at each vertex*/
    
    gl_Position=projectionMatrix*modelViewMatrix*vec4(position,1.0);
    
    /*gl_Position is the value that is always outputted by the vertex shader*/

    /*gl_Position stores the clipping coordinates of the vertex on the screen*/

    vec3 light=normalize(uDirLight);

    /*this is just for the sake of the programmer so that the programmer does not need to pass the normalized vector as the direction of the light*/

    float diffuse=max(dot(normal,light),0.0);
    vColor=uMaterialColor*diffuse;

    /*here the programming is happening exactly according to norm*/
}

`

#### 