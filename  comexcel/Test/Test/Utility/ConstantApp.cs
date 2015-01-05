using System;
using System.Web.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.Drawing;

namespace Test.Utility
{
    public static class ConstantApp
    {
        public static PdfPCell PhraseCell(Phrase phrase, int align)
        {           
            PdfPCell cell = new PdfPCell(phrase);
            System.Drawing.ColorConverter colConvert = new ColorConverter();
            cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);          
            cell.VerticalAlignment = PdfPCell.ALIGN_TOP;
            cell.HorizontalAlignment = align;
            cell.PaddingBottom = 2f;
            cell.PaddingTop = 0f;
            return cell;            
        }

        //public static Paragraph Header()
    }
}