using Core;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class HeaderService
    {
        private readonly HeaderDal headerDal;

        public HeaderService()
        {
            headerDal=new HeaderDal();
        }
        public Header GetHeader()
        {
            return headerDal.GetHeader();
        }
    }
}
