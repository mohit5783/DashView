//import logo from './logo.svg';
import './App.css';
import LoginPage from './components/LoginPage';
import { BrowserRouter, Route, Switch } from "react-router-dom";
import DashboardPage from './components/DashboardPage';

function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route path="/DashboardPage" exact component={DashboardPage} />
        <Route path="/" component={LoginPage} />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
