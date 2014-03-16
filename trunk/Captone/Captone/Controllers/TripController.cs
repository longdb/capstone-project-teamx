﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using System.Web.Services;
using Captone.Models;
using Captone.Services;

namespace Captone.Controllers
{
    public class TripController : Controller
    {
        private iDeliverEntities db = new iDeliverEntities();

        #region CRUD
        //
        // GET: /Trip/

        public ActionResult Index()
        {
            var trips = db.Trips;
            return View(trips.ToList());
        }

        //
        // POST: /Trip/ListTrip

        public ActionResult ListTrip(DateTime tripDate)
        {
            var trips = db.Trips.Where(t => t.Date == tripDate);
            return View(trips.ToList());
        }

        //
        // GET: /Trip/Details/5

        public ActionResult Details(int id = 0)
        {
            Trip trip = db.Trips.Find(id);
            if (trip == null)
            {
                return HttpNotFound();
            }
            return View(trip);
        }

        //
        // GET: /Trip/Create

        public ActionResult Create()
        {
            string username = (string)Session["USERNAME"];
            string role = (string)Session["UserRole"];
            if (username != null && role == "Staff")
            {
                ViewBag.RouteID = new SelectList(db.Routes, "RouteID", "RouteName");
                return View();
            }
            else
            {
                return RedirectToAction("LogOn", "Account");
            }
        }

        //
        // POST: /Trip/Create

        [HttpPost]
        [WebMethod]
        public ActionResult Create(List<Trip> trips)
        {
            if (ModelState.IsValid)
            {
                if (trips != null)
                {
                    foreach (var trip in trips)
                    {
                        db.Trips.Add(trip);
                        db.SaveChanges();
                    }
                    return RedirectToAction("Index");
                }
            }
            return RedirectToAction("Index");
        }

        //
        // GET: /Trip/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Trip trip = db.Trips.Find(id);
            ViewBag.RouteID = new SelectList(db.Routes, "RouteID", "RouteName");
            ViewBag.CoachID = new SelectList(db.Coaches, "CoachID", "NumberPlate");
            if (trip == null)
            {
                return HttpNotFound();
            }
            return View(trip);
        }

        //
        // POST: /Trip/Edit/5

        [HttpPost]
        public ActionResult Edit(Trip trip)
        {
            ViewBag.RouteID = new SelectList(db.Routes, "RouteID", "RouteName");
            ViewBag.CoachID = new SelectList(db.Coaches, "CoachID", "NumberPlate");
            if (ModelState.IsValid)
            {
                db.Entry(trip).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(trip);
        }

        //
        // GET: /Trip/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Trip trip = db.Trips.Find(id);
            if (trip == null)
            {
                return HttpNotFound();
            }
            return View(trip);
        }

        //
        // POST: /Trip/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Trip trip = db.Trips.Find(id);
            db.Trips.Remove(trip);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        #endregion

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult ListTripForRequest()
        {
            var listTrip = db.Trips.ToList();
            return PartialView("ListTripForRequest", listTrip);
        }

        [HttpPost]
        [WebMethod]
        public void Assigning(List<Request> request)
        {
            AssigningService assign = new AssigningService();

            var result = assign.Assigning(request, DateTime.Now);
            foreach (var item in result)
            {
                for (var i = 0; i < item.Value.Count; i++)
                {
                    Assigning ass = new Assigning();
                    var requestId = item.Key.RequestID;
                    ass.RequestID = requestId;
                    var tripId = item.Value[i].TripID;
                    ass.TripID = tripId;
                    ass.IndicateOrder = i + 1;
                    var req = db.Requests.Where(p => p.RequestID == requestId).Single();
                    req.DeliveryStatusID = 3;
                    db.Assignings.Add(ass);
                    db.SaveChanges();
                }
            }
        }

        //Pass estimated time to real time of trip when depart/arrive
        [HttpPost]
        [WebMethod]
        public void TimePassing(List<Trip> trips)
        {
            if (trips != null)
            {
                foreach (var trip in trips)
                {
                    Trip t = db.Trips.Where(tr => tr.TripID == trip.TripID).FirstOrDefault();
                    t.RealDepartureTime = trip.EstimateDepartureTime;
                    t.RealArrivalTime = trip.EstimateArrivalTime;
                    db.Entry(t).State = EntityState.Modified;
                    db.SaveChanges();
                }
            }
        }
        
        //public void TimePassing(Trip trip)
        //{
        //    if (trip != null)
        //    {
        //        Trip t = db.Trips.Where(tr => tr.TripID == trip.TripID).FirstOrDefault();
        //        t.RealDepartureTime = trip.EstimateDepartureTime;
        //        t.RealArrivalTime = trip.EstimateArrivalTime;
        //        db.Entry(t).State = EntityState.Modified;
        //        db.SaveChanges();
        //    }
        //}
    }
}