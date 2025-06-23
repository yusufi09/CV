using Core;
using Microsoft.EntityFrameworkCore;

namespace DAL
{
    public class DataContext:DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=LAPTOP-FJ16G18N;Database=CvDatabase;Integrated Security=true;TrustServerCertificate=true");
        }
        public DbSet<Header> Headers { get; set; }
        public DbSet<SocialMedia> SocialMedias { get; set; }
        public DbSet<Baslık> Baslıks { get; set; }
        public DbSet<About> Abouts { get; set; }
    }

   
}
