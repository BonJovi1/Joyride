#include "main.h"
#include "ball.h"

#ifndef BOOMERANG_H
#define BOOMERANG_H

class Boomerang {
public:
    Boomerang() {}
    Boomerang(float x, float y, color_t color);
    
    glm::vec3 position;
    float rotation;
    int kill;
    bounding_box_t boom_box;
    int start;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick(Ball ball1);

private:
    VAO *object;
};

#endif // BALL_HSKY