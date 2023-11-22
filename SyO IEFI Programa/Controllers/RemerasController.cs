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
    public class RemerasController : Controller
    {
        private Tienda_De_RopaEntities db = new Tienda_De_RopaEntities();

        // GET: Remeras
        public ActionResult Index()
        {
            return View(db.Remeras.ToList());
        }

        // GET: Remeras/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Remera remera = db.Remeras.Find(id);
            if (remera == null)
            {
                return HttpNotFound();
            }
            return View(remera);
        }

        // GET: Remeras/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Remeras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_Remera,Marca,Talle,Modelo,Material,Color,Estilo")] Remera remera)
        {
            if (ModelState.IsValid)
            {
                db.Remeras.Add(remera);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(remera);
        }

        // GET: Remeras/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Remera remera = db.Remeras.Find(id);
            if (remera == null)
            {
                return HttpNotFound();
            }
            return View(remera);
        }

        // POST: Remeras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_Remera,Marca,Talle,Modelo,Material,Color,Estilo")] Remera remera)
        {
            if (ModelState.IsValid)
            {
                db.Entry(remera).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(remera);
        }

        // GET: Remeras/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Remera remera = db.Remeras.Find(id);
            if (remera == null)
            {
                return HttpNotFound();
            }
            return View(remera);
        }

        // POST: Remeras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Remera remera = db.Remeras.Find(id);
            db.Remeras.Remove(remera);
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
