using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.Mvc;
using System.Drawing;
using System.IO;
using System.Web.UI;
using System.Text;
using OfficeOpenXml.Drawing;      ///Reference EPPLUS
using OfficeOpenXml;
using OfficeOpenXml.Style;
using System.Diagnostics;
using System.Security.Policy;  ///Reference EPPLUS



namespace Test.Utility
{
    public class Excelimport
    {
        public sealed class ExcelFileResult : FileResult
        {
            private DataTable dt;
            private TableStyle tableStyle;
            private TableItemStyle headerStyle;
            private TableItemStyle itemStyle;
            //private ExcelPackage EXPackage;


            /// <summary>
            ///Z.Bsp. "Export date: {0}" (default initialization) - if empty string, export date
            /// not specified.
            /// </summary>
            public string TitleExportDate { get; set; }
            /// <summary>
            /// Title of the export is displayed in the upper left sheet
            /// </summary>
            public string Title { get; set; }

            ///<summary>
            ///Footer of the Export Excel
            ///</summary>
            public string Footer { get; set; }


            /// <summary>
            /// Konstruktor
            /// </summary>
            /// <param name="dt">To export DataTable</param>
            public ExcelFileResult(DataTable dt)
                : this(dt, null, null, null)
            { }

            /// <summary>
            /// constructor
            /// </summary>
            /// <param name="dt">To export DataTable</param>
            /// <param name="tableStyle">Styling for entire table</param>
            /// <param name="headerStyle">Styling for header</param>
            /// <param name="itemStyle">Styling for the individual cells</param>
            public ExcelFileResult(DataTable dt, TableStyle tableStyle, TableItemStyle headerStyle, TableItemStyle itemStyle)
                : base("application/ms-excel")
            {
                this.dt = dt;
                Title = "Commercial Report ";
                Footer = "Powered By: Hasib, IT Department";
                TitleExportDate = "Export Date: {0}";
                this.tableStyle = tableStyle;
                this.headerStyle = headerStyle;
                this.itemStyle = itemStyle;
                ExcelPackage EXPackage = new ExcelPackage();


                // provide defaults
                if (this.tableStyle == null)
                {
                    this.tableStyle = new TableStyle();
                    this.tableStyle.BorderStyle = BorderStyle.Solid;
                    this.tableStyle.BorderColor = Color.Black;
                    this.tableStyle.BorderWidth = Unit.Parse("2px");
                    //this.tableStyle.BackColor = Color.LightGray;
                    this.tableStyle.BackColor = Color.Azure;
                    //this.tableStyle.BackImageUrl = Path.GetFullPath("D:/HOP/BOK.jpg");
                    EXPackage.Workbook.Properties.Author = "Hasib";
                    //exPackage.Workbook.Properties.Comments = "HopLunIT";
                    //exPackage.Workbook.Properties.Title = "HopLun (Bangladesh) Ltd. Reports";                    
                }
                if (this.headerStyle == null)
                {
                    this.headerStyle = new TableItemStyle();
                    this.headerStyle.BackColor = Color.LightGray;
                }
            }

            private int Pixel2MTU(int p)
            {
                throw new NotImplementedException();
            }


