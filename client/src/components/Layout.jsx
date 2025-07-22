import React from 'react';
import { NavLink, Outlet } from 'react-router-dom';
import './Layout.css';

const Layout = () => {
  return (
    <div className="layout">
      <nav className="sidebar">
        <h2 className="sidebar-title">Control Total</h2>
        <ul className="nav-list">
          <li><NavLink to="/" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Dashboard</NavLink></li>
          <li><NavLink to="/accounts" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Cuentas</NavLink></li>
          <li><NavLink to="/records" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Registros</NavLink></li>
          <li><NavLink to="/analytics" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Analytics</NavLink></li>
          <li><NavLink to="/calendar" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Calendario</NavLink></li>
          <li><NavLink to="/tasks" className={({ isActive }) => isActive ? 'nav-link active' : 'nav-link'}>Tareas</NavLink></li>
        </ul>
      </nav>
      <main className="main-content">
        <Outlet />
      </main>
    </div>
  );
};

export default Layout;
