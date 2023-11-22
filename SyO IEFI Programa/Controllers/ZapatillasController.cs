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
    public class ZapatillasController : Controller
    {
        private Tienda_De_RopaEntities db = new Tienda_De_RopaEntities();

        // GET: Zapatillas
        public ActionResult Index()
        {
            return View(db.Zapatillas.ToList());
        }

        // GET: Zapatillas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zapatilla zapatilla = db.Zapatillas.Find(id);
            if (zapatilla == null)
            {
                return HttpNotFound();
            }
            return View(zapatilla);
        }

        // GET: Zapatillas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Zapatillas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_Zapatilla,Marca,Talle,Modelo,Material,Color,Estilo")] Zapatilla zapatilla)
        {
            if (ModelState.IsValid)
            {
                db.Zapatillas.Add(zapatilla);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(zapatilla);
        }

        // GET: Zapatillas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zapatilla zapatilla = db.Zapatillas.Find(id);
            if (zapatilla == null)
            {
                return HttpNotFound();
            }
            return View(zapatilla);
        }

        // POST: Zapatillas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_Zapatilla,Marca,Talle,Modelo,Material,Color,Estilo")] Zapatilla zapatilla)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zapatilla).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zapatilla);
        }

        // GET: Zapatillas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zapatilla zapatilla = db.Zapatillas.Find(id);
            if (zapatilla == null)
            {
                return HttpNotFound();
            }
            return View(zapatilla);
        }

        // POST: Zapatillas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Zapatilla zapatilla = db.Zapatillas.Find(id);
            db.Zapatillas.Remove(zapatilla);
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
