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
    
    public partial class Dokument
    {
        public int ID_Dok { get; set; }
        public string Ime { get; set; }
        public string DokumentAdresa { get; set; }
        public int KorisnikID_FK { get; set; }
    
        public virtual Korisnik Korisnik { get; set; }
    }
}
