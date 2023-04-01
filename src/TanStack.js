import { useTable, useSortBy } from 'react-table';
import { Table, Td, Th } from '@tanstack/react-table';

import { useState, useEffect } from 'react';

function App() {
  const [data, setData] = useState([]);
  const columns = [
    {
      Header: 'Name',
      accessor: 'name'
    },
    {
      Header: 'Age',
      accessor: 'age'
    },
    {
      Header: 'Email',
      accessor: 'email'
    }
  ];
  const { getTableProps, getTableBodyProps, headerGroups, rows, prepareRow } = useTable({
    columns,
    data
  }, useSortBy);
    return (
      <Table {...getTableProps()}>
        <thead>
          {headerGroups.map(headerGroup => (
            <tr {...headerGroup.getHeaderGroupProps()}>
              {headerGroup.headers.map(column => (
                <Th {...column.getHeaderProps(column.getSortByToggleProps())}>
                  {column.render('Header')}
                  <span>{column.isSorted ? (column.isSortedDesc ? ' 🔽' : ' 🔼') : ''}</span>
                </Th>
              ))}
            </tr>
          ))}
        </thead>
        <tbody {...getTableBodyProps()}>
          {rows.map(row => {
            prepareRow(row);
            return (
              <tr {...row.getRowProps()}>
                {row.cells.map(cell => (
                  <Td {...cell.getCellProps()}>
                    {cell.render('Cell')}
                  </Td>
                ))}
              </tr>
            );
          })}
        </tbody>
      </Table>
    );
  }
  
  export default App;