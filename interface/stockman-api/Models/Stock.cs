using System;

namespace stockman_api.Models;

public record StockSummary(
  Guid Id,
  string Name,
  int Quantity
);