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
        public double UrunFiyatToplam { get; set; }
        public string SatilmaSekli { get; set; }

        public sepetUrunler(int id,string urunadi,string resimyolu,double fiyat,int kackilo,string satilmaSekli)
        {

            this.ID = id;
            this.UrunAdi = urunadi;
            this.ResimYolu = resimyolu;
            this.Fiyat = fiyat;
            this.KacKilo = kackilo;
            this.UrunFiyatToplam = fiyat * kackilo;
            this.SatilmaSekli = satilmaSekli;
        }
    }
}