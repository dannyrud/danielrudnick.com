import React, { useState, useEffect } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

function Projects() {
  const [projects, setProjects] = useState([]);
  useEffect(() => {
    let ignoreStaleRequest = false;
    const url = "http://localhost:5001/api/projects";
    fetch(url, { credentials: "same-origin" })
      .then((response) => {
        if (!response.ok) throw Error(response.statusText);
        return response.json();
      })
      .then((data) => {
        if (!ignoreStaleRequest) {
          setProjects(data);
        }
      })
      .catch((error) => console.log(error));

    return () => {
      ignoreStaleRequest = true;
    };
  }, []);
  
  return (
    <Container
      fluid
      className="my-5"
    >
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
            My Projects
          </h1>
        </Col>
      </Row>

      {/* Projects Grid */}
      <Row className="gx-3 gy-4">
        {projects.map((project) => (
          <Col
            key={project.id}
            xs={12}
            sm={6}
            md={6}
            lg={4}
            className="d-flex justify-content-center"
          >
            <Card
              className="project-card"
              style={{
                width: '100%',
                maxWidth: '24rem',
                transition: 'all 0.3s ease',
              }}
            >
              <Card.Img
                variant="top"
                src={project.image_url}
                style={{
                  height: '200px',
                  objectFit: 'contain',
                  objectPosition: 'top',
                }}
              />
              <Card.Body style={{ color: '#FFC107' }}>
                <Card.Title>{project.title}</Card.Title>
                <div className="project-description">
                  <Card.Text>{project.description}</Card.Text>
                </div>
                <div>
                <hr
                  style={{
                    border: '1px solid',
                    marginBottom: '1rem',
                  }}
                />
                {project.github_url ? (
                  <Button href={project.github_url} 
                    target="_blank"
                    className="text-dark px-4 py-2 rounded shadow-sm"
                  style={{
                    border: '2px solid #ffffff',
                    backgroundColor: '#ffffff',
                  }}>
                    Github
                  </Button>
                ) : (
                  <p className="fs-10" style={{ color: '#FFC107' }}>
                    This repository is private due to the University of Michigan Honor Code.
                  </p>
                )}
                </div>
                <hr className="my-3" />
                <div className="project-skills">
                  {project.info.map((skill, index) => (
                    <span
                      key={index}
                      className="skill-badge"
                      style={{
                        display: 'inline-block',
                        margin: '0 5px 5px 0',
                        padding: '5px 10px',
                        backgroundColor: '#FFC107',
                        color: '#000',
                        borderRadius: '5px',
                        fontSize: '0.9rem',
                      }}
                    >
                      {skill}
                    </span>
                  ))}
                </div>
              </Card.Body>
            </Card>
          </Col>
        ))}
      </Row>
    </Container>
  );
}

export default Projects;
