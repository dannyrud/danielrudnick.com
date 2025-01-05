import React from 'react';
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import NavDropdown from 'react-bootstrap/NavDropdown';
import Container from 'react-bootstrap/Container';
import Home from './pages/Home';
import Projects from './pages/Projects';
import Experience from './pages/Experience';
import Education from './pages/Education';

function App() {
  return (
    <>
      {/* Navbar */}
      <Navbar bg="primary" expand="lg" className="text-warning sticky-top">
        <Container>
          {/* Left: Home */}
          <Nav className="me-auto align-items-center">
            <Nav.Link href="/" className="text-warning">
              <i className="bi bi-house" style={{ fontSize: '1.5rem' }}></i>
            </Nav.Link>
          </Nav>

          {/* Center: GitHub, Email, and LinkedIn */}
          <Nav className="mx-auto align-items-center">
            <Nav.Link href="https://github.com/dannyrud" target="_blank" className="text-warning">
              <i className="bi bi-github" style={{ fontSize: '1.5rem' }}></i>
            </Nav.Link>
            <Navbar.Text className="mx-3 text-warning">
              <i className="bi bi-envelope me-2" style={{ fontSize: "1.5rem" }}></i>
              dannyrud@umich.edu
            </Navbar.Text>
            <Nav.Link href="https://www.linkedin.com/in/daniel-rudnick/" target="_blank" className="text-warning">
              <i className="bi bi-linkedin" style={{ fontSize: '1.5rem' }}></i>
            </Nav.Link>
          </Nav>

          {/* Right: Dropdown */}
          <Nav className="ms-auto align-items-center">
            <NavDropdown
              title={<i className="bi bi-list text-warning" style={{ fontSize: '1.5rem' }}></i>}
              id="basic-nav-dropdown"
              align="end"
              menuVariant="dark"
              className="custom-dropdown"
            >
              <NavDropdown.Item href="#experience" className="bg-primary text-warning">
                Experience
              </NavDropdown.Item>
              <NavDropdown.Item href="#projects" className="bg-primary text-warning">
                Projects
              </NavDropdown.Item>
              <NavDropdown.Item href="#education" className="bg-primary text-warning">
                Education
              </NavDropdown.Item>
            </NavDropdown>
          </Nav>
        </Container>
      </Navbar>

      {/* Sections */}
      <div id="home" className="section">
        <Home />
      </div>
      <div id="experience" className="section">
        <Experience />
      </div>
      <div id="projects" className="section">
        <Projects />
      </div>
      <div id="education" className="section">
        <Education />
      </div>
    </>
  );
}

export default App;
