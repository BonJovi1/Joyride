#include "main.h"

#ifndef ENEMY_H
#define ENEMY_H

class Enemy {
public:
    Enemy() {}
    Enemy(float x, float y, float rotation, color_t color);
    
    glm::vec3 position;
    float rotation;
    int kill;
    bounding_box_t enemy_box;

    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick();

private:
    VAO *object;
};

#endif // BALL_HSKY