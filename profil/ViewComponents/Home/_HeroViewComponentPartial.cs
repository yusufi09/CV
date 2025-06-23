using BLL;
using Microsoft.AspNetCore.Mvc;

namespace WEBUI.ViewComponents.Home
{
    public class _HeroViewComponentPartial : ViewComponent
    {
        private readonly BaslıkService baslıkService;
        public _HeroViewComponentPartial()
        {
            baslıkService=new BaslıkService();
        }
        public IViewComponentResult Invoke()
        {
           var baslık= baslıkService.GetHeader();
            return View(baslık);
        }
    }
}
