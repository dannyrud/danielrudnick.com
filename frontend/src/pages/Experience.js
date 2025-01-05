import React from 'react';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Card from 'react-bootstrap/Card';

function Experience() {
  const experiences = [
    {
      id: 1,
      title: 'Software Engineer Intern',
      company: 'Repacket Inc',
      duration: 'May 2024 - August 2024',
      description: 'Developed secure web gateways and implemented authentication protocols for enterprise systems.',
    },
  ];

  return (
    <div className="py-5">
      <Container>
      <Row className="mb-4">
        <Col className="text-center">
          <h1
            className="display-4 text-dark"
            style={{
              fontWeight: 'bold',
              letterSpacing: '2px',
              textTransform: 'uppercase',
              marginBottom: '20px',
              textShadow: '2px 2px 4px rgba(0, 0, 0, 0.5)',
            }}
          >
            Experience
          </h1>
        </Col>
      </Row>
        {experiences.map((experience) => (
          <Row key={experience.id} className="mb-4 justify-content-center">
            <Col md={8}>
            <Card className="shadow-lg rounded" style={{ backgroundColor: '#f8f9fa' }}>
              <Card.Body>
                
                <Card.Title className="fs-3 fw-bold mb-3">{experience.company}</Card.Title>

                
                <Card.Subtitle className="text-muted fs-5 mb-2">
                  {experience.title}
                </Card.Subtitle>
                
                
                <Card.Subtitle className="text-muted fs-6 mb-4">
                  {experience.duration}
                </Card.Subtitle>

                <Card.Text className="fs-5">{experience.description}</Card.Text>
              </Card.Body>
            </Card>
            </Col>
          </Row>
        ))}
      </Container>
    </div>
  );
}

export default Experience;
