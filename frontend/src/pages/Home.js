import React from "react";
import { Container, Row, Col, Button } from "react-bootstrap";

const Home = () => {
  return (
    <Container
      fluid
      className="d-flex align-items-center"
      style={{
        minHeight: "75vh",
        paddingTop: "4rem",
        paddingBottom: "4rem",
      }}
    >
      <Container>
        <Row className="align-items-center">
          <Col
            xs={12}
            md={4}
            className="text-center mb-4 mb-md-0"
          >
            <img
              src='https://d1273lu6bgll08.cloudfront.net/dogs.jpg'
              alt="Daniel Rudnick"
              className="rounded-circle shadow-lg img-fluid"
              style={{
                maxWidth: "300px",
                height: "auto",
              }}
            />
          </Col>

          {/* Facts Section */}
          <Col
            xs={12}
            md={8}
            className="text-center text-md-start" 
          >
            <h1
              className="text-dark mb-4"
              style={{
                fontSize: "2.8rem",
                fontWeight: "bold",
              }}
            >
              Hi, I'm Daniel
            </h1>
            <p
              className="text-dark"
              style={{
                fontSize: "1.25rem",
              }}
            >
              I'm a Computer Science student with a strong passion for backend
              development and computer security. Here's a little more about me:
            </p>
            <ul
              className="text-dark list-unstyled"
              style={{
                fontSize: "1.15rem", 
                lineHeight: "1.8",
              }}
            >
              <li>🧑‍🎓 Junior at the University of Michigan</li>
              <li>💻 I have the most development experience with C++ and Python</li>
              <li>
                🔒 Former SWE intern at{" "}
                <a
                  href="https://www.repacket.com"
                  target="_blank"
                  rel="noopener noreferrer"
                  style={{ color: '#0d6efd' }}
                >
                  Repacket
                </a>
              </li>
              <li>🦮 I love my dogs</li>
              <li>🐻 I am a huge Chicago Cubs fan</li>
            </ul>

            <div className="mt-4">
              <Button
                href={`${process.env.PUBLIC_URL}/files/DanielRudnickResume.pdf`}
                target="_blank"
                rel="noopener noreferrer"
                style={{
                  padding: "0.75rem 1.5rem",
                  fontSize: "1.1rem",
                  color: '#ffc107',
                  backgroundColor: '#0d6efd'
                }}
              >
                My Resume
              </Button>
            </div>
          </Col>
        </Row>
      </Container>
    </Container>
  );
};

export default Home;
