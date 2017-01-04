/*
The fragment Shader has inputs gl_Position and vColor, gl_Position is derived from the vertex Shader straight and the vColor is a varying attribute that was created in the vertex shader 
*/
/*
These values are then passed onto the rastorizer that interpolates these across the vertices and creates fragments. Each fragment is then passed to the fragment shader 
*/

varying vec3 vColor;
void main()
{
    gl_FragColor=vec4(vColor,1.0);//the 4th coordinate is the alpha value(opacity).
    /*Essentially what the fragment shader does is to simply output out the vColor to the gl_FragColor -this is the built in output variable for what color appears on the screen.*/

}