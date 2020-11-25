import { faArrowUp } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React from 'react';
import { Line } from 'react-chartjs-2';

export default class GraphAC extends React.Component {
    state = {
        loading: true,
        dbGraphData: {},
        HeadCountData: {},
        SelCandData: {},
        AbsentismData: {},
        CostData: {},
        GrowthPercentage: 0,
        GrowthValue: 0,
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
                'token': localStorage.getItem('token'),
            },
        });
        const GraphData = await response.json();
        this.setState({ dbGraphData: GraphData })
        this.settingData();
        this.setState({ loading: false });
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
                    junior: a.junior,
                    mid: a.mid,
                    senior: a.senior,
                };
                result.push(this[a.Year]);
                this[a.Year].junior = 0;
                this[a.Year].mid = 0;
                this[a.Year].senior = 0;
            }
            this[a.Year].Year = a.Year;
            this[a.Year].junior += Number(a.junior);
            this[a.Year].mid += Number(a.mid);
            this[a.Year].senior += Number(a.senior);
        }, Object.create(null));

        const CostChart = {
            labels: result.reverse().map(item => item.Year),
            datasets: [{
                label: "Junior",
                data: result.map(item => item.junior),
                borderColor: 'blue',
                fill: false,
            },
            {
                label: "Mid-Level",
                data: result.map(item => item.mid),
                borderColor: 'green',
                fill: false,

            },
            {
                label: "Seniors",
                data: result.map(item => item.senior),
                borderColor: 'red',
                fill: false,
            }]
        };
        this.setState({ CostData: CostChart });
        this.getGrowth(this.state.CostData.datasets[0].data.slice(-2));
    };
    getGrowth(arrVals) {
        const gp = (((arrVals[1] / arrVals[0]) - 1) * 100).toFixed(2);
        const gv = (arrVals[1] - arrVals[0]).toLocaleString();

        this.setState({ GrowthPercentage: gp });
        this.setState({ GrowthValue: gv });
    }
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

            <div className="card">
                <div className="card-header border-0">
                    <div className="d-flex justify-content-between">
                        <h3 className="card-title">Cost Statistics</h3>
                    </div>
                </div>
                <div className="card-body">
                    <div className="d-flex">
                        <p className="d-flex flex-column">
                            <span className="text-bold text-lg">{this.state.GrowthValue}</span>
                            <span>Salary Growth from last year</span>
                        </p>
                        <p className="ml-auto d-flex flex-column text-right">
                            <span className="text-success"><FontAwesomeIcon icon={faArrowUp} /> {this.state.GrowthPercentage} </span>
                            <span className="text-muted">Since last year</span>
                        </p>
                    </div>
                    <div className="position-relative mb-4" style={styles.graphContainer}>
                        <Line data={this.state.CostData} options={options} />
                    </div>
                </div>
            </div>
        )

    }
}