            protected override void WriteFile(HttpResponseBase response)
            {
                // Create HtmlTextWriter
                StringWriter sw = new StringWriter();
                HtmlTextWriter tw = new HtmlTextWriter(sw);

                // Build HTML Table from Items
                if (tableStyle != null)
                    tableStyle.AddAttributesToRender(tw);
                tw.RenderBeginTag(HtmlTextWriterTag.Table);

                // Create Title Row
                tw.RenderBeginTag(HtmlTextWriterTag.Tr);
                tw.AddAttribute(HtmlTextWriterAttribute.Colspan, (dt.Columns.Count - 2).ToString());
                tw.RenderBeginTag(HtmlTextWriterTag.Td);
                tw.Write(Title);
                tw.RenderEndTag();
                tw.AddAttribute(HtmlTextWriterAttribute.Colspan, "2");
                tw.RenderBeginTag(HtmlTextWriterTag.Td);
                if (TitleExportDate != string.Empty)
                    tw.WriteLineNoTabs(string.Format(TitleExportDate, DateTime.Now.ToString("dd.MM.yyyy")));
                tw.RenderEndTag();



                // Create Header Row
                tw.RenderBeginTag(HtmlTextWriterTag.Tr);
                DataColumn col = null;
                for (Int32 i = 0; i <= dt.Columns.Count - 1; i++)
                {
                    col = dt.Columns[i];
                    if (headerStyle != null)
                        headerStyle.AddAttributesToRender(tw);
                    tw.RenderBeginTag(HtmlTextWriterTag.Th);
                    tw.RenderBeginTag(HtmlTextWriterTag.Strong);
                    tw.WriteLineNoTabs(col.ColumnName);
                    tw.RenderEndTag();
                    tw.RenderEndTag();
                }
                tw.RenderEndTag();


                // Create Data Rows
                foreach (DataRow row in dt.Rows)
                {
                    tw.RenderBeginTag(HtmlTextWriterTag.Tr);
                    for (Int32 i = 0; i <= dt.Columns.Count - 1; i++)
                    {
                        if (itemStyle != null)
                            itemStyle.AddAttributesToRender(tw);
                        tw.RenderBeginTag(HtmlTextWriterTag.Td);
                        tw.WriteLineNoTabs(HttpUtility.HtmlEncode(row[i]));
                        tw.RenderEndTag();
                    }
                    tw.RenderEndTag(); //  /tr
                }
                tw.RenderEndTag(); //  /table


                ///<summary>
                ///The Footer Parts of the Excel Reports
                ///<!summary>
                tw.RenderBeginTag(HtmlTextWriterTag.Tr);
                tw.AddAttribute(HtmlTextWriterAttribute.Colspan, (dt.Columns.Count - 2).ToString());
                tw.RenderBeginTag(HtmlTextWriterTag.Td);
                //tw.WriteLineNoTabs(Footer);
                tw.RenderEndTag();
                tw.AddAttribute(HtmlTextWriterAttribute.Colspan, "2");
                tw.RenderBeginTag(HtmlTextWriterTag.Td);
                if (TitleExportDate != string.Empty)
                    tw.WriteLineNoTabs(Footer);
                tw.RenderEndTag();



                // Write result to output-stream
                Stream outputStream = response.OutputStream;
                byte[] byteArray = Encoding.Default.GetBytes(sw.ToString());
                response.OutputStream.Write(byteArray, 0, byteArray.GetLength(0));
            }

            /// <summary>
            /// Excel Files Export.
            /// </summary>
            /// <param name="dt"></param>

            //private void ExportExcel(DataTable dt)
            //{
            //    using (ExcelPackage pck = new ExcelPackage())
            //    {
            //        //Create the worksheet
            //        ExcelWorksheet ws = pck.Workbook.Worksheets.Add("SearchReport");

            //        //Load the datatable into the sheet, starting from cell A1. Print the column names on row 1
            //        ws.Cells["A1"].LoadFromDataTable(dt, true);

            //        //prepare the range for the column headers
            //        string cellRange = "A1:" + Convert.ToChar('A' + dt.Columns.Count - 1) + 1;

            //        //Format the header for columns
            //        using (ExcelRange rng = ws.Cells[cellRange])
            //        {
            //            rng.Style.WrapText = false;
            //            rng.Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;
            //            rng.Style.Font.Bold = true;
            //            rng.Style.Fill.PatternType = ExcelFillStyle.Solid; //Set Pattern for the background to Solid
            //            rng.Style.Fill.BackgroundColor.SetColor(Color.Gray);
            //            rng.Style.Font.Color.SetColor(Color.White);
            //        }

            //        //prepare the range for the rows
            //        string rowsCellRange = "A2:" + Convert.ToChar('A' + dt.Columns.Count - 1) + dt.Rows.Count * dt.Columns.Count;

