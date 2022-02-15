using System;
using System.Collections.Generic;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// LOG 的摘要描述
/// </summary>
public class LOG
{
    public class Log
    {
        public string Msg { get; set; }
        public List<Error> Error { get; set; }
        public List<Info> Info { get; set; }
        public List<Info2> Info2 { get; set; }       
    }

    public class Info {
        public string AuTitle { get; set; }
        public string SubTitle { get; set; }
        public string Title { get; set; }
        public string Value1 { get; set; }
        public string Value2 { get; set; }
        public string Value3 { get; set; }
        public string Cont1 { get; set; }
        public string Cont2 { get; set; }
        public string Cont3 { get; set; }
        public string Cont4 { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public string Img3 { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
    }
    public class Info2
    {
        public string ProdID { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public string Stocks { get; set; }
    }
    public class Error {
        public string ColumnName { get; set; }
        public string Memo { get; set; }        
    }
    public void LOGInsert(List<Log> InsertMsg, String FilePath, String OrgName)
    {       
        String text = "==================================================================================";
        text += "\r\n上傳日期：" + DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
        text += "\r\n網站名稱：" + OrgName + "\r\n\r\n";        
        
        if (InsertMsg.Count > 0)
        {
            for (int i = 0; i < InsertMsg.Count; i++)
            {
                text += "第" + (i + 1) + "筆：\r\n";
                text += "Log訊息：" + InsertMsg[i].Msg + "\r\n";

                if (InsertMsg[i].Info.Count > 0) {
                    for (int j = 0; j < InsertMsg[i].Info.Count; j++)
                    {
                        text += "商品大類名稱：" + InsertMsg[i].Info[j].AuTitle + "\r\n";
                        text += "商品分類名稱：" + InsertMsg[i].Info[j].SubTitle + "\r\n";
                        text += "商品名稱：" + InsertMsg[i].Info[j].Title + "\r\n";
                        text += "原價：" + InsertMsg[i].Info[j].Value1 + "\r\n";
                        text += "優惠價：" + InsertMsg[i].Info[j].Value2 + "\r\n";
                        text += "會員價：" + InsertMsg[i].Info[j].Value3 + "\r\n";
                        text += "產品簡介：" + InsertMsg[i].Info[j].Cont1 + "\r\n";
                        text += "產品說明：" + InsertMsg[i].Info[j].Cont2 + "\r\n";
                        text += "產品規格：" + InsertMsg[i].Info[j].Cont3 + "\r\n";
                        text += "注意事項：" + InsertMsg[i].Info[j].Cont4 + "\r\n";
                        text += "產品圖1：" + InsertMsg[i].Info[j].Img1 + "\r\n";
                        text += "產品圖2：" + InsertMsg[i].Info[j].Img2 + "\r\n";
                        text += "產品圖3：" + InsertMsg[i].Info[j].Img3 + "\r\n";
                        text += "上架日：" + InsertMsg[i].Info[j].StartDate + "\r\n";
                        text += "下架日：" + InsertMsg[i].Info[j].EndDate + "\r\n";
                    }
                }

                if (InsertMsg[i].Info2.Count > 0)
                {
                    for (int j = 0; j < InsertMsg[i].Info2.Count; j++)
                    {
                        text += "產品編號：" + InsertMsg[i].Info2[j].ProdID + "\r\n";
                        text += "顏色：" + InsertMsg[i].Info2[j].Color + "\r\n";
                        text += "尺寸：" + InsertMsg[i].Info2[j].Size + "\r\n";
                        text += "庫存量：" + InsertMsg[i].Info2[j].Stocks + "\r\n";
                    }
                }
                

                if (InsertMsg[i].Error.Count > 0) {
                    text += "---------錯誤訊息--------------\r\n";
                    for (int j = 0; j < InsertMsg[i].Error.Count; j++)
                    {
                        text += "欄位：" + InsertMsg[i].Error[j].ColumnName + "\r\n";
                        text += "錯誤說明：" + InsertMsg[i].Error[j].Memo + "\r\n";
                    }
                }
                text += "\r\n\r\n";
            }
        }
        else
        {
            text += "無上傳資料";
        }
        
        

        text += "\r\n\r\n\r\n";

        if (!Directory.Exists(FilePath))
        {
            //新增資料夾                
            Directory.CreateDirectory(FilePath);
        }

        using (StreamWriter file = new StreamWriter(FilePath + DateTime.Now.ToString("yyyyMMdd") + ".txt", true))
        {
            file.WriteLine(text);
            file.Close();
        }


    }
}