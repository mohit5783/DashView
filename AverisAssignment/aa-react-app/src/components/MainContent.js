import React from 'react';
import Candidates from './Candidates';
import ContentHeader from './ContentHeader';
import Graph from './Graph';

export default class MainContent extends React.Component {
    render() {
        return (
            <div className="content-wrapper">
                <ContentHeader HeaderName="HR Dashboard" />
                <div className="content">
                    <div className="container-fluid">
                        <Graph gender={this.props.gender} region={this.props.region} />
                        <Candidates gender={this.props.gender} region={this.props.region} />
                    </div>
                </div>
            </div>
        );
    }
}