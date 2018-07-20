using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace zeytin
{
    public class sepet
    {
        public List<sepetUrunler> Urunler { get; set; }


        public sepet()
        {
            Urunler = new List<sepetUrunler>();
        }

        private int UrunlerIndex(int id)
        {
            foreach (sepetUrunler item in Urunler)
            {
                if (item.ID == id)
                {
                    return Urunler.IndexOf(item);
                }
            }
            return -1;
        }

        public void Ekle(sepetUrunler item)
        {
            int index = UrunlerIndex(item.ID);
            if (index==-1)
            {
                Urunler.Add(item);
            }
            //else
            //{
            //    Urunler[index].KacKilo += Urunler[index].KacKilo;
            //}
        }
        
        public void Cikar(int rowID)
        {
            Urunler.Remove();
        }

        public void Guncelle(int rowID,int kackilo)
        {
            if (kackilo>0)
            {
                Urunler[rowID].KacKilo = kackilo;
            }
            else
            {
                Cikar(rowID);
            }
        }

        public double AnaToplam
        {
            get
            {
                if (Urunler == null)
                {
                    return 0;
                }
                else
                {
                    double anatoplam = 0;
                    foreach (sepetUrunler item in Urunler)
                    {
                        anatoplam += item.Fiyat * item.KacKilo;
                    }
                    return anatoplam;
                }
            }
        }

        


    }
}