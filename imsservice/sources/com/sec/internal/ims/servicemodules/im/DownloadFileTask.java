package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.HttpRequest;
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
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.net.UnknownHostException;
import java.util.Map;

/* loaded from: classes.dex */
public class DownloadFileTask extends AsyncFileTask<Long> {
    private static final long FT_SIZE_MARGIN = 10240;
    private static final String LOG_TAG = "DownloadFileTask";
    private static final int MAX_PROGRESS_COUNT = 50;
    protected Context mContext;
    private long mDownloadProgressElapsed;
    private HttpRequest mHttpRequest;
    protected final IMnoStrategy mMnoStrategy;
    private int mPhoneId;
    private DownloadRequest mRequest;
    private long mTotal;
    private long mTransferred;
    private long mWritten;

    public interface DownloadTaskCallback {
        void onCanceled(CancelReason cancelReason, int i, int i2);

        void onCompleted(long j);

        void onProgressUpdate(long j);
    }

    public DownloadFileTask(int i, Context context, Looper looper, DownloadRequest downloadRequest) {
        super(looper);
        Log.i(LOG_TAG, "phoneId: " + i);
        this.mPhoneId = i;
        this.mContext = context;
        this.mMnoStrategy = RcsPolicyManager.getRcsStrategy(i);
        this.mRequest = downloadRequest;
        this.mHttpRequest = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0122 A[Catch: all -> 0x019f, FileNotFoundException -> 0x01a1, DownloadFileTaskException -> 0x01ba, HttpRequestException -> 0x01cc, TryCatch #9 {HttpRequestException -> 0x01cc, DownloadFileTaskException -> 0x01ba, FileNotFoundException -> 0x01a1, blocks: (B:12:0x0085, B:15:0x0091, B:18:0x0098, B:26:0x00c2, B:28:0x00ce, B:31:0x00df, B:33:0x010e, B:35:0x0122, B:37:0x012a, B:45:0x013c, B:47:0x015e, B:51:0x0167, B:54:0x0171, B:55:0x017e, B:56:0x0197, B:57:0x019e, B:59:0x00e7, B:61:0x00ed, B:64:0x00fa), top: B:11:0x0085, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0197 A[Catch: all -> 0x019f, FileNotFoundException -> 0x01a1, DownloadFileTaskException -> 0x01ba, HttpRequestException -> 0x01cc, TRY_ENTER, TryCatch #9 {HttpRequestException -> 0x01cc, DownloadFileTaskException -> 0x01ba, FileNotFoundException -> 0x01a1, blocks: (B:12:0x0085, B:15:0x0091, B:18:0x0098, B:26:0x00c2, B:28:0x00ce, B:31:0x00df, B:33:0x010e, B:35:0x0122, B:37:0x012a, B:45:0x013c, B:47:0x015e, B:51:0x0167, B:54:0x0171, B:55:0x017e, B:56:0x0197, B:57:0x019e, B:59:0x00e7, B:61:0x00ed, B:64:0x00fa), top: B:11:0x0085, outer: #9 }] */
    @Override // com.sec.internal.ims.servicemodules.im.util.AsyncFileTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Long doInBackground() {
        /*
            Method dump skipped, instructions count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.DownloadFileTask.doInBackground():java.lang.Long");
    }

    private long getFileLength() {
        if (!TextUtils.isEmpty(this.mRequest.mFilePath)) {
            File file = new File(this.mRequest.mFilePath);
            if (file.exists()) {
                return file.length();
            }
            return -1L;
        }
        Uri uri = this.mRequest.mContentUri;
        if (uri != null) {
            return FileUtils.getSizeFromUri(this.mContext, uri);
        }
        return -1L;
    }

    private boolean isPermanentFailCause(HttpRequest.HttpRequestException httpRequestException) {
        return httpRequestException.getCause() instanceof UnknownHostException;
    }

    private void cancelRequest(HttpRequest httpRequest) {
        IMnoStrategy iMnoStrategy = this.mMnoStrategy;
        IMnoStrategy.HttpStrategyResponse handleFtHttpDownloadError = iMnoStrategy != null ? iMnoStrategy.handleFtHttpDownloadError(httpRequest) : new IMnoStrategy.HttpStrategyResponse(CancelReason.ERROR, 3);
        this.mRequest.mCallback.onCanceled(handleFtHttpDownloadError.getCancelReason(), handleFtHttpDownloadError.getDelay(), httpRequest.code());
    }

    public static class DownloadRequest {
        public DownloadTaskCallback mCallback;
        public Uri mContentUri;
        public String mFilePath;
        public Network mNetwork;
        public long mTotalBytes;
        public long mTransferredBytes;
        public boolean mTrustAllCerts;
        public String mUrl;
        public String mUserAgent;

        public DownloadRequest(String str, long j, long j2, String str2, Uri uri, String str3, Network network, boolean z, String str4, Map<String, String> map, DownloadTaskCallback downloadTaskCallback) {
            this.mTotalBytes = j;
            this.mTransferredBytes = j2;
            this.mFilePath = str2;
            this.mContentUri = uri;
            this.mUserAgent = str3;
            this.mCallback = downloadTaskCallback;
            this.mNetwork = network;
            this.mTrustAllCerts = z;
            this.mUrl = TextUtils.isEmpty(str4) ? str : str4;
            if (map == null || map.size() <= 0) {
                return;
            }
            this.mUrl = FileTaskUtil.createRequestUrl(this.mUrl, map);
        }

        public String toString() {
            return "DownloadRequest{mUrl=" + IMSLog.checker(this.mUrl) + ", mTotalBytes=" + this.mTotalBytes + ", mTransferredBytes=" + this.mTransferredBytes + ", mFilePath=" + IMSLog.checker(this.mFilePath) + ", mContentUir=" + IMSLog.checker(this.mContentUri) + ", mUserAgent=" + this.mUserAgent + ", mCallback=" + this.mCallback + ", mNetwork=" + this.mNetwork + ", mTrustAllCerts=" + this.mTrustAllCerts + "}";
        }

        public boolean isValid() {
            return (this.mCallback == null || TextUtils.isEmpty(this.mUrl) || TextUtils.isEmpty(this.mUserAgent)) ? false : true;
        }
    }

    public static class DownloadFileTaskException extends Exception {
        public DownloadFileTaskException(String str) {
            super(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v21, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    /* JADX WARN: Type inference failed for: r11v23, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    /* JADX WARN: Type inference failed for: r11v25, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    /* JADX WARN: Type inference failed for: r11v9, types: [com.sec.internal.ims.servicemodules.im.DownloadFileTask$DownloadTaskCallback] */
    private int sendGetRequest(int i) {
        int i2;
        String eAPAkaChallengeResponse;
        this.mHttpRequest = null;
        int i3 = -1;
        try {
            i2 = sendEmptyGetRequest(i);
            try {
            } catch (HttpRequest.HttpRequestException e) {
                e = e;
                if (e.getCause() != null) {
                    e.getCause().printStackTrace();
                }
                if (this.isPermanentFailCause(e)) {
                    this.mRequest.mCallback.onCanceled(CancelReason.ERROR, 30, i3);
                    this = LOG_TAG;
                    Log.e(this, e.getCause() + " happened. Retry download Task.");
                } else {
                    this.mRequest.mCallback.onCanceled(CancelReason.ERROR, 3, i3);
                    this = LOG_TAG;
                    Log.e(this, e.getCause() + " happened. Retry download Task.");
                }
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                this = this.mRequest.mCallback;
                this.onCanceled(CancelReason.DEVICE_UNREGISTERED, -1, -1);
            } catch (OutOfMemoryError e3) {
                e3.printStackTrace();
                this = this.mRequest.mCallback;
                this.onCanceled(CancelReason.ERROR, -1, -1);
            } catch (RuntimeException e4) {
                e4.printStackTrace();
                this = this.mRequest.mCallback;
                this.onCanceled(CancelReason.ERROR, 3, -1);
            }
        } catch (HttpRequest.HttpRequestException e5) {
            e = e5;
            i2 = i3;
        } catch (IllegalArgumentException e6) {
            i2 = i3;
            e6.printStackTrace();
            this = this.mRequest.mCallback;
            this.onCanceled(CancelReason.DEVICE_UNREGISTERED, i3, i3);
        } catch (OutOfMemoryError e7) {
            i2 = i3;
            e7.printStackTrace();
            this = this.mRequest.mCallback;
            this.onCanceled(CancelReason.ERROR, i3, i3);
        } catch (RuntimeException e8) {
            i2 = i3;
            e8.printStackTrace();
            this = this.mRequest.mCallback;
            this.onCanceled(CancelReason.ERROR, 3, i3);
        }
        if (i2 != 200) {
            if (i2 == 206) {
                Log.i(LOG_TAG, "Receive 206 Partial");
            } else if (i2 == 302) {
                String header = this.mHttpRequest.header("Location");
                if (!TextUtils.isEmpty(header)) {
                    int i4 = this.mPhoneId;
                    DownloadRequest downloadRequest = this.mRequest;
                    String sendAuthRequest = OpenIdAuth.sendAuthRequest(new OpenIdAuth.OpenIdRequest(i4, header, downloadRequest.mNetwork, downloadRequest.mUserAgent, downloadRequest.mTrustAllCerts));
                    if (sendAuthRequest != null) {
                        this.mHttpRequest.disconnect();
                        this.mRequest.mUrl = sendAuthRequest;
                        i3 = sendEmptyGetRequest(i);
                        this = this;
                    }
                }
                Log.e(LOG_TAG, "sendGetRequest: OpenId Process failed!");
                this.mRequest.mCallback.onCanceled(CancelReason.ERROR, -1, -1);
                this = this;
            } else if (i2 == 401) {
                String str = LOG_TAG;
                Log.i(str, "Receive 401 Unauthorized, attempt to generate response");
                this.mHttpRequest.disconnect();
                String wwwAuthenticate = this.mHttpRequest.wwwAuthenticate();
                IMSLog.s(str, "challenge: " + wwwAuthenticate);
                String authorizationHeader = HttpAuthGenerator.getAuthorizationHeader(this.mPhoneId, this.mRequest.mUrl, wwwAuthenticate, "GET", this.mHttpRequest.getCipherSuite());
                this.mHttpRequest = HttpRequest.get(this.mRequest.mUrl);
                setDefaultHeaders(i);
                this.mHttpRequest.authorization(authorizationHeader);
                i3 = this.mHttpRequest.code();
                this = this;
            } else {
                IMSLog.e(LOG_TAG, "Receive HTTP response " + this.mHttpRequest.message() + " neither OK nor UNAUTHORIZED");
                cancelRequest(this.mHttpRequest);
            }
            i3 = i2;
            this = this;
        } else {
            String str2 = LOG_TAG;
            Log.i(str2, "Receive 200 OK");
            if (this.mHttpRequest.header("Content-Type") != null && this.mHttpRequest.header("Content-Type").contains("application/vnd.gsma.eap-relay.v1.0+json")) {
                this.mHttpRequest.disconnect();
                String body = this.mHttpRequest.body();
                if (body != null && (eAPAkaChallengeResponse = HttpAuthGenerator.getEAPAkaChallengeResponse(this.mPhoneId, body)) != null) {
                    this.mHttpRequest = HttpRequest.post(this.mRequest.mUrl);
                    setDefaultHeaders(i);
                    this.mHttpRequest.contentType("application/vnd.gsma.eap-relay.v1.0+json");
                    this.mHttpRequest.send(eAPAkaChallengeResponse);
                    i3 = this.mHttpRequest.code();
                    this = this;
                } else {
                    Log.e(str2, "EAP AKA authentication failed, code: " + this.mHttpRequest.code());
                    this.mRequest.mCallback.onCanceled(CancelReason.ERROR, -1, -1);
                    this = this;
                }
            }
            i3 = i2;
            this = this;
        }
        return i3;
    }

    private int sendEmptyGetRequest(int i) {
        this.mHttpRequest = HttpRequest.get(this.mRequest.mUrl);
        setDefaultHeaders(i);
        return this.mHttpRequest.code();
    }

    private void setDefaultHeaders(int i) {
        HttpRequest httpRequest = this.mHttpRequest;
        DownloadRequest downloadRequest = this.mRequest;
        httpRequest.setParams(downloadRequest.mNetwork, false, 10000, FileTaskUtil.READ_DATA_TIMEOUT, downloadRequest.mUserAgent).bufferSize(i);
        if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.IS_EAP_SUPPORTED)) {
            this.mHttpRequest.header("Accept", "application/vnd.gsma.eap-relay.v1.0+json");
        }
        if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.FT_WITH_GBA) && this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.USE_USERIDENTITY_FOR_FTHTTP)) {
            String isimImpuAtIndex = TelephonyManagerWrapper.getInstance(this.mContext).getIsimImpuAtIndex(SimUtil.getSubId(this.mPhoneId), 0);
            if (TextUtils.isEmpty(isimImpuAtIndex)) {
                isimImpuAtIndex = ImsUtil.getPublicId(this.mPhoneId);
            }
            this.mHttpRequest.header("X-3GPP-Intended-Identity", CmcConstants.E_NUM_STR_QUOTE + isimImpuAtIndex + CmcConstants.E_NUM_STR_QUOTE);
        }
        long j = this.mTransferred;
        if (j > 0) {
            this.mHttpRequest.range(j, -1L);
        }
        if (this.mRequest.mTrustAllCerts) {
            this.mHttpRequest.trustAllCerts().trustAllHosts();
        }
    }
}
