using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// EtherCode 的摘要描述
/// </summary>
namespace EtherCode {
    public class DB {
        public ConnectionStringSettings setting = new ConnectionStringSettings();
        public DB(ConnectionStringSettings _setting)
        {
            setting = _setting;
        }
        public string getsetting(string orgname)
        {
            String return_Str = "";
            using (SqlConnection conn = new SqlConnection(setting.ToString()))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select dbname,dbusername,CONVERT(nvarchar(50), dbpassword) dbpassword from cocker_cust where crm_org=@orgname", conn);
                cmd.Parameters.Add(new SqlParameter("@orgname", orgname));
                SqlDataReader reader = cmd.ExecuteReader();
                try
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            return_Str = "data source=" + ConfigurationManager.AppSettings.Get("MemberApiUrl") + ";user id=" + reader["dbusername"].ToString() + "; password=" + reader["dbpassword"].ToString() + "; database=" + reader["dbname"].ToString();
                        }
                    }
                }
                finally
                {
                    reader.Close();
                }
            }
            return return_Str;
        }
    }

public class ether_Email
{
    public ether_Email()
	{
	}

    /// <summary>
    /// 寄信
    /// </summary>
    /// <param name=msg>信件內容</param>
    /// <param name=mysubject>信件標題</param>
    /// <param name=sender>寄件人</param>
    /// <param name=mail>收件人</param>
    public void send_email(string msg, string mysubject, string sender, string mail)
    {
        MailMessage message = new MailMessage();//MailMessage(寄信者, 收信者)
        message.From = new MailAddress(sender, "客服中心");
        message.Bcc.Add(sender);
        message.To.Add(mail);

        message.IsBodyHtml = true;
        message.BodyEncoding = System.Text.Encoding.UTF8;//E-mail編碼
        message.Subject = mysubject;//E-mail主旨
        message.Body = msg;//E-mail內容

        SmtpClient smtpClient = new SmtpClient("msa.hinet.net");//設定E-mail Server和port
        try
        {
            smtpClient.Send(message);
        }
        catch
        {
            smtpClient.Send(message);
        }

    }


    /// <summary>
    /// 寄交易成功信
    /// </summary>
    /// <param name=mysubject>信件標題</param>
    /// <param name=Service_Mail>寄件人</param>
    /// <param name=Receiver>收件人</param>
    /// <param name=StoreName>商店名稱</param>
    /// <param name=Order_id>訂單編號</param>
    /// <param name=Date>日期</param>
    /// <param name=OrderAmt>訂單金額</param>
    public void send_scussEmail(string mysubject, string Service_Mail, string Receiver,string StoreName, string Order_id, string Date, string OrderAmt)
    {
        String mail_cont = @"親愛的【"+StoreName+@"】會員您好：
<br />
您於本網站消費訂單編號: " + Order_id + @"，消費金額:" + OrderAmt + @"元，已經付款成功。
<br />
<br />
感謝您訂購【" + StoreName + @"】的優質產品！本通知函是通知您於網站消費已經付款成功，將會有另外一筆訂單通知，請注意您的信箱，該訂單通知將供您再次核對訂購明細之用，如欲查詢訂單，亦可於網站登入會員後查詢。
<br />
<br />
<span style=""color: red;"">
提醒您！
<br />
客服人員均不會電話要求消費者更改帳號或要求以ATM重新轉帳匯款。亦不會委託廠商以電話通知變更付款方式或要求提供ATM匯款帳號。若有上述情形，請立即撥打165防詐騙專線查詢。
</span>
";
        send_email(mail_cont, mysubject, Service_Mail, Receiver);
    }
}
}