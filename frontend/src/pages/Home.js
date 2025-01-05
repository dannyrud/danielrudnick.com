import React from "react";
import { Container, Row, Col, Button } from "react-bootstrap";

const Home = () => {
  return (
    <Container className="my-5">
      <Row className="align-items-center">
        {/* Profile Picture */}
        <Col md={4} className="text-center">
          <img
            src={`${process.env.PUBLIC_URL}/images/dogs.jpg`}
            alt="Daniel Rudnick"
            className="rounded-circle shadow-lg img-fluid"
          />
        </Col>

        {/* Facts Section */}
        <Col md={8}>
          <h1 className="text-dark mb-3 text-center">Hi, I'm Daniel Rudnick!</h1>
          <p className="text-dark">
            I'm a Computer Science student with a strong passion for backend development and computer security. Here's a little more about me:
          </p>
          <ul className="text-dark">
            <li>🧑‍🎓 Junior at the University of Michigan</li>
            <li>💻 I have the most development experience with C++ and Python</li>
            <li>🔒 Former SWE intern at <a href="https://www.repacket.com" target="_blank" rel="noopener noreferrer">Repacket</a></li>
            <li>🦮 I love my dogs!</li>

          </ul>

          {/* Call-to-Actions */}
          <div className="mt-4">
            <Button
              href={`${process.env.PUBLIC_URL}/files/DanielRudnickResume.pdf`}
              variant="outline-warning"
              target="_blank"
              rel="noopener noreferrer"
            >
              My Resume
            </Button>
          </div>
        </Col>
      </Row>
    </Container>
  );
};

export default Home;
