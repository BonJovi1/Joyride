#include "powerup.h"
#include "main.h"

Powerup::Powerup(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 90;
    this->kill = 0;
    this->start = 0;
    this->power_box.height = 50;
    this->power_box.width = 50;
    this->power_box.x = x;
    this->power_box.y = y;

    static GLfloat vertex_buffer_data[8000]; 
    // float a,r;
    float a,b,r;
    a=8.0f;
    b=8.0f;
    r = 25.0f;
    
    for(int i=0; i<300; i++)
    {
        vertex_buffer_data[9*i] = r*cos(i*2*M_PI/300);
        vertex_buffer_data[9*i + 1] = 0.0f;
        vertex_buffer_data[9*i + 2] = r*sin(i*2*M_PI/300);
        
        vertex_buffer_data[9*i + 3] = r*cos((i+1)*2*M_PI/300);
        vertex_buffer_data[9*i + 4] = 0.0f;
        vertex_buffer_data[9*i + 5] = r*sin((i+1)*2*M_PI/300);
        
        vertex_buffer_data[9*i + 6] = 0.0f;
        vertex_buffer_data[9*i + 7] = 0.0f;
        vertex_buffer_data[9*i + 8] = 0.0f;
    }

    this->object = create3DObject(GL_TRIANGLES, 900, vertex_buffer_data, color, GL_FILL);
}

void Powerup::draw(glm::mat4 VP) {
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

void Powerup::tick(Ball ball1) 
{
    if (this->position.x - ball1.position.x <= 500)
    	this->start = 1;
    if(this->start == 1)
    {
	    this->position.x -= 8;
	    // this->position.x = ((this->position.y ) * (this->position.y))/250;
	    this->power_box.x = this->position.x;
	    // this->boom_box.y = this->position.y + 11;

	    // if(this->position.y <= -200)
	    //     this->kill = 1;
	}
}

