#include "main.h"

#ifndef COINS_H
#define COINS_H

class Coin {
public:
    Coin() {}
    Coin(float x, float y, color_t color);
    
    glm::vec3 position;
    float rotation;
    float radius;
    float score;
    bounding_box_t coin_box;

    void draw(glm::mat4 VP);
    void set_position(float x, float y);

    void tick();


private:
    VAO *object;
};

#endif // BALL_H