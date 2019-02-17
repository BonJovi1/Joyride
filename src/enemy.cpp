#include "enemy.h"
#include "main.h"

Enemy::Enemy(float x, float y, float rotation, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = rotation;
    this->kill = 0;
    
    this->enemy_box.height = 300;
    this->enemy_box.width = 5;
    this->enemy_box.x = x + 2.5;
    this->enemy_box.y = y - 150;
    
    // else
    // {
    //     this->enemy_box.height = 5;
    //     this->enemy_box.width = 300;
    //     this->enemy_box.x = x;
    //     this->enemy_box.y = y;

    // }
    static const GLfloat vertex_buffer_data[] = {
        0.0f, 0.0f, 0.0f, // triangle 1 : begin
        5.0f, 0.0f, 0.0f,
        5.0f, -300.0f, 0.0f, // triangle 1 : end
        0.0f, 0.0f, 0.0f, //triangle 2 begin
        5.0f, -300.0f, 0.0f,
        0.0f, -300.0f, 0.0f, //triangle 2 end
    };

    this->object = create3DObject(GL_TRIANGLES, 3*2, vertex_buffer_data, color, GL_FILL);
}

void Enemy::draw(glm::mat4 VP) {
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
