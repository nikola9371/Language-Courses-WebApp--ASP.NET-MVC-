//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace projekat.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Admin
    {
        public int AdminID { get; set; }
        public Nullable<int> Id_Korisnik_FK { get; set; }
        public string Jezici { get; set; }
    
        public virtual Korisnik Korisnik { get; set; }
    }
}
