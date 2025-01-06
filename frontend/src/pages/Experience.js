import React, { useState, useEffect } from 'react';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Card from 'react-bootstrap/Card';

function Experience() {
  const [experiences, setExperiences] = useState([]);
  useEffect(() => {
    let ignoreStaleRequest = false;
    const url = "https://i47w79jq8b.execute-api.us-east-2.amazonaws.com/api/experience";
    fetch(url, { credentials: "same-origin" })
      .then((response) => {
        if (!response.ok) throw Error(response.statusText);
        return response.json();
      })
      .then((data) => {
        if (!ignoreStaleRequest) {
          setExperiences(data);
        }
      })
      .catch((error) => console.log(error));

    return () => {
      ignoreStaleRequest = true;
    };
  }, []);
  
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
            <Card className="shadow-lg rounded" style={{ backgroundColor: '#0d6efd' }}>
              <Card.Body style={{ color: '#FFC107' }}>
                
              <div className="d-flex justify-content-between align-items-center mb-2">
                <Card.Title className="fs-3 fw-bold mb-0">{experience.company}</Card.Title>
                <span className="fs-6" style={{ fontStyle: 'italic' }}>
                  {experience.start_date} - {experience.end_date}
                </span>
              </div>
                
                <Card.Subtitle className="fs-5 mb-2">
                  {experience.position}
                </Card.Subtitle>

                <Card.Text className="fs-6">{experience.description}</Card.Text>
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
