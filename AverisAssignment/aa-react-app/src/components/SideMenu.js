import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faTachometerAlt, faCircle } from '@fortawesome/free-solid-svg-icons'
import MainContent from './MainContent';
import AnotherContent from './AnotherContent';
import jwt_decode from "jwt-decode";

export default class SideMenu extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            showComponent: true,
        };
        this.ShowDashboardv1 = this.ShowDashboardv1.bind(this);
        this.ShowDashboardv2 = this.ShowDashboardv2.bind(this);
    }

    ShowDashboardv1() {
        this.setState({
            showComponent: true,
        });
    }
    ShowDashboardv2() {
        this.setState({
            showComponent: false,
        });
    }
    render() {
        const userdata = jwt_decode(localStorage.getItem('token'));
        return (
            <div>
                <aside className="main-sidebar sidebar-dark-primary elevation-4">
                    <a href="/" className="brand-link">
                        <img src="logo192.png" alt="M Logo" className="brand-image img-circle elevation-3"
                        />
                        <span className="brand-text font-weight-light">Averis Mohit</span>
                    </a>

                    <div className="sidebar">
                        <div className="user-panel mt-3 pb-3 mb-3 d-flex">
                            <div className="image">
                                <img src="Mohit.jpg" className="img-circle elevation-2" alt="User" />
                            </div>
                            <div className="info">
                                <a href="https://stackoverflow.com/users/3796048/mohit-shrivastava" className="d-block">
                                    {userdata.first_name}  {userdata.last_name}
                                </a>
                            </div>
                        </div>

                        <nav className="mt-2" style={{ height: 400 }}>
                            <ul className="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                                <li className="nav-item has-treeview menu-open">
                                    <span className="nav-link active">
                                        <FontAwesomeIcon icon={faTachometerAlt} />&nbsp;
                                        <p>Dashboard Options</p>
                                    </span>
                                    <ul className="nav nav-treeview">
                                        <li className="nav-item">
                                            <button className="nav-link btn btn-link btn-block" onClick={this.ShowDashboardv1}>
                                                <FontAwesomeIcon icon={faCircle} />&nbsp;
                                                <p>Dashboard v1</p>
                                            </button>
                                        </li>
                                        <li className="nav-item">
                                            <button className="nav-link btn btn-link btn-block" onClick={this.ShowDashboardv2}>
                                                <FontAwesomeIcon icon={faCircle} />&nbsp;
                                                <p>Dashboard v2</p>
                                            </button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </aside>
                {
                    this.state.showComponent
                        ?
                        <MainContent gender={this.props.gender} region={this.props.region} />
                        :
                        <AnotherContent gender={this.props.gender} region={this.props.region} />
                }
            </div>
        );
    }
}
