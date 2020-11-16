import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faTachometerAlt } from '@fortawesome/free-solid-svg-icons'
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';
import MainContent from './MainContent';
export default class SideMenu extends React.Component {

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
        const GenderOptions = [
            'MALE', 'FEMALE', 'BOTH'
        ];
        const defaultGenderOption = GenderOptions[2];

        const RegionOptions = [
            'LOCAL', 'EXPATS', 'BOTH'
        ];
        const defaultRegionOption = RegionOptions[2];
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
                                <a href="https://stackoverflow.com/users/3796048/mohit-shrivastava" className="d-block">Mohit Shrivastava</a>
                            </div>
                        </div>

                        <nav className="mt-2" style={{ height: 400 }}>
                            <ul className="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                                <li className="nav-item has-treeview menu-open">
                                    <span className="nav-link active">
                                        <FontAwesomeIcon icon={faTachometerAlt} /> &nbsp;
                                <p>Dashboard Options</p>
                                    </span>
                                    <ul className="nav nav-treeview">
                                        <li className="nav-item">
                                            <span className="nav-link">Gender Options</span>
                                            <Dropdown onChange={this.genderChanged} options={GenderOptions} value={defaultGenderOption} />
                                        </li>
                                        <li className="nav-item">
                                            <span className="nav-link">Region Options</span>
                                            <Dropdown onChange={this.regionChanged} options={RegionOptions} value={defaultRegionOption} />
                                        </li>
                                        <li className="nav-item">
                                            <span className="nav-link"></span>
                                            <button type="button" onClick={this.handleApply} className="btn btn-primary btn-lg pull-right mr-1">Apply</button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </aside>
                <MainContent gender={this.state.genderOption} region={this.state.regionOption} />
            </div>
        );
    }
}
