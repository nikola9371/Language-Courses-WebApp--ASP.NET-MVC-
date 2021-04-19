﻿using System.Web;
using System.Web.Optimization;

namespace projekat
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));
            bundles.Add(new ScriptBundle("~/bundles/js").Include(
                      "~/App_Plugins/FontAwesomeIconsDD/assets/font-awesome/FontAwesomeIconsDD.controller.js"));
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css",
                      "~/App_Plugins/FontAwesomeIconsDD/assets/font-awesome/css/font-awesome.min.css"));
            bundles.Add(new StyleBundle("~/bundles/fonts").Include(
                "~/App_Plugins/FontAwesomeIconsDD/assets/font-awesome/fonts/fontawesome*",
                "~/App_Plugins/FontAwesomeIconsDD/assets/font-awesome/fonts/FontAwesome.otf"));
            bundles.Add(new ScriptBundle("~/bundles/datatables").Include(
                       "~/Scripts/DataTables/jquery.dataTables.min.js",
                       "~/Scripts/DataTables/dataTables.bootstrap.js"));
            bundles.Add(new StyleBundle("~/Content/datatables").Include(
                        "~/Content/DataTables/css/dataTables.bootstrap.css" ));
        }
    }
}
