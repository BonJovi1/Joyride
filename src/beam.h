#include "main.h"

#ifndef BEAM_H
#define BEAM_H

class Beam {
public:
    Beam() {}
    Beam(float x, float y, float rotation, color_t color);
    
    glm::vec3 position;
    float rotation;
    int kill;
    bounding_box_t beam_box;
    int flag;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick();

private:
    VAO *object;
};

#endif // BALL_HSKY