#version 330 core
// layout (location = 0) ��Ӧ glVertexAttribPointer �ĵ�һ������
// ���ն���λ������
layout (location = 0) in vec3 aPos;   

// ���ն�����ɫ����
layout (location = 1) in vec3 aColor; 

// ����һ��������������ڽ���ɫ���ݸ�Ƭ����ɫ��
out vec3 ourColor;

void main()
{
    // �������յĶ���λ��
    gl_Position = vec4(aPos, 1.0);
    // ����VBO�л�ȡ����ɫֱ�Ӹ����������
    ourColor = aColor; 
}