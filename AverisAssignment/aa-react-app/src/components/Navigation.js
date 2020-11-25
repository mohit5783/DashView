import React from 'react';
import SideMenu from './SideMenu';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBars, faPowerOff } from '@fortawesome/free-solid-svg-icons';
import { withRouter } from 'react-router-dom';
import jwt_decode from "jwt-decode";
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';
import './Navigation.css';

class Navigation extends React.Component {
    handleLogout = (e) => {
        e.preventDefault();
        this.props.history.push("/LoginPage");
    }
    state = {
        genderOption: "BOTH",
        regionOption: "BOTH",
        tempGender: null,
        tempRegion: null,
    };
    handleApply = () => {
        this.setState({
            genderOption: this.state.tempGender,
            regionOption: this.state.tempRegion,
        });
    }

    genderChanged = (selVal) => {
        this.setState({
            tempGender: selVal.value,
        });
    }

    regionChanged = (selVal) => {
        this.setState({
            tempRegion: selVal.value,
        });
    }
    render() {
        const userdata = jwt_decode(localStorage.getItem('token'));
        const GenderOptions = [
            'BOTH', 'MALE', 'FEMALE', 
        ];
        //const defaultGenderOption = GenderOptions[2];

        const RegionOptions = [
            'BOTH', 'LOCAL', 'EXPATS',
        ];
        //const defaultRegionOption = RegionOptions[2];
        return (
            <div>
            <nav className="main-header navbar navbar-expand navbar-white navbar-light">
                <ul className="navbar-nav">
                    <li className="nav-item">
                        <button className="btn btn-link nav-link" data-widget="pushmenu"><FontAwesomeIcon icon={faBars} /> </button>
                    </li>

                </ul>
                <div className="input-group text-center mx-2 p-2 ">
                    <div className="form-control form-control-navbar">
                        <Dropdown onChange={this.genderChanged} options={GenderOptions} placeholder="Filter with Gender" />
                    </div>
                    <div className="form-control form-control-navbar">
                        <Dropdown onChange={this.regionChanged} options={RegionOptions} placeholder="Filter with Region" />
                    </div>
                    <div className="form-control form-control-navbar">
                        <button type="button" onClick={this.handleApply} className="btn btn-block btn-primary">Apply</button>
                    </div>
                </div>
                <ul className="navbar-nav ml-auto align-items-center logout">
                    <li>
                        <small className="d-inline-block text-muted ">
                            <b>Welcome,</b>
                            <br/>
                            {userdata.first_name} {userdata.last_name}
                        </small>
                    </li>
                    <li>&nbsp;</li>
                    <li>
                        <button onClick={this.handleLogout} className="btn btn-danger border-0" title="Logout" >
                            <FontAwesomeIcon icon={faPowerOff} />
                        </button>
                    </li>
                </ul>
            </nav>
            <SideMenu gender={this.state.genderOption} region={this.state.regionOption} />
            </div>
        );
    }
}

export default withRouter(Navigation);