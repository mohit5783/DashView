import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEnvelope, faLock } from '@fortawesome/free-solid-svg-icons';
import { withRouter } from 'react-router-dom';

class LoginPage extends React.Component {
    constructor(props) {
        super(props)
        this._isMounted = true;
    }

    componentDidMount() {
        this._isMounted = true;
    }
    componentWillUnmount() {
        this._isMounted = false;
    }
    state = {
        authToken: null,
    }

    handleSubmit = (e) => {
        e.preventDefault();
        (async () => {
            const rawResponse = await fetch(`http://localhost:49923/api/v1/auth/signin`, {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ "email": e.target.elements.email.value, "password": e.target.elements.pwd.value })
            });
            rawResponse.json().then(res => res).then(user => {
                if (this._isMounted)
                    this.setState({ authToken: user.data.token });
            });
        })();

        if (this.state.authToken) {
            localStorage.setItem('token', this.state.authToken);
            this.props.history.push("/DashboardPage")
        }
    }

    render() {

        return (
            <div className="container-fluid hold-transition login-page ">
                <div className="login-box">
                    <div className="login-logo">
                        <span><b>Averis</b>Mohit</span>
                    </div>

                    <div className="card">
                        <div className="card-body login-card-body">
                            <p className="login-box-msg">Sign in to start your session</p>

                            <form onSubmit={this.handleSubmit}>
                                <div className="input-group mb-3">
                                    <input type="email" id="email" name="email" className="form-control" placeholder="User Name" />
                                    <div className="input-group-append">
                                        <div className="input-group-text">
                                            <FontAwesomeIcon icon={faEnvelope} />
                                        </div>
                                    </div>
                                </div>
                                <div className="input-group mb-3">
                                    <input type="password" id="pwd" name="pwd" className="form-control" placeholder="Password" />
                                    <div className="input-group-append">
                                        <div className="input-group-text">
                                            <FontAwesomeIcon icon={faLock} />
                                        </div>
                                    </div>
                                </div>
                                <div className="row">
                                    <div className="col-8">
                                        <div className="icheck-primary">
                                            <input type="checkbox" id="remember" /> &nbsp;
                                            <label>Remember Me</label>
                                        </div>
                                    </div>
                                    <div className="col-4">
                                        <button type="submit" className="btn btn-primary btn-block">Sign In</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}
export default withRouter(LoginPage);