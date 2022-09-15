import * as React from 'react'
import { useEffect, useState } from 'react'
import ReactDOM from 'react-dom'
import { StockSummary } from './models/StockSummary';

function App() {
  const [stock, setStock] = useState<StockSummary[] | null>(null);
  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch('/api/stock');
      setStock(await response.json() as StockSummary[]);
    };
    fetchData();
  }, []);
  return <>
    <h1>Stock list</h1>
    <ul>
      {stock && stock.map(item => <>
        <li>
          <strong>{item.name}</strong>: {item.quantity}
        </li>
      </>)}
    </ul>
  </>
}

ReactDOM.render(<App />, document.querySelector('#root'))