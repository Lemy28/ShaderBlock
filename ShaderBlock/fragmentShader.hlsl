#version 330 core
// ���������������ɫ
out vec4 FragColor;

// ����һ��������������Ӷ�����ɫ�����ղ�ֵ�����ɫ
// ����������Ͷ�����ɫ�������������(ourColor)һ��
in vec3 ourColor; 


void main()
{
    FragColor = vec4(ourColor, 1.f);
}
