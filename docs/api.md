# Stock Management API

## Endpoints

- Get stock list
- Get stock item details
- Add stock item
- Update stock item details and quantity
 
## Data Model

### Stock summary

```json
[{
  "id": "string",
  "name": "string",
  "quantity": 0,
}]
```


### Stock detail

```json
{
  "id": "string",
  "name": "string",
  "quantity": 0,
  "sku": "string",
  "description": "string"
}
```