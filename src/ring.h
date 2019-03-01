#include "main.h"
#include "ball.h"

#ifndef RING_H
#define RING_H

class Ring {
public:
    Ring() {}
    Ring(float x, float y, float radius, color_t color);
    
    glm::vec3 position;
    float rotation;
    float radius;
    float score;
    bounding_box_t ring_box;

    void draw(glm::mat4 VP);
    void set_position(float x, float y);

    void tick(Ball ball1);


private:
    VAO *object;
};

#endif // BALL_H