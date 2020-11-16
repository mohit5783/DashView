import React from 'react';
import DataTable from 'react-data-table-component';

export default class Candidates extends React.Component {
    state = {
        loading: true,
        dbData: [],
        FilteredData: [],
        ColsName: [],
        genderOption: this.props.gender,
        regionOption: this.props.region,
    };

    componentDidUpdate(prevProps) {
        if (prevProps.gender !== this.props.gender) {
            this.settingData();
        }
        if (prevProps.region !== this.props.region) {
            this.settingData();
        }
    }

    async componentDidMount() {
        const url = "http://localhost:49923/api/v1/Candidates"
        const response = await fetch(url, {
            method: 'GET',
            headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                'token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1vaGl0NTc4M0BnbWFpbC5jb20iLCJ1c2VyX2lkIjoxLCJsYXN0X25hbWUiOiJNb2hpdCIsImlhdCI6MTYwNTI4OTkxNCwiZXhwIjoxNjA1NTQ5MTE0fQ.pnw9cqMc6JCiXE7FonY-F8VWYA224xb2hb9e9IkT5-g',
            },
        });
        const tblData = await response.json();
        const tblCols = [
            {
                name: 'Name',
                selector: 'Name',
                sortable: true,
            },
            {
                name: 'Email',
                selector: 'email',
                sortable: true,
            },
            {
                name: 'Contact Number',
                selector: 'phone',
                sortable: true,
            },
            {
                name: 'Working for',
                selector: 'client',
                sortable: true,
            },
        ];
        this.setState({ dbData: tblData.data, ColsName: tblCols });
        this.settingData();
    };

    settingData() {
        let fullData = this.state.dbData;
        if (this.props.gender !== "BOTH") {
            if (this.props.gender === "MALE")
                fullData=fullData.filter(item => item.gender === "M");
            else
                fullData=fullData.filter(item => item.gender === "F");
        }
        if (this.props.region !== "BOTH") {
            if (this.props.region === "LOCAL")
                fullData=fullData.filter(item => item.region === "L");
            else
                fullData=fullData.filter(item => item.region === "E");
        }
        this.setState({ FilteredData: fullData });        
    };

    render() {
        return (
            <div className="row">
            <div className="col-12">
            <div className="card">
                <div className="card-header border-0">
                    <div className="d-flex justify-content-between">
                        <h3 className="card-title">Candidates List</h3>
                    </div>
                </div>
                <div className="card-body">
                    <DataTable
                        title="Newly Joined Candidates"
                        data={this.state.FilteredData}
                        columns={this.state.ColsName}
                        responsive={true}
                        pagination={true}
                    />
                </div>
                <div className="card-footer text-muted text-center" onClick={this.updateTblData}>
                    The table data will be updated when the filters are applied
                </div>
            </div>
            </div>
            </div>
        )
    }
}