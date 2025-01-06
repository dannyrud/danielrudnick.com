import React, { useState, useEffect } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

function Courses() {
  const [courses, setCourses] = useState([]);
  
  useEffect(() => {
    let ignoreStaleRequest = false;
    const url = "http://localhost:5001/api/courses";
    fetch(url, { credentials: "same-origin" })
      .then((response) => {
        if (!response.ok) throw Error(response.statusText);
        return response.json();
      })
      .then((data) => {
        if (!ignoreStaleRequest) {
          setCourses(data);
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
            My Courses
          </h1>
        </Col>
      </Row>

      {/* Courses Grid */}
      <Row className="gx-4 gy-5">
        {courses.map((course) => (
          <Col
            key={course.id}
            xs={12}
            sm={6}
            md={4}
            lg={3}
            className="d-flex justify-content-center"
          >
            <Card
              className="course-card shadow-lg"
              style={{
                width: '100%',
                maxWidth: '20rem', // Narrower than projects
                transition: 'all 0.3s ease',
                backgroundColor: '#f8f9fa',
              }}
            >
              <Card.Body>
                <Card.Title className="fs-4 fw-bold text-primary">
                  {course.title}
                </Card.Title>
                <Card.Text className="project-description">{course.description}</Card.Text>

                <div>
                  <hr
                    style={{
                      border: '1px solid #000000',
                      marginBottom: '1rem',
                    }}
                  />
                  {course.site_url ? (
                    <Button
                      href={course.site_url}
                      target="_blank"
                      className="text-light px-4 py-2 rounded shadow-sm"
                      style={{
                        border: '1px solid #000000',
                        backgroundColor: '#0d6efd',
                      }}
                    >
                      Class Site
                    </Button>
                  ) : (
                    <p className="fs-6 text-danger">
                      Class site not available
                    </p>
                  )}
                </div>

                <hr className="my-3" />
                <div className="course-skills">
                  {course.skills.map((skill, index) => (
                    <span
                      key={index}
                      className="skill-badge"
                      style={{
                        display: 'inline-block',
                        margin: '0 5px 5px 0',
                        padding: '5px 10px',
                        backgroundColor: '#ffc107',
                        color: '#000',
                        borderRadius: '5px',
                        fontSize: '0.85rem',
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

export default Courses;
