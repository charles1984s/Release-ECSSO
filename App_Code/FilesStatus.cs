using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Configuration;

public class FilesStatus
{

    public string name { get; set; }
    public int size { get; set; }
    public string url { get; set; }
    public string thumbnailUrl { get; set; }
    public string deleteUrl { get; set; }
    public string deleteType { get; set; }
    public string error { get; set; }
    #region Constructor
    public FilesStatus() { }
    public FilesStatus(string fileName, int fileLength, string handlerPath, string directoryPath, string org) { SetValues(fileName, fileLength, handlerPath, directoryPath, org); }
    public FilesStatus(FileInfo fileInfo, string handlerPath, string directoryPath, string org) 
    {
        SetValues(fileInfo.Name, (int)fileInfo.Length, handlerPath, directoryPath, org);
        try
        {
            System.Drawing.Bitmap image = new System.Drawing.Bitmap(fileInfo.FullName);
            image.Dispose();
        }
        catch (Exception ex) { this.thumbnailUrl = ""; }
    }
    
    #endregion
    private void SetValues(string fileName, int fileLength, string handlerPath, string directoryPath,string org)
    {

        name = fileName;
        size = fileLength;
        url = string.Format("{0}FileTransferHandler.ashx?f={1}&org={2}", handlerPath, fileName,org);
        thumbnailUrl = string.Format("{0}Thumbnail.ashx?f={1}&org={2}", handlerPath, fileName,org);
        deleteUrl = string.Format("{0}FileTransferHandler.ashx?f={1}&org={2}", handlerPath, fileName,org);
        deleteType = "DELETE";
        if (!string.IsNullOrEmpty(directoryPath))
        {
            url += string.Format("&d={0}", directoryPath);
            thumbnailUrl += string.Format("&d={0}", directoryPath);
            deleteUrl += string.Format("&d={0}", directoryPath);

        }

    }
}