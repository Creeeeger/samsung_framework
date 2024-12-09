package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.ims.servicemodules.im.UploadFileTask;
import com.sec.internal.ims.servicemodules.im.data.info.FtHttpResumeInfo;
import com.sec.internal.ims.servicemodules.im.util.FtHttpXmlParser;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.OpenIdAuth;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.URL;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class UploadResumeFileTask extends UploadFileTask {
    private static final String LOG_TAG = "UploadResumeFileTask";

    public UploadResumeFileTask(int i, Context context, Looper looper, UploadFileTask.UploadRequest uploadRequest) {
        super(i, context, looper, uploadRequest);
        Log.i(LOG_TAG, "phoneId: " + i);
    }

    private String getRequestUrl() {
        Uri parse = Uri.parse(this.mRequest.mUrl);
        if (parse.getPath() != null && !parse.getPath().equals("/")) {
            if (this.mRequest.mUrl.endsWith("/")) {
                return this.mRequest.mUrl.substring(0, r3.length() - 1);
            }
            return this.mRequest.mUrl;
        }
        if (!this.mRequest.mUrl.endsWith("/")) {
            return this.mRequest.mUrl + "/";
        }
        return this.mRequest.mUrl;
    }

    private FtHttpResumeInfo getUploadInfo() {
        HttpRequest httpRequest;
        HttpRequest httpRequest2;
        String str = "?tid=" + this.mRequest.mTid + "&get_upload_info";
        this.mRequest.mUrl = getRequestUrl();
        String str2 = LOG_TAG;
        Log.i(str2, "getUploadInfo: params=" + str);
        this.mHttpRequest = null;
        try {
            try {
                try {
                    try {
                        this.mHttpRequest = HttpRequest.get(this.mRequest.mUrl + str);
                        setDefaultHeaders();
                        httpRequest2 = this.mHttpRequest;
                    } catch (IOException | XmlPullParserException e) {
                        e.printStackTrace();
                        cancelRequest(CancelReason.ERROR, 3, -1, true);
                        httpRequest = this.mHttpRequest;
                        if (httpRequest == null) {
                            return null;
                        }
                    }
                } catch (IllegalArgumentException | NullPointerException | OutOfMemoryError e2) {
                    e2.printStackTrace();
                    cancelRequest(CancelReason.ERROR, -1, -1, false);
                    httpRequest = this.mHttpRequest;
                    if (httpRequest == null) {
                        return null;
                    }
                }
            } catch (HttpRequest.HttpRequestException e3) {
                e3.printStackTrace();
                if (isPermanentFailCause(e3)) {
                    cancelRequest(CancelReason.ERROR, 30, -1, false);
                } else {
                    Log.e(LOG_TAG, e3.getCause() + " happened. Retry Upload Task.");
                    cancelRequest(CancelReason.ERROR, 3, -1, false);
                }
                httpRequest = this.mHttpRequest;
                if (httpRequest == null) {
                    return null;
                }
            }
            if (httpRequest2 == null) {
                Log.e(str2, "mHttpRequest is null");
                cancelRequest(CancelReason.ERROR, 3, -1, true);
                HttpRequest httpRequest3 = this.mHttpRequest;
                if (httpRequest3 != null) {
                    httpRequest3.disconnect();
                }
                return null;
            }
            int code = httpRequest2.code();
            if (code == 200) {
                Log.i(str2, "Receive 200 OK");
            } else {
                if (code == 302) {
                    String header = this.mHttpRequest.header("Location");
                    if (!TextUtils.isEmpty(header)) {
                        int i = this.mPhoneId;
                        UploadFileTask.UploadRequest uploadRequest = this.mRequest;
                        String sendAuthRequest = OpenIdAuth.sendAuthRequest(new OpenIdAuth.OpenIdRequest(i, header, uploadRequest.mNetwork, uploadRequest.mUserAgent, uploadRequest.mTrustAllCerts));
                        if (sendAuthRequest != null) {
                            this.mHttpRequest.disconnect();
                            this.mHttpRequest = HttpRequest.get(sendAuthRequest);
                            setDefaultHeaders();
                            this.mHttpRequest.chunk(0);
                            code = this.mHttpRequest.code();
                        }
                    }
                    Log.e(str2, "getUploadInfo: openId process failed");
                    cancelRequest(this.mHttpRequest, true);
                    HttpRequest httpRequest4 = this.mHttpRequest;
                    if (httpRequest4 == null) {
                        return null;
                    }
                    httpRequest4.disconnect();
                    return null;
                }
                if (code != 401) {
                    if (code == 503) {
                        Log.e(str2, "Receive 503 Unavailable");
                        if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.FTHTTP_UPLOAD_RESUME_FROM_THE_START)) {
                            cancelRequest(CancelReason.ERROR, 3, code, true);
                        } else {
                            cancelRequest(this.mHttpRequest, false);
                        }
                        HttpRequest httpRequest5 = this.mHttpRequest;
                        if (httpRequest5 != null) {
                            httpRequest5.disconnect();
                        }
                        return null;
                    }
                    Log.e(str2, "getUploadInfo: Receive " + this.mHttpRequest.code() + " " + this.mHttpRequest.message());
                    cancelRequest(this.mHttpRequest, true);
                    HttpRequest httpRequest6 = this.mHttpRequest;
                    if (httpRequest6 != null) {
                        httpRequest6.disconnect();
                    }
                    return null;
                }
                String authorizationHeader = getAuthorizationHeader(this.mPhoneId, this.mHttpRequest, this.mRequest.mUrl + str, "GET");
                if (!TextUtils.isEmpty(authorizationHeader)) {
                    this.mHttpRequest.disconnect();
                    this.mHttpRequest = HttpRequest.get(this.mRequest.mUrl + str);
                    setDefaultHeaders();
                    this.mHttpRequest.authorization(authorizationHeader).chunk(0);
                    HttpRequest httpRequest7 = this.mHttpRequest;
                    if (httpRequest7 == null) {
                        Log.e(str2, "mHttpRequest is null");
                        cancelRequest(CancelReason.ERROR, 3, -1, true);
                        HttpRequest httpRequest8 = this.mHttpRequest;
                        if (httpRequest8 == null) {
                            return null;
                        }
                        httpRequest8.disconnect();
                        return null;
                    }
                    code = httpRequest7.code();
                }
            }
            if (200 == code) {
                Log.i(str2, "getUploadInfo: Success");
                String body = this.mHttpRequest.body();
                this.mHttpRequest.disconnect();
                IMSLog.s(str2, "getUploadInfo: Received. body=" + body);
                FtHttpResumeInfo parseResume = FtHttpXmlParser.parseResume(body);
                HttpRequest httpRequest9 = this.mHttpRequest;
                if (httpRequest9 != null) {
                    httpRequest9.disconnect();
                }
                return parseResume;
            }
            Log.e(str2, "getUploadInfo: Failed, Receive " + this.mHttpRequest.code() + " " + this.mHttpRequest.message());
            if (503 != code) {
                cancelRequest(this.mHttpRequest, true);
                httpRequest = this.mHttpRequest;
                if (httpRequest == null) {
                    return null;
                }
                httpRequest.disconnect();
                return null;
            }
            if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.FTHTTP_UPLOAD_RESUME_FROM_THE_START)) {
                cancelRequest(CancelReason.ERROR, 3, code, true);
            } else {
                cancelRequest(this.mHttpRequest, false);
            }
            HttpRequest httpRequest10 = this.mHttpRequest;
            if (httpRequest10 == null) {
                return null;
            }
            httpRequest10.disconnect();
            return null;
        } finally {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x02da, code lost:
    
        if (r0 == null) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02dd, code lost:
    
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0296, code lost:
    
        r0.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0294, code lost:
    
        if (r0 == null) goto L127;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0348  */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean doResumeFile(java.net.URL r25, final long r26, long r28, long r30) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.UploadResumeFileTask.doResumeFile(java.net.URL, long, long, long):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0181, code lost:
    
        if (r14 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x01e9, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x01e6, code lost:
    
        r14.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01e4, code lost:
    
        if (r14 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ad, code lost:
    
        if (r14 == null) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.String getDownloadInfo() {
        /*
            Method dump skipped, instructions count: 498
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.UploadResumeFileTask.getDownloadInfo():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask, com.sec.internal.ims.servicemodules.im.util.AsyncFileTask
    public Long doInBackground() {
        String downloadInfo;
        boolean z = false;
        if (this.mMnoStrategy == null) {
            Log.e(LOG_TAG, "mMnoStrategy is null");
            cancelRequest(CancelReason.ERROR, -1, -1, false);
            return Long.valueOf(this.mTransferred);
        }
        TrafficStats.setThreadStatsTag(Process.myTid());
        String str = LOG_TAG;
        Log.i(str, "doInBackground: " + this.mRequest);
        this.mTotal = this.mRequest.mTotalBytes;
        FtHttpResumeInfo uploadInfo = getUploadInfo();
        if (uploadInfo == null) {
            Log.e(str, "Failed to get upload info.");
            return Long.valueOf(this.mTransferred);
        }
        if (uploadInfo.getEnd() + 1 > this.mRequest.mTotalBytes) {
            Log.i(str, "Uploaded over than requested size.  : " + (uploadInfo.getEnd() + 1));
        } else if (uploadInfo.getEnd() + 1 == this.mRequest.mTotalBytes) {
            Log.i(str, "Already uploaded.");
        } else {
            if (uploadInfo.getUrl() != null) {
                URL url = uploadInfo.getUrl();
                long end = uploadInfo.getEnd() + 1;
                long j = this.mRequest.mTotalBytes;
                z = doResumeFile(url, end, j - 1, j);
            }
            if (z && (downloadInfo = getDownloadInfo()) != null) {
                this.mRequest.mCallback.onCompleted(downloadInfo);
            }
            return Long.valueOf(this.mTransferred);
        }
        z = true;
        if (z) {
            this.mRequest.mCallback.onCompleted(downloadInfo);
        }
        return Long.valueOf(this.mTransferred);
    }
}
