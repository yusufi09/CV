using Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class BaslıkDal
    {
       private readonly DataContext context;

    public BaslıkDal()
    {
        context = new DataContext();
    }

    public Baslık GetHeader()
    {
        return context.Baslıks.FirstOrDefault();
     }
    }
}

