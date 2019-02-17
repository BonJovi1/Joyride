#include "main.h"
#include "ball.h"
#ifndef MAGNET_H
#define MAGNET_H

class Magnet {
public:
    Magnet() {}
    Magnet(float x, float y, color_t color);
    
    glm::vec3 position;
    float rotation;
    int flag;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick(Ball ball1);
    float speedx;
    float speedy;

private:
    VAO *object;
};

#endif // BALL_HSKY