import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBars, faPowerOff } from '@fortawesome/free-solid-svg-icons';


export default class Navigation extends React.Component {
    handleLogout = (e) => {
        e.preventDefault();
        this.props.history.push("/LoginPage");
    }
    render() {
        return (
            <nav className="main-header navbar navbar-expand navbar-white navbar-light">
                <ul className="navbar-nav">
                    <li className="nav-item">
                        <button className="btn btn-link nav-link" data-widget="pushmenu"><FontAwesomeIcon icon={faBars} /> </button>
                    </li>

                </ul>
                <ul className="navbar-nav ml-auto align-items-center">
                    <li>
                        Welcome, Mohit Shrivastava
                </li>
                    <li>
                        &nbsp;
                </li>
                    <li>
                        <button onClick={this.handleLogout} className="btn btn-danger border-0">
                            <FontAwesomeIcon icon={faPowerOff} />
                        </button>
                    </li>
                </ul>
            </nav>
        );
    }
}