            //        //Format the rows
            //        using (ExcelRange rng = ws.Cells[rowsCellRange])
            //        {
            //            rng.Style.WrapText = false;
            //            rng.Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;
            //        }

            //        //Read the Excel file in a byte array
            //        Byte[] fileBytes = pck.GetAsByteArray();

            //        //Clear the response
            //        Response.Clear();
            //        Response.ClearContent();
            //        Response.ClearHeaders();
            //        Response.Cookies.Clear();

            //        //Add the header & other information
            //        Response.Cache.SetCacheability(HttpCacheability.Private);
            //        Response.CacheControl = "private";
            //        Response.Charset = System.Text.UTF8Encoding.UTF8.WebName;
            //        Response.ContentEncoding = System.Text.UTF8Encoding.UTF8;
            //        Response.AppendHeader("Content-Length", fileBytes.Length.ToString());
            //        Response.AppendHeader("Pragma", "cache");
            //        Response.AppendHeader("Expires", "60");
            //        Response.AppendHeader("Content-Disposition",
            //        "attachment; " +
            //        "filename=\"ExcelReport.xlsx\"; " +
            //        "size=" + fileBytes.Length.ToString() + "; " +
            //        "creation-date=" + DateTime.Now.ToString("R") + "; " +
            //        "modification-date=" + DateTime.Now.ToString("R") + "; " +
            //        "read-date=" + DateTime.Now.ToString("R"));
            //        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

            //        //Write it back to the client
            //        Response.BinaryWrite(fileBytes);
            //        Response.End();
            //    }
            //}

           


        }




        /// <summary>
        /// For Creating Excel Sheet.
        /// </summary>
        /// <param name="p"></param>
        /// <param name="sheetName"></param>
        /// <returns></returns>

