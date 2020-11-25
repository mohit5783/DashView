import React from 'react';
import MainFooter from './MainFooter';
import Navigation from './Navigation';

import { withRouter } from 'react-router-dom';

function DashboardPage() {
    return (
        <div className="wrapper">
            <Navigation />
            <MainFooter />
        </div>
    );
}

export default withRouter(DashboardPage);