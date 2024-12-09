package com.sec.internal.omanetapi.file;

/* loaded from: classes.dex */
public class LargeFileDownloadParams {
    public String acceptRanges;
    public String contentDisposition;
    public String contentLength;
    public String contentType;
    public byte[] strbody;

    public String toString() {
        return "LargeFileDownloadParams{contentType='" + this.contentType + "', contentLength='" + this.contentLength + "', contentDisposition='" + this.contentDisposition + "', acceptRanges='" + this.acceptRanges + "'}";
    }
}
