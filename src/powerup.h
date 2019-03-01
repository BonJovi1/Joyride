#include "main.h"
#include "ball.h"

#ifndef POWERUP_H
#define POWERUP_H

class Powerup {
public:
    Powerup() {}
    Powerup(float x, float y, color_t color);
    
    glm::vec3 position;
    float rotation;
    int kill;
    bounding_box_t power_box;
    int start;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick(Ball ball1);

private:
    VAO *object;
};

#endif // BALL_HSKY