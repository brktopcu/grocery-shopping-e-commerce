using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace zeytin
{
    public class sepetUrunler
    {

        public string UrunAdi { get; set; }
        public string ResimYolu { get; set; }
        public double Fiyat { get; set; }
        public int ID { get; set; }
        public int KacKilo { get; set; }

        public sepetUrunler(int id,string urunadi,string resimyolu,double fiyat,int kackilo)
        {

            this.ID = id;
            this.UrunAdi = urunadi;
            this.ResimYolu = resimyolu;
            this.Fiyat = fiyat;
            this.KacKilo = kackilo;
        }
    }
}