        public static ExcelWorksheet CreateSheet(ExcelPackage p, string sheetName)
        {
            p.Workbook.Worksheets.Add(sheetName);
            ExcelWorksheet ws = p.Workbook.Worksheets[1];
            ws.Name = sheetName; //Setting Sheet's name
            ws.Cells.Style.Font.Size = 11; //Default font size for whole sheet
            ws.Cells.Style.Font.Name = "Calibri"; //Default Font name for whole sheet

            return ws;
        }
        /// <summary>
        /// Sets the workbook properties and adds a default sheet.
        /// </summary>
        /// <param name="p">The p.</param>
        /// <returns></returns>
        public static void SetWorkbookProperties(ExcelPackage p)
        {
            //Here setting some document properties
            p.Workbook.Properties.Author = "Md. Hasib";
            p.Workbook.Properties.Title = "Excel Reports";


        }
        public static void CreateHeader(ExcelWorksheet ws, ref int rowIndex, DataTable dt)
        {
            int colIndex = 1;
            foreach (DataColumn dc in dt.Columns) //Creating Headings
            {
                var cell = ws.Cells[rowIndex, colIndex];

                //Setting the background color of header cells to Gray
                var fill = cell.Style.Fill;
                fill.PatternType = ExcelFillStyle.Solid;
                fill.BackgroundColor.SetColor(Color.Gray);

                //Setting Top/left,right/bottom borders.
                var border = cell.Style.Border;
                border.Bottom.Style = border.Top.Style = border.Left.Style = border.Right.Style = ExcelBorderStyle.Thin;

                //Setting Value in cell For the Heading.
                //cell.Value = "Heading " + dc.ColumnName;
                cell.Value = dc.ColumnName;

                colIndex++;
            }
        }
        public static void CreateData(ExcelWorksheet ws, ref int rowIndex, DataTable dt)
        {
            int colIndex = 0;
            foreach (DataRow dr in dt.Rows) // Adding Data into rows
            {
                colIndex = 1;
                rowIndex++;

                foreach (DataColumn dc in dt.Columns)
                {
                    var cell = ws.Cells[rowIndex, colIndex];

                    //Setting Value in cell
                    cell.Value = Convert.ToString(dr[dc.ColumnName]);

                    //Setting borders of cell
                    var border = cell.Style.Border;
                    border.Left.Style = border.Right.Style = ExcelBorderStyle.Thin;
                    colIndex++;
                }
            }
        }
        /// <summary>
        /// Adds the custom shape.
        /// </summary>
        /// <param name="ws">Worksheet</param>
        /// <param name="colIndex">Column Index</param>
        /// <param name="rowIndex">Row Index</param>
        /// <param name="shapeStyle">Shape style</param>
        /// <param name="text">Text for the shape</param>
        public static void AddCustomShape(ExcelWorksheet ws, int colIndex, int rowIndex, eShapeStyle shapeStyle, string text)
        {
            ExcelShape shape = ws.Drawings.AddShape("cs" + rowIndex.ToString() + colIndex.ToString(), shapeStyle);
            shape.From.Column = colIndex;
            shape.From.Row = rowIndex;
            shape.From.ColumnOff = Pixel2MTU(5);
            shape.SetSize(100, 100);
            shape.RichText.Add(text);
        }
        /// <summary>
        /// Pixel2s the MTU.
        /// </summary>
        /// <param name="pixels">The pixels.</param>
        /// <returns></returns>
        public static int Pixel2MTU(int pixels)
        {
            int mtus = pixels * 9525;
            return mtus;
        }
        /// <summary>
        /// Adds the comment in excel sheet.
        /// </summary>
        /// <param name="ws">Worksheet</param>
        /// <param name="colIndex">Column Index</param>
        /// <param name="rowIndex">Row Index</param>
        /// <param name="comments">Comment text</param>
        /// <param name="author">Author Name</param>
        public static void AddComment(ExcelWorksheet ws, int colIndex, int rowIndex, string comment, string author)
        {
            //Adding a comment to a Cell
            var commentCell = ws.Cells[rowIndex, colIndex];
            commentCell.AddComment(comment, author);
        }
        /// <summary>
        /// Creating The Report.
        /// </summary>
        public static void GenerateReport(DataTable dt)
        {
           
            using (ExcelPackage p = new ExcelPackage())
            {
                //set the workbook properties and add a default sheet in it
                Excelimport.SetWorkbookProperties(p);
                //Create a sheet
                ExcelWorksheet ws = Excelimport.CreateSheet(p, "Sample Sheet");
                //DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, null); //My Function which generates DataTable

                //Merging cells and create a center heading for out table
                ws.Cells[1, 1].Value = " Export Report";
                ws.Cells[1, 1, 1, dt.Columns.Count].Merge = true;
                ws.Cells[1, 1, 1, dt.Columns.Count].Style.Font.Bold = true;
                ws.Cells[1, 1, 1, dt.Columns.Count].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;

                int rowIndex = 2;

                Excelimport.CreateHeader(ws, ref rowIndex, dt);
                Excelimport.CreateData(ws, ref rowIndex, dt);
                //CreateFooter(ws, ref rowIndex, dt);

                Excelimport.AddComment(ws, 5, 10, "Md. Hasib's Comments", "Md. Hasib");

                //string path = Path.Combine(Path.GetDirectoryName(Path.GetDirectoryName(Application.StartupPath)), "iMAGE.jpg");
                //AddImage(ws, 10, 0, path);

                Excelimport.AddCustomShape(ws, 10, 7, eShapeStyle.Ellipse, "Text inside Ellipse.");

                //Generate A File with Random name
                Byte[] bin = p.GetAsByteArray();
                //string file = Guid.NewGuid().ToString() + ".xlsx";
                string file = MakeFileNameUnique(@"C:\TEMP", "myFile.xlsx");
                File.WriteAllBytes(file, bin);              


                //These lines will open it in Excel
                ProcessStartInfo pi = new ProcessStartInfo(file);
                Process.Start(pi);                
            }

        }

