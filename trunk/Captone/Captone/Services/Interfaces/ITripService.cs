﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Captone.Models;

namespace Captone.Services.Interfaces
{
    public interface ITripService
    {
        List<Trip> GetAllTrips();
    }
}