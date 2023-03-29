import React, { useState, useEffect } from "react";
import TableComponent from "./TableComponent";

const App = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("http://localhost:1337/accounts");
      const json = await response.json();
      setData(json);
    };

    fetchData();
  }, []);

  return <TableComponent data={data} />;
};

export default App;
