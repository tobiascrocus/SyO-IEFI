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
    public class BuzoesController : Controller
    {
        private Tienda_De_RopaEntities db = new Tienda_De_RopaEntities();

        // GET: Buzoes
        public ActionResult Index()
        {
            return View(db.Buzos.ToList());
        }

        // GET: Buzoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Buzo buzo = db.Buzos.Find(id);
            if (buzo == null)
            {
                return HttpNotFound();
            }
            return View(buzo);
        }

        // GET: Buzoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Buzoes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_Buzo,Marca,Talle,Modelo,Material,Color,Estilo")] Buzo buzo)
        {
            if (ModelState.IsValid)
            {
                db.Buzos.Add(buzo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(buzo);
        }

        // GET: Buzoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Buzo buzo = db.Buzos.Find(id);
            if (buzo == null)
            {
                return HttpNotFound();
            }
            return View(buzo);
        }

        // POST: Buzoes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_Buzo,Marca,Talle,Modelo,Material,Color,Estilo")] Buzo buzo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(buzo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(buzo);
        }

        // GET: Buzoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Buzo buzo = db.Buzos.Find(id);
            if (buzo == null)
            {
                return HttpNotFound();
            }
            return View(buzo);
        }

        // POST: Buzoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Buzo buzo = db.Buzos.Find(id);
            db.Buzos.Remove(buzo);
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
