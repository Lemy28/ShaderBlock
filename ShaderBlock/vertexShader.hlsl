#version 330 core
// layout (location = 0) 对应 glVertexAttribPointer 的第一个参数
// 接收顶点位置属性
layout (location = 0) in vec3 aPos;   

// 接收顶点颜色属性
layout (location = 1) in vec3 aColor; 

// 定义一个输出变量，用于将颜色传递给片段着色器
out vec3 ourColor;

void main()
{
    // 设置最终的顶点位置
    gl_Position = vec4(aPos, 1.0);
    // 将从VBO中获取的颜色直接赋给输出变量
    ourColor = aColor; 
}