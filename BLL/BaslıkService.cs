using Core;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BaslıkService
    {
        private readonly BaslıkDal baslıkDal;

        public BaslıkService()
        {
            baslıkDal = new BaslıkDal();
        }
        public Baslık GetHeader()
        {
            return baslıkDal.GetHeader();
        }
    }
}