        public static string MakeFileNameUnique(string filePath, string fileName)
        {
            // This checks for nulls, empty or not-existing folders
            if (!Directory.Exists(filePath))
                throw new DirectoryNotFoundException();

            // This joins together the filePath (with or without backslash) 
            // with the Guid and the file name passed (in the same folder)
            // and replace the every backslash with forward slashes
            return Path.Combine(filePath, Guid.NewGuid() + "_" + fileName).Replace("\\", "/");
        }
        /// <summary>
        /// Adds the image in excel sheet.
        /// </summary>
        /// <param name="ws">Worksheet</param>
        /// <param name="colIndex">Column Index</param>
        /// <param name="rowIndex">Row Index</param>
        /// <param name="filePath">The file path</param>
        private static void AddImage(ExcelWorksheet ws, int columnIndex, int rowIndex, string filePath)
        {
            //How to Add a Image using EP Plus
            Bitmap image = new Bitmap(filePath);
            ExcelPicture picture = null;
            if (image != null)
            {
                picture = ws.Drawings.AddPicture("pic" + rowIndex.ToString() + columnIndex.ToString(), image);
                picture.From.Column = columnIndex;
                picture.From.Row = rowIndex;
                picture.From.ColumnOff = Pixel2MTU(2); //Two pixel space for better alignment
                picture.From.RowOff = Pixel2MTU(2);//Two pixel space for better alignment
                picture.SetSize(100, 100);
            }
        }

        public static FileStreamResult GenerateReportExcel(DataTable dt)
        {
            string fileName = "Report" + "_" + DateTime.Now.ToString("dd-MMM-yy") + ".xlsx";
            var serverPath = HttpContext.Current.Server.MapPath("~/ExportFiles/");
            DirectoryInfo outputDir = new DirectoryInfo(serverPath);

            FileInfo newfile = new FileInfo(outputDir.FullName + fileName);
            if (newfile.Exists)
            {
                newfile.Delete();
                newfile = new FileInfo(outputDir.FullName + fileName);
            }
            //Dictionary<string,int> MAData = PolicyDataAccess.GetMatchActionData(batchid);
            MemoryStream MS = new MemoryStream();

            using (ExcelPackage package = new ExcelPackage(newfile))
            {
                //set the workbook properties and add a default sheet in it
                Excelimport.SetWorkbookProperties(package);
                //Create a sheet
                ExcelWorksheet ws = Excelimport.CreateSheet(package, "Sample Sheet");
                //DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, null); //My Function which generates DataTable

                //Merging cells and create a center heading for out table
                ws.Cells[1, 1].Value = " Export Report";               
                ws.Cells[1, 1, 1, dt.Columns.Count].Merge = true;
                ws.Cells[1, 1, 1, dt.Columns.Count].Style.Font.Bold = true;
                ws.Cells[1, 1, 1, dt.Columns.Count].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;

                int rowIndex = 2;

                Excelimport.CreateHeader(ws, ref rowIndex, dt);
                Excelimport.CreateData(ws, ref rowIndex, dt);
                //CreateFooter(ws, ref rowIndex, dt);

                Excelimport.AddComment(ws, 5, 10, "Md. Hasib's,  IT Department", "Md. Hasib");

                //string path = Path.Combine(Path.GetDirectoryName(Path.GetDirectoryName(Application.StartupPath)), "iMAGE.jpg");
                //string path = System.IO.Path.GetFileName("~/Content/Images/Logo.png");
                //string path = Path.Combine(System.IO.Path.GetDirectoryName(@"C:\\Content\Images\"), "Logo.jpg");
                string path = Path.Combine(HttpContext.Current.Server.MapPath(@"~/Content/Images/"), "Logo.png");
                AddImage(ws, 10, 0, path);

                Excelimport.AddCustomShape(ws, 10, 7, eShapeStyle.Ellipse, "Export Excel Reports.");               
                package.SaveAs(MS);                
              }
                MS.Position = 0;
                var contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

                FileStreamResult FSR = new FileStreamResult(MS, contentType);
                FSR.FileDownloadName = fileName;
            
                return FSR;          
            }
                
    }
}