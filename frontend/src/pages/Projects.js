import  React, { useState, useEffect } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

function Projects() {
  const [projects, setProjects] = useState([]);
  useEffect(() => {
    // Declare a boolean flag that we can use to cancel the API request.
    let ignoreStaleRequest = false;
    // Fix this url later
    const url = "http://localhost:5001/api/projects";
    fetch(url, { credentials: "same-origin" })
      .then((response) => {
        if (!response.ok) throw Error(response.statusText);
        return response.json();
      })
      .then((data) => {
        // If ignoreStaleRequest was set to true, we want to ignore the results of the
        // the request. Otherwise, update the state to trigger a new render.
        if (!ignoreStaleRequest) {
          setProjects(data);
        }
      })
      .catch((error) => console.log(error));

    return () => {
      // This is a cleanup function that runs whenever the Post component
      // unmounts or re-renders. If a Post is about to unmount or re-render, we
      // should avoid updating state.
      ignoreStaleRequest = true;
    };
  }, []);
  return (
    <Container
      fluid
      className="bg-primary text-warning p-4"
      style={{
        maxHeight: '800px',
        overflowY: 'auto',
        padding: '1rem',
      }}
    >
      <Row className="gx-3 gy-4">
      {projects.map((project) => (
        <Col
          key={project.id}
          xs={12} // Full-width on small screens
          sm={6} // Two cards per row on small screens
          md={6} // Two cards per row on medium screens
          lg={4} // Three cards per row on large screens
          className="d-flex justify-content-center"
        >
          <Card
            className="project-card"
            style={{
              width: '100%', // Make the card fill its column width
              maxWidth: '24rem', // Larger card size
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
            <Card.Body>
              <Card.Title>{project.title}</Card.Title>
              <div className="project-description">
                <Card.Text>{project.description}</Card.Text>
              </div>
              {project.github_url ? (
                <Button href={project.github_url} className="mb-3">
                  Github
                </Button>
              ) : (
                <p className="text-muted mt-3">
                This repository is private due to the University of Michigan Honor Code.
              </p>
              )}
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
