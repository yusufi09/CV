using Core;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class HeaderDal
    {
        private readonly DataContext context;

        public HeaderDal()
        {
            context = new DataContext();
        }

        public Header GetHeader()
        {
            return context.Headers.Include(h => h.SocialMedias).FirstOrDefault();
        }
    }
}
