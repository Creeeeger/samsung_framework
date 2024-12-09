package com.sec.internal.constants.ims.servicemodules.im.result;

import com.android.internal.util.Preconditions;
import com.sec.ims.util.ImsUri;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class StartImSessionResult {
    public String mAllowedMethods;
    public boolean mIsChatbotRole;
    public boolean mIsMsgFallbackSupported;
    public boolean mIsMsgRevokeSupported;
    public boolean mIsProvisional;
    public Object mRawHandle;
    public String mRemoteUserDisplayName;
    public final Result mResult;
    public int mRetryTimer;
    public ImsUri mSessionUri;

    public StartImSessionResult(Result result, ImsUri imsUri, Object obj) {
        this(result, imsUri, obj, 0, null, false, false, false, "");
    }

    public StartImSessionResult(Result result, ImsUri imsUri, Object obj, boolean z) {
        this.mResult = (Result) Preconditions.checkNotNull(result, "%s", new Object[]{"StartImSessionResult: result is null."});
        this.mSessionUri = imsUri;
        this.mRawHandle = obj;
        this.mIsProvisional = z;
        this.mRetryTimer = 0;
        this.mAllowedMethods = null;
        this.mRemoteUserDisplayName = "";
    }

    public StartImSessionResult(Result result, ImsUri imsUri, Object obj, int i, String str, boolean z, boolean z2, boolean z3, String str2) {
        this.mResult = (Result) Preconditions.checkNotNull(result, "%s", new Object[]{"StartImSessionResult: result is null."});
        this.mRemoteUserDisplayName = (String) Preconditions.checkNotNull(str2, "%s", new Object[]{"StartImSessionResult: displayName is null."});
        this.mSessionUri = imsUri;
        this.mRawHandle = obj;
        this.mRetryTimer = i;
        this.mAllowedMethods = str;
        this.mIsMsgRevokeSupported = z;
        this.mIsMsgFallbackSupported = z2;
        this.mIsChatbotRole = z3;
    }

    public String toString() {
        return "StartImSessionResult [mResult=" + this.mResult + ", mSessionUri=" + this.mSessionUri + ", mRawHandle=" + this.mRawHandle + ", mRetryTimer=" + this.mRetryTimer + ", mAllowedMethods=" + this.mAllowedMethods + ", mIsProvisional=" + this.mIsProvisional + ", mIsMsgRevokeSupported=" + this.mIsMsgRevokeSupported + ", mIsChatbotRole=" + this.mIsChatbotRole + ", mRemoteUserDisplayName=" + IMSLog.checker(this.mRemoteUserDisplayName) + "]";
    }

    public String toCriticalLog() {
        StringBuilder sb = new StringBuilder();
        sb.append("r=");
        sb.append(this.mRawHandle);
        sb.append(",t=");
        sb.append(this.mRetryTimer);
        sb.append(",p=");
        sb.append(this.mIsProvisional ? "1" : "0");
        sb.append(",v=");
        sb.append(this.mIsMsgRevokeSupported ? "1" : "0");
        sb.append(",b=");
        sb.append(this.mIsChatbotRole ? "1" : "0");
        sb.append(",u=");
        sb.append(this.mSessionUri);
        return sb.toString();
    }
}
