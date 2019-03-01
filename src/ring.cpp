#include "ring.h"
#include "main.h"

Ring::Ring(float x, float y, float radius, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 90;
    this->score=0;
    this->radius = radius;

    this->ring_box.x = x;
    this->ring_box.y = y;
    this->ring_box.width = this->radius*2;
    this->ring_box.height = this->radius*2;
    
    static GLfloat vertex_buffer_data[2700];
    float a,b,r;
    r= 50.0f;
    // r2 = 40.0f;
    a=8.0f;
    b=8.0f;

    for(int i=0; i<300; i++)
    {
    	vertex_buffer_data[9*i] = this->radius*cos(i*2*M_PI/300);
        vertex_buffer_data[9*i + 1] = 0.0f;
        vertex_buffer_data[9*i + 2] = this->radius*sin(i*2*M_PI/300);
        
        vertex_buffer_data[9*i + 3] = this->radius*cos((i+1)*2*M_PI/300);
        vertex_buffer_data[9*i + 4] = 0.0f;
        vertex_buffer_data[9*i + 5] = this->radius*sin((i+1)*2*M_PI/300);
        
        vertex_buffer_data[9*i + 6] = 0.0f;
        vertex_buffer_data[9*i + 7] = 0.0f;
        vertex_buffer_data[9*i + 8] = 0.0f;
    }

        
	this->object = create3DObject(GL_TRIANGLES, 3*150, vertex_buffer_data, color, GL_FILL);
}

void Ring::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(1, 0, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Ring::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}

void Ring::tick(Ball ball1) 
{
    if(this->score == 1)
    {
        ball1.position.y = this->ring_box.y + sqrt( 50.0 - (ball1.position.x - this->ring_box.x)*(ball1.position.x - this->ring_box.x));
        // ball1.position.y
    }

	

}