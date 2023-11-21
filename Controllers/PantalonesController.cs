using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Tienda_De_Ropa.Models;

namespace Tienda_De_Ropa.Controllers
{
    public class PantalonesController : Controller
    {
        private Tienda_De_RopaEntities db = new Tienda_De_RopaEntities();

        // GET: Pantalones
        public ActionResult Index()
        {
            return View(db.Pantalones.ToList());
        }

        // GET: Pantalones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantalone pantalone = db.Pantalones.Find(id);
            if (pantalone == null)
            {
                return HttpNotFound();
            }
            return View(pantalone);
        }

        // GET: Pantalones/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Pantalones/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_Pantalon,Marca,Talle,Modelo,Material,Color,Estilo")] Pantalone pantalone)
        {
            if (ModelState.IsValid)
            {
                db.Pantalones.Add(pantalone);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pantalone);
        }

        // GET: Pantalones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantalone pantalone = db.Pantalones.Find(id);
            if (pantalone == null)
            {
                return HttpNotFound();
            }
            return View(pantalone);
        }

        // POST: Pantalones/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_Pantalon,Marca,Talle,Modelo,Material,Color,Estilo")] Pantalone pantalone)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pantalone).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pantalone);
        }

        // GET: Pantalones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantalone pantalone = db.Pantalones.Find(id);
            if (pantalone == null)
            {
                return HttpNotFound();
            }
            return View(pantalone);
        }

        // POST: Pantalones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pantalone pantalone = db.Pantalones.Find(id);
            db.Pantalones.Remove(pantalone);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
