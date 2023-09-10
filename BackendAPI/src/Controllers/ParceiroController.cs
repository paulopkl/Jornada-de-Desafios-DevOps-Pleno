using Microsoft.AspNetCore.Mvc;

namespace BackendAPI.Controllers;

[ApiController]
[Route("/api/[controller]")]
public class ParceiroController : ControllerBase
{
    private readonly ILogger<WeatherForecastController> _logger;

    public ParceiroController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet(Name = "Get Parceiro")]
    public IActionResult  Get()
    {
        return Ok("Status 200 OK! Parceiro, healthy!");
    }
}
