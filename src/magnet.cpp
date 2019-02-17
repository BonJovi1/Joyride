#include "magnet.h"
#include "main.h"
#include "ball.h"

Magnet::Magnet(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    this->speedx = 2;
    this->speedy = 4.8;
    static const GLfloat vertex_buffer_data[] = {
        0.0f, 0.0f, 0.0f, // triangle 1 : begin
        40.0f, 0.0f, 0.0f,
        40.0f, 60.0f, 0.0f,
        0.0f, 0.0f, 0.0f, // triangle 2 : begin
        40.0f, 60.0f, 0.0f,
        0.0f, 60.0f, 0.0f,
        
    };

    this->object = create3DObject(GL_TRIANGLES, 3*2, vertex_buffer_data, color, GL_FILL);
}

void Magnet::draw(glm::mat4 VP) {
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

void Magnet::tick(Ball ball1) 
{
    float magnetx, magnety;
    magnetx = this->position.x;
    magnety = this->position.y;
    if(magnetx - ball1.position.x < 300 && magnetx > ball1.position.x)
    {
        ball1.position.x += this->speedx;
        ball1.position.y += this->speedy;
        // this->speedx += 0.5;
        // this->speedy += 0.5;
    }
    else if(ball1.position.x - magnetx < 300 && magnetx < ball1.position.x)
    {
        ball1.position.x -= this->speedx;
        ball1.position.y -= this->speedy;
    }

    
    
}
