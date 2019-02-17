#include "beam.h"
#include "main.h"

Beam::Beam(float x, float y, float rotation, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = rotation;
    this->kill = 0;
    this->flag = 0;
    this->beam_box.height = 5;
    this->beam_box.width = 300;
    this->beam_box.x = x + 150;
    this->beam_box.y = y - 2.5;

    static const GLfloat vertex_buffer_data[] = {
        0.0f, 0.0f, 0.0f, // triangle 1 : begin
        300.0f, 0.0f, 0.0f,
        300.0f, 5.0f, 0.0f,
        0.0f, 0.0f, 0.0f, // triangle 2 : begin
        300.0f, 5.0f, 0.0f,
        0.0f, 5.0f, 0.0f,
        
    };

    this->object = create3DObject(GL_TRIANGLES, 3*2, vertex_buffer_data, color, GL_FILL);
}

void Beam::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Beam::tick() 
{
    
    if(this->position.y <= -200)
        flag =1;
        
    else if(this->position.y >= 258)
        flag = 0;
    if(flag == 0)
        this->position.y -= 1.5;
    else
        this->position.y += 1.5;


    this->beam_box.y = this->position.y - 2.5;
}
