﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SkolaSEntities1 : DbContext
    {
        public SkolaSEntities1()
            : base("name=SkolaSEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Ca> Cas { get; set; }
        public virtual DbSet<Dokument> Dokuments { get; set; }
        public virtual DbSet<Ispit> Ispits { get; set; }
        public virtual DbSet<Ispit_Odrzavanje> Ispit_Odrzavanje { get; set; }
        public virtual DbSet<Korisnik> Korisniks { get; set; }
        public virtual DbSet<Kur> Kurs { get; set; }
        public virtual DbSet<login> logins { get; set; }
        public virtual DbSet<Materijal> Materijals { get; set; }
        public virtual DbSet<prisustvuje> prisustvujes { get; set; }
        public virtual DbSet<Profesor> Profesors { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<Transakcija> Transakcijas { get; set; }
    }
}
