using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using stockman_api.Models;
using System.Collections.Generic;

namespace stockman_api
{
  public static class GetAllStock
  {
    [FunctionName("GetAllStock")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", Route = "stock")] HttpRequest req,
        ILogger log)
    {
      log.LogInformation("Fetching all stock");
      // mimic an async DB request
      var response = await Task.FromResult(new List<StockSummary> {
        new StockSummary(Guid.NewGuid(), "Sandals", 15),
        new StockSummary(Guid.NewGuid(), "Socks", 12),
        new StockSummary(Guid.NewGuid(), "Crocs", 194)
      });

      return new OkObjectResult(response);
    }
  }
}
