import React from 'react';
import { Line, Bar, Pie } from 'react-chartjs-2';

export default class Graph extends React.Component {
    state = {
        loading: true,
        dbGraphData: {},
        HeadCountData: {},
        SelCandData: {},
        AbsentismData:{},
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
        const url = "http://localhost:49923/api/v1/GraphData"
        const response = await fetch(url, {
            method: 'GET',
            headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                'token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1vaGl0NTc4M0BnbWFpbC5jb20iLCJ1c2VyX2lkIjoxLCJsYXN0X25hbWUiOiJNb2hpdCIsImlhdCI6MTYwNTI4OTkxNCwiZXhwIjoxNjA1NTQ5MTE0fQ.pnw9cqMc6JCiXE7FonY-F8VWYA224xb2hb9e9IkT5-g',
            },
        });
        const GraphData = await response.json();
        this.setState({ dbGraphData: GraphData })
        this.settingData();
    };

    settingData() {
        var fullData = ({ ...this.state.dbGraphData.data });
        fullData = Object.values(fullData);
        if (this.props.gender !== "BOTH") {
            if (this.props.gender === "MALE")
                fullData = fullData.filter(item => item.Gender === "M");
            else
                fullData = fullData.filter(item => item.Gender === "F");
        }
        if (this.props.region !== "BOTH") {
            if (this.props.region === "LOCAL")
                fullData = fullData.filter(item => item.Region === "L");
            else
                fullData = fullData.filter(item => item.Region === "E");
        }

        const result = [];

        fullData.forEach(function (a) {
            if (!this[a.Year]) {
                this[a.Year] = { 
                                    HeadCount: a.HeadCount, 
                                    Year: a.Year, 
                                    Joiners: a.Joiners, 
                                    Leavers: a.Leavers,
                                    InterviewsTaken: a.InterviewsTaken,
                                    SelectedCandidates: a.SelectedCandidates,
                                };
                result.push(this[a.Year]);
                this[a.Year].HeadCount = 0;
                this[a.Year].Joiners = 0;
                this[a.Year].Leavers = 0;
                this[a.Year].InterviewsTaken = 0;
                this[a.Year].SelectedCandidates = 0;
                this[a.Year].sick = 0;
                this[a.Year].emergency = 0;
                this[a.Year].casual = 0;
                this[a.Year].unknown = 0;
            }
            this[a.Year].Year = a.Year;
            this[a.Year].HeadCount += a.HeadCount;
            this[a.Year].Joiners += a.Joiners;
            this[a.Year].Leavers += a.Leavers;
            this[a.Year].InterviewsTaken += a.InterviewsTaken;
            this[a.Year].SelectedCandidates += a.SelectedCandidates;
            this[a.Year].sick += a.sick;
            this[a.Year].emergency += a.emergency;
            this[a.Year].casual += a.casual;
            this[a.Year].unknown += a.unknown;
        }, Object.create(null));

        const HCChart = {
            labels: result.reverse().map(item => item.Year),
            datasets: [{
                label: "Head Count",
                data: result.map(item => item.HeadCount),
                borderColor: 'gray',
                fill: false,
            },
            {
                label: "Joiners",
                data: result.map(item => item.Joiners),
                borderColor: 'green',
                fill: false,

            },
            {
                label: "Leavers",
                data: result.map(item => item.Leavers),
                borderColor: 'red',
                fill: false,
            }]
        };

        const SelCanChart = {
            labels: result.map(item => item.Year),
            datasets: [{
                label: "Interviews Taken",
                data: result.map(item => item.InterviewsTaken),
                borderColor: 'gray',
                backgroundColor:'pink',
                fill: false,
            },
            {
                label: "Selected Candidates",
                data: result.map(item => item.SelectedCandidates),
                borderColor: 'green',
                backgroundColor:'rgba(0, 0, 0, 0.6)',
                fill: false,

            },]
        };

        const AbsentismChart = {
            labels: result.map(item => item.Year),
            datasets: [{
                label: "Sick",
                data: result.map(item => item.sick),
                borderColor: 'gray',
                backgroundColor: 'red',
                hoverBackgroundColor: 'pink',
                fill: true,
            },
            {
                label: "Emergency",
                data: result.map(item => item.emergency),
                borderColor: 'gray',
                backgroundColor: 'green',
                hoverBackgroundColor: 'yellow',
                fill: false,

            },
            {
                label: "Casual",
                data: result.map(item => item.casual),
                borderColor: 'gray',
                backgroundColor: 'orange',
                hoverBackgroundColor: 'white',
                fill: false,

            },
            {
                label: "Unknown",
                data: result.map(item => item.unknown),
                borderColor: 'gray',
                backgroundColor: 'blue',
                hoverBackgroundColor: 'black',
                fill: false,

            },
        ]
        };

        this.setState({ AbsentismData: AbsentismChart });
        this.setState({ SelCandData: SelCanChart });
        this.setState({ HeadCountData: HCChart });
    };

    render() {
        const options = {
            scaleShowGridLines: true,
            scaleGridLineColor: 'rgba(0,0,0,.05)',
            scaleGridLineWidth: 1,
            scaleShowHorizontalLines: true,
            scaleShowVerticalLines: true,
            bezierCurve: true,
            bezierCurveTension: 0.4,
            pointDot: true,
            pointDotRadius: 4,
            pointDotStrokeWidth: 1,
            pointHitDetectionRadius: 20,
            datasetStroke: true,
            datasetStrokeWidth: 2,
            datasetFill: true,

        }

        const styles = {
            graphContainer: {
                border: '1px solid black',
                padding: '15px'
            }
        }
        return (
            <div className="row">
                <div className="col-4">
                    <div className="card">
                        <div className="card-header border-0">
                            <div className="d-flex justify-content-between">
                                <h3 className="card-title">Head Count Statistics</h3>
                            </div>
                        </div>
                        <div className="card-body">
                            <div className="position-relative mb-4" style={styles.graphContainer}>
                                <Line data={this.state.HeadCountData} options={options} height={300} />
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-4">
                    <div className="card">
                        <div className="card-header border-0">
                            <div className="d-flex justify-content-between">
                                <h3 className="card-title">Selected Candidates Statistics</h3>
                            </div>
                        </div>
                        <div className="card-body">
                            <div className="position-relative mb-4" style={styles.graphContainer}>
                                <Bar data={this.state.SelCandData} options={options} height={300}  />
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-4">
                    <div className="card">
                        <div className="card-header border-0">
                            <div className="d-flex justify-content-between">
                                <h3 className="card-title">Absentism Statistics</h3>
                            </div>
                        </div>
                        <div className="card-body">
                            <div className="position-relative mb-4" style={styles.graphContainer}>
                                <Pie data={this.state.AbsentismData} options={options} height={300}  />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )

    }
}