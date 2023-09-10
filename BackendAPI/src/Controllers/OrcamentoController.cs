using Microsoft.AspNetCore.Mvc;

namespace BackendAPI.Controllers;

[ApiController]
[Route("/api/[controller]")]
public class OrcamentoController : ControllerBase
{
    private readonly ILogger<WeatherForecastController> _logger;

    public OrcamentoController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet(Name = "Get Orçamento")]
    public IActionResult  Get()
    {
        return Ok("Status 200 OK! Orçamento, healthy!");
    }
}
