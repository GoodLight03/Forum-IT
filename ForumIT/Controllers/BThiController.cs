using ForumIT.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore;
using System.Data;

namespace ForumIT.Controllers
{
    public class BThiController : Controller
    {
        public IActionResult Index(string filter)
        {
           
            ForumITContext db = new ForumITContext();
            if (filter != null)
            {
                List<TblLoaiDd> ld= db.TblLoaiDds.Where(x=>x.TenLoaiDd.Contains(filter)).ToList();
                //TblLoaiDd ld=db.TblLoaiDds.Find(filter);
                List<TblBaiViet> bvk = new List<TblBaiViet>();
                foreach(TblLoaiDd ldl in ld)
                {
                    foreach(TblBaiViet bvc in db.TblBaiViets.ToList())
                    {
                        if (ldl.IdLoaiDd == bvc.IdLdd)
                        {
                            bvk.Add(bvc);
                        }
                    }
                }

                //List<TblBaiViet> bvk = db.TblBaiViets.Where(x=>x.IdLdd==idLoai).ToList();
                return View(bvk);

            }
            else
            {
               // return NotFound();
            }
            
            List<TblBaiViet> bv=db.TblBaiViets.ToList();
            return View(bv);
        }
        [Authorize(Roles = "admin")]
        public IActionResult Disable(int idd)
        {
            int x = idd;
            ForumITContext db = new ForumITContext();
            var baiViet = db.TblBaiViets.Find(idd);

            if (baiViet == null)
            {
                return NotFound(); // Xử lý khi không tìm thấy bài viết
            }
           
            TblDisable dv = new TblDisable();
            dv.FkT2 = baiViet.IdBaiViet;
            dv.Disable = true;
            dv.LongTime = DateTime.Now;

            db.TblDisables.Add(dv);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
