import React from 'react';
import ContentHeader from './ContentHeader';
import GraphAC from './GraphAC';

export default class AnotherContent extends React.Component {
    render() {
        return (
            <div className="content-wrapper">
                <ContentHeader HeaderName="Cost Dashboard" />
                <div className="content">
                    <div className="container-fluid">
                        <GraphAC gender={this.props.gender} region={this.props.region} />
                    </div>
                </div>
            </div>
        );
    }
}