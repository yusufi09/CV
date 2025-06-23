using Core;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
	public class AboutService
	{
		private readonly AboutDal aboutDal;
		public AboutService()
		{
			aboutDal = new AboutDal();
		}
		public About GetAbout()
		{
			return aboutDal.GetAbout();
		}
	}
}
