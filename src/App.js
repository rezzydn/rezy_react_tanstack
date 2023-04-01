import './App.css';
import { createTable, createColumnHelper } from '@tanstack/react-table';
import axios from "axios";
import React, { useMemo, useState, useEffect } from "react";
import { useTable, usePagination } from "react-table";




  function App() {

    const columnHelper = createColumnHelper();
  
      const columns = useMemo(
        () => [
          {
            Header: 'User ID',
            accessor: 'user_id',
          },
          {
            Header: 'Name',
            accessor: 'full_name',
          },
          {
            Header: 'Email',
            accessor: 'email',
          },
          {
            Header: 'Date Published',
            accessor: 'published_at',
          },
        ],
        []
      );
  
    // data state to store the TV Maze API data. Its initial value is an empty array
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
  
    // Using useEffect to call the API once mounted and set the data
    useEffect(() => {
      setLoading(true);
      axios
        .get("http://localhost:1337/accounts")
        .then((response) => {
          setData(response.data);
          setLoading(false);
        })
        .catch((error) => {
          console.log(error);
          setLoading(false);
        });
    }, []);


    const tableInstance = useTable({ columns, data }, usePagination);

    const {
      getTableProps,
      getTableBodyProps,
      headerGroups,
      page,
      nextPage,
      previousPage,
      canPreviousPage,
      canNextPage,
      pageOptions,
      state: { pageIndex, pageSize }
    } = tableInstance;

    return (
      <div className="App">
        <createTable loading={loading} {...getTableProps()}>
          <thead>
            {headerGroups.map((headerGroup) => (
              <tr {...headerGroup.getHeaderGroupProps()}>
                {headerGroup.headers.map((column) => (
                  <th {...column.getHeaderProps()}>{column.render("Header")}</th>
                ))}
              </tr>
            ))}
          </thead>
          <tbody {...getTableBodyProps()}>
            {page.map((row) => {
              tableInstance.prepareRow(row);
              return (
                <tr {...row.getRowProps()}>
                  {row.cells.map((cell) => {
                    return <td {...cell.getCellProps()}>{cell.render("Cell")}</td>;
                  })}
                </tr>
              );
            })}
          </tbody>
        </createTable>
        <div className="pagination">
          <button onClick={() => previousPage()} disabled={!canPreviousPage}>
            Previous
          </button>
          <button onClick={() => nextPage()} disabled={!canNextPage}>
            Next
          </button>
          <div>
            Page{" "}
            <strong>
              {pageIndex + 1} of {pageOptions.length}
            </strong>{" "}
          </div>
        </div>
      </div>
    );
  }
  export default App;