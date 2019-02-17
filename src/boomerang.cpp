#include "boomerang.h"
#include "main.h"

Boomerang::Boomerang(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    this->kill = 0;

    this->boom_box.height = 22;
    this->boom_box.width = 20;
    this->boom_box.x = x + 10;
    this->boom_box.y = y + 11;
    static const GLfloat vertex_buffer_data[] = {
        0.0f, 0.0f, 0.0f, // triangle 1 : begin
        10.0f, 20.0f, 0.0f,
        16.0f, 16.0f, 0.0f, // triangle 1 : end
        0.0f, 0.0f, 0.0f, //triangle 2 begin
        16.0f, 16.0f, 0.0f,
        4.0f, -2.0f, 0.0f, //triangle 2 end
        0.0f, 0.0f, 0.0f, //triangle 3 begin
        -10.0f, 20.0f, 0.0f,
        -16.0f, 16.0f, 0.0f, //triangle 3 end
        0.0f, 0.0f, 0.0f, //triangle 4 begin
        -16.0f, 16.0f, 0.0f,
        -4.0f, -2.0f, 0.0f, //triangle 4 end

    };

    this->object = create3DObject(GL_TRIANGLES, 3*4, vertex_buffer_data, color, GL_FILL);
}

void Boomerang::draw(glm::mat4 VP) {
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

void Boomerang::tick() 
{
    this->position.y -= 4;
    this->position.x = ((this->position.y ) * (this->position.y))/250;
    this->boom_box.x = this->position.x + 10;
    this->boom_box.y = this->position.y + 11;

    if(this->position.y <= -200)
        this->kill = 1;
}

