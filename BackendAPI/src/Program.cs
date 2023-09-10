using StackExchange.Redis;
using BackendAPI.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

var  AllowSpecificOrigins = "_AllowSpecificOrigins";
// Add services to the container.

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: AllowSpecificOrigins, policy => {
        policy.WithOrigins(Environment.GetEnvironmentVariable("ORIGIN_HOST"))
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Connect with SQL Server
var databaseHost = Environment.GetEnvironmentVariable("SQL_SERVER_DATABASE_HOST");
var databaseName = Environment.GetEnvironmentVariable("SQL_SERVER_DATABASE_NAME");
builder.Services.AddDbContext<BackendAPIContext>(options => options.UseSqlServer($"Server=${databaseHost};Database={databaseName};Trusted_Connection=True;"));

var app = builder.Build();

// Connect with Redis
var redisHost = Environment.GetEnvironmentVariable("REDIS_HOST");
var configuration = ConfigurationOptions.Parse($"{redisHost}:6379"); // "localhost:6379"
var redisConnection = ConnectionMultiplexer.Connect(configuration);
redisConnection.Close();

// var sqlServerConnection = New SqlConnection("Initial Catalog=Northwind;" & _"Data Source=localhost;Integrated Security=SSPI;")
// myCmd = myConn.CreateCommand
// myCmd.CommandText = "SELECT FirstName, LastName FROM Employees"
// myConn.Open()
// SqlConnection cnn;
// var connetionString = @"Data Source=WIN-50GP30FGO75;Initial Catalog=Demodb;User ID=sa;Password=demol23";
// cnn = new SqlConnection(connetionString);

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
} else { // Authorize for production
    // app.UseHttpsRedirection();
}

app.UseCors(AllowSpecificOrigins);

app.UseAuthorization();

app.MapControllers();

app.Run();
