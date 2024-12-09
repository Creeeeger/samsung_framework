package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Network;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.RetryTimerUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.AsyncFileTask;
import com.sec.internal.ims.servicemodules.im.util.FileTaskUtil;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.HttpAuthGenerator;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.OpenIdAuth;
import com.sec.internal.ims.util.ThumbnailUtil;
import com.sec.internal.log.IMSLog;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class UploadFileTask extends AsyncFileTask<Long> {
    private static final String LOG_TAG = "UploadFileTask";
    protected String mContentType;
    protected Context mContext;
    protected String mEncodedFileName;
    protected HttpRequest mHttpRequest;
    protected final IMnoStrategy mMnoStrategy;
    protected int mPhoneId;
    protected UploadRequest mRequest;
    protected long mTotal;
    protected long mTransferred;
    protected long mUploadProgressElapsed;
    protected String thumbFileName;
    protected byte[] thumbnailData;
    protected String thumbnailType;

    public interface UploadTaskCallback {
        void onCanceled(CancelReason cancelReason, int i, int i2, boolean z);

        void onCompleted(String str);

        void onFinished();

        void onProgressUpdate(long j);

        void onStarted();
    }

    public UploadFileTask(int i, Context context, Looper looper, UploadRequest uploadRequest) {
        super(looper);
        Log.i(LOG_TAG, "phoneId: " + i);
        this.mPhoneId = i;
        this.mRequest = uploadRequest;
        this.mContext = context;
        this.mMnoStrategy = RcsPolicyManager.getRcsStrategy(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sec.internal.ims.servicemodules.im.util.AsyncFileTask
    /* renamed from: onPostExecute, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void lambda$handleResult$1(Long l) {
        UploadTaskCallback uploadTaskCallback;
        super.lambda$handleResult$1((UploadFileTask) l);
        UploadRequest uploadRequest = this.mRequest;
        if (uploadRequest != null && (uploadTaskCallback = uploadRequest.mCallback) != null) {
            uploadTaskCallback.onFinished();
        }
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Task");
        sb.append(isCancelled() ? "canceled " : "finished ");
        sb.append(l);
        Log.i(str, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.ims.servicemodules.im.util.AsyncFileTask
    public Long doInBackground() {
        InputStream openInputStream;
        if (this.mMnoStrategy == null) {
            Log.e(LOG_TAG, "mMnoStrategy is null");
            cancelRequest(CancelReason.ERROR, -1, -1, false);
            return Long.valueOf(this.mTransferred);
        }
        TrafficStats.setThreadStatsTag(Process.myTid());
        String str = LOG_TAG;
        IMSLog.i(str, "doInBackground: " + this.mRequest);
        this.mTotal = this.mRequest.mTotalBytes;
        InputStream inputStream = null;
        this.mHttpRequest = null;
        if (!sendFirstPostRequest()) {
            return Long.valueOf(this.mTransferred);
        }
        if (this.mHttpRequest == null) {
            Log.e(str, "mHttpRequest is null");
            cancelRequest(CancelReason.ERROR, -1, -1, false);
            return Long.valueOf(this.mTransferred);
        }
        int min = (int) Math.min(512000L, Math.max(this.mRequest.mTotalBytes / 50, 61440L));
        try {
            try {
                setDefaultHeaders();
                this.mHttpRequest.bufferSize(min);
                generateFileInfo();
                if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_FTHTTP_CONTENTLENGTH)) {
                    long requestContentLength = getRequestContentLength(this.mHttpRequest, this.thumbnailData, this.thumbnailType, this.thumbFileName, this.mContentType, this.mEncodedFileName);
                    Log.i(str, "Http request length:" + requestContentLength);
                    this.mHttpRequest.contentLength(Long.toString(requestContentLength));
                } else {
                    this.mHttpRequest.chunk(0);
                }
                this.mHttpRequest.part("tid", (String) null, MIMEContentType.PLAIN_TEXT, this.mRequest.mTid);
                if (this.thumbnailData != null) {
                    this.mHttpRequest.part("Thumbnail", this.thumbFileName, this.thumbnailType, new ByteArrayInputStream(this.thumbnailData));
                }
                this.mRequest.mCallback.onStarted();
                openInputStream = this.mContext.getContentResolver().openInputStream(this.mRequest.mContentUri);
            } catch (HttpRequest.HttpRequestException e) {
                e = e;
            } catch (IOException | IllegalStateException e2) {
                e = e2;
            }
            try {
                try {
                    this.mHttpRequest.progress(new HttpRequest.UploadProgress() { // from class: com.sec.internal.ims.servicemodules.im.UploadFileTask.1
                        @Override // com.sec.internal.helper.HttpRequest.UploadProgress
                        public void onUpload(long j, long j2) {
                            Log.i(UploadFileTask.LOG_TAG, "onUpload: " + j + " / " + UploadFileTask.this.mTotal + " (" + ((100 * j) / UploadFileTask.this.mTotal) + "%)");
                            UploadFileTask uploadFileTask = UploadFileTask.this;
                            long j3 = uploadFileTask.mTransferred * 50;
                            long j4 = uploadFileTask.mTotal;
                            if (j3 / j4 < (50 * j) / j4) {
                                long elapsedRealtime = SystemClock.elapsedRealtime();
                                Log.i(UploadFileTask.LOG_TAG, "onUpload: currentTime = " + elapsedRealtime + ", mUploadProgressElapsed = " + UploadFileTask.this.mUploadProgressElapsed);
                                UploadFileTask uploadFileTask2 = UploadFileTask.this;
                                if (elapsedRealtime > uploadFileTask2.mUploadProgressElapsed + 200) {
                                    uploadFileTask2.mRequest.mCallback.onProgressUpdate(j);
                                    UploadFileTask.this.mUploadProgressElapsed = elapsedRealtime;
                                }
                            }
                            UploadFileTask.this.mTransferred = j;
                        }

                        @Override // com.sec.internal.helper.HttpRequest.UploadProgress
                        public boolean isCancelled() {
                            return UploadFileTask.this.isCancelled();
                        }
                    }).part("File", this.mEncodedFileName, this.mContentType, openInputStream).progress(null);
                } catch (HttpRequest.HttpRequestException e3) {
                    inputStream = openInputStream;
                    e = e3;
                    if (e.getCause() != null) {
                        e.getCause().printStackTrace();
                    }
                    if (isPermanentFailCause(e)) {
                        cancelRequest(CancelReason.ERROR, 30, -1, false);
                    } else {
                        Log.e(LOG_TAG, e.getCause() + " happened. Retry Upload Task.");
                        cancelRequest(CancelReason.ERROR, 3, -1, false);
                    }
                    inputStream.close();
                    this.mHttpRequest.disconnect();
                    return Long.valueOf(this.mTransferred);
                } catch (Throwable th) {
                    inputStream = openInputStream;
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException | NullPointerException unused) {
                    }
                    this.mHttpRequest.disconnect();
                    throw th;
                }
            } catch (IOException | IllegalStateException e4) {
                inputStream = openInputStream;
                e = e4;
                if (e.getCause() != null) {
                    e.getCause().printStackTrace();
                }
                cancelRequest(CancelReason.ERROR, 3, -1, false);
                inputStream.close();
                this.mHttpRequest.disconnect();
                return Long.valueOf(this.mTransferred);
            }
            if (isCancelled()) {
                Long valueOf = Long.valueOf(this.mTransferred);
                try {
                    openInputStream.close();
                } catch (IOException | NullPointerException unused2) {
                }
                this.mHttpRequest.disconnect();
                return valueOf;
            }
            onUploadFileDone();
            openInputStream.close();
            this.mHttpRequest.disconnect();
            return Long.valueOf(this.mTransferred);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected boolean isPermanentFailCause(HttpRequest.HttpRequestException httpRequestException) {
        return httpRequestException.getCause() instanceof UnknownHostException;
    }

    protected void cancelRequest(HttpRequest httpRequest, boolean z) {
        CancelReason cancelReason = CancelReason.ERROR;
        int code = httpRequest.code();
        int i = 3;
        if (code == 401) {
            IMnoStrategy iMnoStrategy = this.mMnoStrategy;
            if (iMnoStrategy != null) {
                iMnoStrategy.handleFtHttpRequestFailure(CancelReason.UNAUTHORIZED, ImDirection.OUTGOING, false);
            }
        } else if (code == 403) {
            IMnoStrategy iMnoStrategy2 = this.mMnoStrategy;
            if (iMnoStrategy2 != null) {
                iMnoStrategy2.handleFtHttpRequestFailure(CancelReason.FORBIDDEN_FT_HTTP, ImDirection.OUTGOING, false);
            }
        } else if (code == 410) {
            i = 1;
        } else if (code == 500) {
            i = 5;
        } else if (code == 503) {
            i = RetryTimerUtil.getRetryAfter(httpRequest.header(HttpRequest.HEADER_RETRY_AFTER));
        }
        cancelRequest(cancelReason, i, httpRequest.code(), z);
    }

    protected void cancelRequest(CancelReason cancelReason, int i, int i2, boolean z) {
        if (isCancelled()) {
            return;
        }
        this.mRequest.mCallback.onCanceled(cancelReason, i, i2, z);
    }

    private long getRequestContentLength(HttpRequest httpRequest, byte[] bArr, String str, String str2, String str3, String str4) {
        long sizeFromUri = FileUtils.getSizeFromUri(this.mContext, this.mRequest.mContentUri);
        long partHeaderLength = httpRequest.getPartHeaderLength("tid", null, MIMEContentType.PLAIN_TEXT, true) + this.mRequest.mTid.length() + 0;
        if (bArr != null) {
            partHeaderLength += httpRequest.getPartHeaderLength("Thumbnail", str2, str, false) + bArr.length;
            IMnoStrategy iMnoStrategy = this.mMnoStrategy;
            if (iMnoStrategy != null && iMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.CONTENTLENGTH_IN_BYTE)) {
                partHeaderLength += str4.getBytes(Charset.defaultCharset()).length - str4.length();
            }
        }
        long partHeaderLength2 = partHeaderLength + httpRequest.getPartHeaderLength("File", str4, str3, false) + sizeFromUri;
        IMnoStrategy iMnoStrategy2 = this.mMnoStrategy;
        if (iMnoStrategy2 != null && iMnoStrategy2.boolSetting(RcsPolicySettings.RcsPolicy.CONTENTLENGTH_IN_BYTE)) {
            partHeaderLength2 += str4.getBytes().length - str4.length();
        }
        return partHeaderLength2 + ("\r\n--" + HttpRequest.BOUNDARY + "--\r\n").length();
    }

    private String getTrimmedFileName(String str, int i) {
        Log.i(LOG_TAG, "getTrimmedFileName() fileName=" + IMSLog.checker(str) + ", limitSize= " + i);
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            int length = URLEncoder.encode(str, "UTF-8").getBytes().length;
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf == -1) {
                lastIndexOf = str.length();
            }
            String substring = str.substring(0, lastIndexOf);
            String substring2 = str.substring(lastIndexOf);
            int length2 = substring.length();
            int i2 = 0;
            while (length2 > 0 && length - i2 > i) {
                i2 += URLEncoder.encode(substring.substring(length2 - 1, length2), "UTF-8").getBytes().length;
                length2--;
            }
            String substring3 = substring.substring(0, length2);
            Log.i(LOG_TAG, "Trimmed fileName=" + IMSLog.checker(substring3) + substring2);
            return substring3 + substring2;
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            Log.e(LOG_TAG, "Exception: " + e);
            return str;
        }
    }

    private boolean sendFirstPostRequest() {
        try {
            sendEmptyPostRequest();
            setDefaultHeaders();
            int code = this.mHttpRequest.code();
            this.mHttpRequest.disconnect();
            return handleFirstRequestResponse(code);
        } catch (HttpRequest.HttpRequestException e) {
            if (e.getCause() != null) {
                e.getCause().printStackTrace();
            }
            if (this.isPermanentFailCause(e)) {
                this.cancelRequest(CancelReason.ERROR, 30, -1, false);
            } else {
                Log.e(LOG_TAG, e.getCause() + " happened. Retry Upload Task.");
                this.cancelRequest(CancelReason.ERROR, 3, -1, false);
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            this.cancelRequest(CancelReason.ERROR, -1, -1, false);
            return false;
        }
    }

    private void sendEmptyPostRequest() {
        String str = this.mRequest.mUrl;
        IMnoStrategy iMnoStrategy = this.mMnoStrategy;
        if (iMnoStrategy != null && iMnoStrategy.isHTTPUsedForEmptyFtHttpPOST()) {
            str = str.replaceFirst("https://", "http://");
        }
        this.mHttpRequest = HttpRequest.post(str);
    }

    private boolean handleFirstRequestResponse(int i) {
        if (i == 200 || i == 204) {
            Log.i(LOG_TAG, "Receive: " + i);
            this.mHttpRequest = HttpRequest.post(this.mRequest.mUrl);
            return true;
        }
        if (i == 302) {
            String header = this.mHttpRequest.header("Location");
            if (!TextUtils.isEmpty(header)) {
                int i2 = this.mPhoneId;
                UploadRequest uploadRequest = this.mRequest;
                String sendAuthRequest = OpenIdAuth.sendAuthRequest(new OpenIdAuth.OpenIdRequest(i2, header, uploadRequest.mNetwork, uploadRequest.mUserAgent, uploadRequest.mTrustAllCerts));
                if (sendAuthRequest != null) {
                    this.mHttpRequest.disconnect();
                    this.mRequest.mUrl = sendAuthRequest;
                    this.mHttpRequest = HttpRequest.post(sendAuthRequest);
                    return true;
                }
            }
            Log.e(LOG_TAG, "handleFirstRequestResponse: OpenId process failed!");
            cancelRequest(this.mHttpRequest, false);
            return false;
        }
        if (i == 401) {
            String authorizationHeader = getAuthorizationHeader(this.mPhoneId, this.mHttpRequest, this.mRequest.mUrl, "POST");
            if (TextUtils.isEmpty(authorizationHeader)) {
                Log.e(LOG_TAG, "handleFirstRequestResponse: Authorization response is null!");
                cancelRequest(this.mHttpRequest, false);
                return false;
            }
            this.mHttpRequest = HttpRequest.post(this.mRequest.mUrl).useNetwork(this.mRequest.mNetwork).authorization(authorizationHeader);
            return true;
        }
        Log.e(LOG_TAG, "Receive " + this.mHttpRequest.code() + " " + this.mHttpRequest.message());
        cancelRequest(this.mHttpRequest, false);
        return false;
    }

    private void generateFileInfo() {
        UploadRequest uploadRequest = this.mRequest;
        String str = uploadRequest.mContentType;
        if (str != null) {
            this.mContentType = str;
        } else {
            this.mContentType = FileUtils.getContentType(this.mContext, uploadRequest.mFileName, uploadRequest.mContentUri);
        }
        this.thumbFileName = "";
        this.thumbnailType = "image/jpeg";
        this.thumbnailData = null;
        UploadRequest uploadRequest2 = this.mRequest;
        if (uploadRequest2.bFileIcon) {
            generateThumbnailData(uploadRequest2.mContentUri, this.mContentType);
        }
        this.mEncodedFileName = this.mRequest.mFileName;
        try {
            if (!this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_ENCODING_FILENAME_BY_SERVER)) {
                int intSetting = this.mMnoStrategy.intSetting(RcsPolicySettings.RcsPolicy.FILE_NAME_LENGTH_LIMIT_IN_SERVER);
                String str2 = this.mEncodedFileName;
                if (intSetting > 0 && URLEncoder.encode(str2, "UTF-8").getBytes().length > intSetting) {
                    str2 = getTrimmedFileName(str2, intSetting);
                }
                this.mEncodedFileName = URLEncoder.encode(str2, "UTF-8");
            }
        } catch (UnsupportedEncodingException | IllegalArgumentException unused) {
            Log.e(LOG_TAG, "UnsupportedEncodingException or IllegalArgumentException");
        }
        if (TextUtils.isEmpty(this.thumbFileName)) {
            IMSLog.s(LOG_TAG, "mEncodedFileName : " + this.mEncodedFileName);
            String[] split = this.mEncodedFileName.split("\\.");
            if (split.length > 0) {
                this.thumbFileName = split[0];
            } else {
                this.thumbFileName = "thumb";
            }
            if ("image/jpeg".equals(this.thumbnailType)) {
                this.thumbFileName += ".jpg";
                return;
            }
            if ("image/bmp".equals(this.thumbnailType)) {
                this.thumbFileName += ".bmp";
            }
        }
    }

    private void generateThumbnailData(Uri uri, String str) {
        if (str != null && str.startsWith(SipMsg.FEATURE_TAG_MMTEL_VIDEO)) {
            this.thumbnailData = ThumbnailUtil.getVideoThumbnailByteArray(this.mContext, uri, this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_HIGHRESOLUTIONVIDEO_THUMBNAIL) ? ThumbnailUtil.MAX_BYTE_COUNT_HIGH : ThumbnailUtil.MAX_BYTE_COUNT);
        }
        if (this.thumbnailData == null) {
            this.thumbnailData = ThumbnailUtil.getThumbnailByteArray(this.mContext, uri);
        }
        if (this.thumbnailData == null) {
            String str2 = OmcCode.get();
            if ("DTM".equals(str2) || "DTR".equals(str2)) {
                this.thumbnailData = new byte[]{66, 77, 66, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 40, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -64, 0, 0, 0};
                this.thumbnailType = "image/bmp";
                this.thumbFileName = "dummy.txt.txt.bmp";
            }
        }
    }

    private void onUploadFileDone() {
        String str = LOG_TAG;
        Log.i(str, "Upload File done. Read http response.");
        if (this.mHttpRequest.ok()) {
            Log.i(str, "Upload success, handle response message.");
            this.mRequest.mCallback.onCompleted(this.mHttpRequest.body());
            return;
        }
        Log.e(str, "Upload failed, " + this.mHttpRequest.code() + " " + this.mHttpRequest.message());
        if (this.mHttpRequest.code() == 500) {
            Log.e(str, "Retry uploading with deaccented mFile name.");
            cancelRequest(CancelReason.ERROR, 3, 500, false);
        } else {
            cancelRequest(this.mHttpRequest, false);
        }
    }

    protected String getAuthorizationHeader(int i, HttpRequest httpRequest, String str, String str2) {
        String str3 = LOG_TAG;
        Log.i(str3, "Receive 401 Unauthorized, attempt to generate response");
        String wwwAuthenticate = httpRequest.wwwAuthenticate();
        IMSLog.s(str3, "challenge: " + wwwAuthenticate);
        if (wwwAuthenticate == null) {
            Log.i(str3, "Got 401 and challenge is NULL!");
            return "";
        }
        if (wwwAuthenticate.trim().equals("SIT")) {
            Log.i(str3, "Got 401 for SIT. Skip GBA");
            return "";
        }
        String authorizationHeader = HttpAuthGenerator.getAuthorizationHeader(i, str, wwwAuthenticate, str2, httpRequest.getCipherSuite());
        IMSLog.s(str3, "response: " + authorizationHeader);
        return authorizationHeader;
    }

    protected void setDefaultHeaders() {
        this.mHttpRequest.useNetwork(this.mRequest.mNetwork).useCaches(false).connectTimeout(10000).readTimeout(FileTaskUtil.READ_DATA_TIMEOUT).userAgent(this.mRequest.mUserAgent);
        if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.FT_WITH_GBA) && this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.USE_USERIDENTITY_FOR_FTHTTP)) {
            String isimImpuAtIndex = TelephonyManagerWrapper.getInstance(this.mContext).getIsimImpuAtIndex(SimUtil.getSubId(this.mPhoneId), 0);
            if (TextUtils.isEmpty(isimImpuAtIndex)) {
                isimImpuAtIndex = ImsUtil.getPublicId(this.mPhoneId);
            }
            this.mHttpRequest.header("X-3GPP-Intended-Identity", CmcConstants.E_NUM_STR_QUOTE + isimImpuAtIndex + CmcConstants.E_NUM_STR_QUOTE);
        }
        if (this.mRequest.mTrustAllCerts) {
            this.mHttpRequest.trustAllCerts().trustAllHosts();
        }
    }

    public static class UploadRequest {
        public boolean bFileIcon;
        public UploadTaskCallback mCallback;
        public String mContentType;
        public Uri mContentUri;
        public String mFileName;
        public Network mNetwork;
        public String mTid;
        public long mTotalBytes;
        public boolean mTrustAllCerts;
        public String mUrl;
        public String mUserAgent;

        public UploadRequest(String str, long j, String str2, Uri uri, boolean z, String str3, String str4, Network network, boolean z2, UploadTaskCallback uploadTaskCallback, String str5) {
            this.mUrl = str;
            this.mTotalBytes = j;
            this.mFileName = str2;
            this.mContentUri = uri;
            this.mTid = str3;
            this.mUserAgent = str4;
            this.mCallback = uploadTaskCallback;
            this.bFileIcon = z;
            this.mNetwork = network;
            this.mTrustAllCerts = z2;
            this.mContentType = str5;
        }

        public String toString() {
            return "UploadRequest{mUrl=" + IMSLog.checker(this.mUrl) + ", mTotalBytes=" + this.mTotalBytes + ", mContentUri=" + IMSLog.checker(this.mContentUri) + ", bFileIcon=" + this.bFileIcon + ", mTid=" + this.mTid + ", mUserAgent=" + this.mUserAgent + ", mNetwork=" + this.mNetwork + ", mTrustAllCerts=" + this.mTrustAllCerts + ", mCallback=" + this.mCallback + ", mContentType=" + this.mContentType + "}";
        }

        public boolean isValid() {
            return (this.mCallback == null || TextUtils.isEmpty(this.mUrl) || TextUtils.isEmpty(this.mTid) || this.mContentUri == null) ? false : true;
        }
    }
}
