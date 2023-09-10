using Microsoft.EntityFrameworkCore;

namespace BackendAPI.Data
{
    public class BackendAPIContext : DbContext
    {
        public BackendAPIContext(DbContextOptions<BackendAPIContext> options) : base(options)
        {
            
        }
    }
}