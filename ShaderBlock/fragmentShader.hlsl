#version 330 core
// 定义最终输出的颜色
out vec4 FragColor;

// 定义一个输入变量，它从顶点着色器接收插值后的颜色
// 变量名必须和顶点着色器的输出变量名(ourColor)一致
in vec3 ourColor; 


void main()
{
    FragColor = vec4(ourColor, 1.f);
}
