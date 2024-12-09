package com.sec.internal.ims.servicemodules.ss;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.telephony.PreciseDataConnectionState;
import android.telephony.ims.ImsSsInfo;
import android.text.TextUtils;
import com.sec.ims.settings.UserConfiguration;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.XmlCreator;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.httpclient.DnsController;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.gba.GbaException;
import com.sec.internal.ims.servicemodules.ss.CallBarringData;
import com.sec.internal.ims.servicemodules.ss.CallForwardingData;
import com.sec.internal.ims.servicemodules.ss.SsRuleData;
import com.sec.internal.ims.servicemodules.ss.UtConstant;
import com.sec.internal.ims.servicemodules.volte2.CallStateMachine;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.PdnEventListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import okhttp3.Dns;

/* loaded from: classes.dex */
public class UtStateMachine extends StateMachine {
    public static final int DOCUMENT_CACHE_RESET_TIMEOUT = 1000;
    public static final long HTTP_CONNECTION_TIMEOUT = 10000;
    public static final long HTTP_READ_TIMEOUT = 10000;
    public static final long HTTP_READ_TIMEOUT_GCF = 2000;
    public static final long HTTP_READ_TIMEOUT_TMB = 32000;
    public static final int MAX_RETRY_COUNT_412 = 3;
    public static final int PDN_LINGER_TIMEOUT = 5000;
    public static final long SECOND = 1000;
    public boolean isGetBeforePut;
    public boolean isRetryingCreatePdn;
    private ApnSettings mApn;
    public int mBsfRetryCounter;
    protected CallForwardingData mCFCache;
    private UtConfigData mConfig;
    private Context mContext;
    public int mCount412RetryDone;
    private Dns mDns;
    protected List<InetAddress> mDnsAddresses;
    public UtFeatureData mFeature;
    public boolean mForce403Error;
    protected boolean mHasCFCache;
    protected boolean mHasICBCache;
    protected boolean mHasOCBCache;
    protected CallBarringData mICBCache;
    private final IImsFramework mImsFramework;
    public boolean mIsFailedBySuspended;
    public boolean mIsGetAfter412;
    public boolean mIsGetForAllCb;
    public boolean mIsGetSdBy404;
    private boolean mIsRequestFailed;
    private boolean mIsRunningRequest;
    public boolean mIsSuspended;
    public boolean mIsUtConnectionError;
    public int mMainCondition;
    public int mNafRetryCounter;
    private Network mNetwork;
    protected CallBarringData mOCBCache;
    public IPdnController mPdnController;
    PdnEventListener mPdnListener;
    public int mPdnRetryCounter;
    public int mPdnType;
    private final List<UtProfile> mPendingRequests;
    public int mPhoneId;
    public int mPrevGetType;
    protected CallForwardingData mPreviousCFCache;
    protected UtProfile mProfile;
    protected RequestState mRequestState;
    protected ResponseState mResponseState;
    public boolean mSeparatedCFNL;
    public boolean mSeparatedCFNRY;
    public boolean mSeparatedCfAll;
    public boolean mSeparatedMedia;
    public SocketFactory mSocketFactory;
    protected UtStateMachine mThisSm;
    HttpRequestParams.HttpRequestCallback mUtCallback;
    public int mUtHttpRetryCounter;
    public int mUtRetryCounter;
    public final UtServiceModule mUtServiceModule;
    public boolean needPdnRequestForCW;
    public static final String LOG_TAG = UtServiceModule.class.getSimpleName();
    private static int mCBIdCounter = 0;

    private int getApnSettingFromPdnType(int i) {
        if (i == 0) {
            return 17;
        }
        if (i != 12) {
            return i != 27 ? -1 : 2048;
        }
        return 128;
    }

    protected UtStateMachine(String str, Looper looper, UtServiceModule utServiceModule, IImsFramework iImsFramework, Context context) {
        super(str, looper);
        this.mSocketFactory = null;
        this.mNetwork = null;
        this.mDns = null;
        this.mPhoneId = -1;
        this.mPdnType = -1;
        this.mApn = null;
        this.mConfig = null;
        this.mFeature = null;
        this.mProfile = null;
        this.mSeparatedCFNL = false;
        this.mSeparatedCFNRY = false;
        this.mSeparatedMedia = false;
        this.isGetBeforePut = false;
        this.mIsGetAfter412 = false;
        this.mSeparatedCfAll = false;
        this.mForce403Error = false;
        this.mIsGetForAllCb = false;
        this.mIsSuspended = false;
        this.mIsFailedBySuspended = false;
        this.mIsGetSdBy404 = false;
        this.mMainCondition = -1;
        this.mPrevGetType = -1;
        this.mCount412RetryDone = 0;
        this.mPendingRequests = new ArrayList();
        this.mIsRunningRequest = false;
        this.mRequestState = null;
        this.mResponseState = null;
        this.mPreviousCFCache = new CallForwardingData();
        this.mCFCache = null;
        this.mOCBCache = null;
        this.mICBCache = null;
        this.mHasCFCache = false;
        this.mHasOCBCache = false;
        this.mHasICBCache = false;
        this.needPdnRequestForCW = true;
        this.isRetryingCreatePdn = false;
        this.mDnsAddresses = new ArrayList();
        this.mIsRequestFailed = false;
        this.mNafRetryCounter = 0;
        this.mBsfRetryCounter = 0;
        this.mPdnRetryCounter = 0;
        this.mUtRetryCounter = 0;
        this.mUtHttpRetryCounter = 0;
        this.mIsUtConnectionError = false;
        this.mPdnController = null;
        this.mPdnListener = new PdnEventListener() { // from class: com.sec.internal.ims.servicemodules.ss.UtStateMachine.1
            @Override // com.sec.internal.interfaces.ims.core.PdnEventListener
            public void onConnected(int i, Network network) {
                UtLog.i(UtStateMachine.LOG_TAG, UtStateMachine.this.mPhoneId, "onConnected " + i + " with " + network + " mPdnType " + UtStateMachine.this.mPdnType);
                UtStateMachine utStateMachine = UtStateMachine.this;
                if (i != utStateMachine.mPdnType || network == null) {
                    return;
                }
                utStateMachine.mSocketFactory = network.getSocketFactory();
                UtStateMachine.this.mNetwork = network;
                NetworkCapabilities networkCapabilities = ((ConnectivityManager) UtStateMachine.this.mContext.getSystemService("connectivity")).getNetworkCapabilities(UtStateMachine.this.mNetwork);
                String obj = (networkCapabilities == null || networkCapabilities.getTransportInfo() == null) ? null : networkCapabilities.getTransportInfo().toString();
                UtStateMachine utStateMachine2 = UtStateMachine.this;
                utStateMachine2.mApn = ApnSettings.load(utStateMachine2.mContext, obj, UtStateMachine.this.mConfig.apnSelection, SimUtil.getSubId(UtStateMachine.this.mPhoneId));
                UtStateMachine.this.updateDnsInfo();
                UtStateMachine utStateMachine3 = UtStateMachine.this;
                utStateMachine3.sendMessage(utStateMachine3.obtainMessage(1));
            }

            @Override // com.sec.internal.interfaces.ims.core.PdnEventListener
            public void onDisconnected(int i) {
                UtLog.i(UtStateMachine.LOG_TAG, UtStateMachine.this.mPhoneId, "onDisconnected " + i);
                UtStateMachine utStateMachine = UtStateMachine.this;
                utStateMachine.mSocketFactory = null;
                utStateMachine.mNetwork = null;
                UtStateMachine.this.refreshDns();
                UtStateMachine.this.sendMessage(2);
            }

            @Override // com.sec.internal.interfaces.ims.core.PdnEventListener
            public void onSuspended(int i) {
                UtStateMachine utStateMachine = UtStateMachine.this;
                if (i == utStateMachine.mPdnType) {
                    UtLog.i(UtStateMachine.LOG_TAG, utStateMachine.mPhoneId, "onSuspended " + i);
                    UtStateMachine.this.mIsSuspended = true;
                }
            }

            @Override // com.sec.internal.interfaces.ims.core.PdnEventListener
            public void onResumed(int i) {
                UtStateMachine utStateMachine = UtStateMachine.this;
                if (i == utStateMachine.mPdnType) {
                    UtLog.i(UtStateMachine.LOG_TAG, utStateMachine.mPhoneId, "onResumed " + i);
                    UtStateMachine utStateMachine2 = UtStateMachine.this;
                    utStateMachine2.mIsSuspended = false;
                    if (utStateMachine2.mIsFailedBySuspended) {
                        utStateMachine2.mIsFailedBySuspended = false;
                        utStateMachine2.sendMessage(utStateMachine2.obtainMessage(1));
                    }
                }
            }
        };
        this.mUtCallback = new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.servicemodules.ss.UtStateMachine.2
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                UtStateMachine.this.sendMessage(10, httpResponseParams);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                int i;
                if (!(iOException.getCause() instanceof GbaException) || (i = ((GbaException) iOException.getCause()).getCode()) <= 99) {
                    i = 1015;
                }
                UtStateMachine.this.sendMessage(11, i, 0, iOException.getMessage());
            }
        };
        this.mThisSm = this;
        this.mUtServiceModule = utServiceModule;
        this.mImsFramework = iImsFramework;
        this.mContext = context;
        this.mRequestState = new RequestState(this);
        this.mResponseState = new ResponseState(this);
    }

    protected void init(int i) {
        addState(this.mRequestState);
        addState(this.mResponseState);
        this.mPhoneId = i;
        this.mPdnController = this.mImsFramework.getPdnController();
        setInitialState(this.mRequestState);
        this.mPendingRequests.clear();
        unlockProcessingRequest();
        PreciseAlarmManager.getInstance(this.mContext).removeMessage(obtainMessage(14));
    }

    protected void enqueueProfile(UtProfile utProfile) {
        synchronized (this.mPendingRequests) {
            this.mPendingRequests.add(utProfile);
        }
    }

    protected UtProfile dequeueProfile() {
        UtProfile remove;
        synchronized (this.mPendingRequests) {
            remove = this.mPendingRequests.remove(0);
        }
        return remove;
    }

    protected boolean lockProcessingRequest() {
        synchronized (this.mPendingRequests) {
            if (this.mPendingRequests.isEmpty() || this.mIsRunningRequest) {
                return false;
            }
            this.mIsRunningRequest = true;
            return true;
        }
    }

    protected boolean unlockProcessingRequest() {
        synchronized (this.mPendingRequests) {
            if (!this.mPendingRequests.isEmpty()) {
                return false;
            }
            this.mIsRunningRequest = false;
            return true;
        }
    }

    protected void query(UtProfile utProfile) {
        enqueueProfile(utProfile);
        if (lockProcessingRequest()) {
            processUtRequest();
        } else {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Other request is processing now");
        }
    }

    protected void processUtRequest() {
        removeMessages(15);
        sendMessageDelayed(15, 1017, 32500L);
        this.mProfile = dequeueProfile();
        removeMessages(2);
        removeMessages(100);
        initializeUtParameters();
        int checkUtInternalError = checkUtInternalError();
        if (checkUtInternalError != 0) {
            sendMessageDelayed(12, checkUtInternalError, 100L);
            return;
        }
        if (isPutRequestBlocked()) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "Insertion of new rule is prohibited.");
            sendMessageDelayed(12, 1012, 100L);
            return;
        }
        UtConfigData utConfigData = this.mConfig;
        if (utConfigData != null) {
            utConfigData.impu = this.mUtServiceModule.getPublicId(this.mPhoneId);
        }
        if (this.mUtServiceModule.isTerminalRequest(this.mPhoneId, this.mProfile)) {
            sendMessageDelayed(4, 100L);
        } else {
            sendMessageDelayed(100, 100L);
        }
    }

    public boolean isPutRequestBlocked() {
        if (this.mFeature.insertNewRule) {
            return false;
        }
        int i = this.mProfile.type;
        return i == 101 ? (this.mCFCache == null || hasConditionOnCfCache()) ? false : true : i == 105 ? (this.mOCBCache == null || hasConditionOnCbCache()) ? false : true : (i != 103 || this.mICBCache == null || hasConditionOnCbCache()) ? false : true;
    }

    private void initializeUtParameters() {
        this.mUtHttpRetryCounter = 0;
        this.mUtRetryCounter = 0;
        this.mBsfRetryCounter = 0;
        this.mNafRetryCounter = 0;
        this.mSeparatedCFNL = false;
        this.mIsUtConnectionError = false;
        this.mIsRequestFailed = false;
        this.mIsFailedBySuspended = false;
        this.mIsSuspended = false;
        this.mSeparatedMedia = false;
        this.mSeparatedCfAll = false;
        this.mSeparatedCFNRY = false;
        this.mMainCondition = -1;
    }

    protected int checkUtInternalError() {
        if (isForbidden()) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "SS request is blocked by previous 403 error");
            return 1003;
        }
        if (UtUtils.isCallBarringType(this.mProfile.type) && this.mProfile.condition == 7) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "not support All CB over IMS. CSFB.");
            return 1002;
        }
        int checkAvailabilityError = this.mUtServiceModule.checkAvailabilityError(this.mPhoneId);
        if (checkAvailabilityError != 0) {
            return checkAvailabilityError;
        }
        if (this.mUtServiceModule.isInvalidUtRequest(this.mPhoneId, this.mProfile)) {
            return 1008;
        }
        if (!this.mUtServiceModule.isTerminalRequest(this.mPhoneId, this.mProfile) && !this.mUtServiceModule.checkXcapApn(this.mPhoneId)) {
            return 1009;
        }
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if ((simMno == Mno.KOODO || simMno == Mno.TELUS) && UtUtils.isCallBarringType(this.mProfile.type)) {
            return 1010;
        }
        if (simMno != Mno.WIND_GREECE || !isServiceDeactive()) {
            return 0;
        }
        IMSLog.e(LOG_TAG, this.mPhoneId, "Service is disabled on network side");
        return 1011;
    }

    protected void completeUtRequest() {
        completeUtRequest((Bundle[]) null);
    }

    protected void completeUtRequest(boolean z) {
        Bundle[] bundleArr = {new Bundle()};
        bundleArr[0].putBoolean("status", z);
        completeUtRequest(bundleArr);
    }

    protected void completeUtRequest(Bundle bundle) {
        completeUtRequest(new Bundle[]{bundle});
    }

    protected void completeUtRequest(Bundle[] bundleArr) {
        UtProfile utProfile = this.mProfile;
        int i = utProfile.type;
        int i2 = utProfile.requestId;
        printCompleteLog(bundleArr, i, i2);
        if (SimUtil.getSimMno(this.mPhoneId).isChn()) {
            DnsController.correctServerAddr(this.mNafRetryCounter, this.mBsfRetryCounter);
        }
        removeMessages(15);
        if (this.mFeature.isDisconnectXcapPdn) {
            sendDisconnectPdnWithDelay();
        }
        this.mProfile = null;
        transitionTo(this.mRequestState);
        this.mUtServiceModule.notifySuccessResult(this.mPhoneId, i, i2, bundleArr);
        if (unlockProcessingRequest()) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "Process next request...");
        processUtRequest();
    }

    private void notifyFailResult(int i, Bundle bundle) {
        int i2 = this.mProfile.type;
        if (i2 != 101 && i2 != 103 && i2 != 105 && i2 != 119) {
            switch (i2) {
                case 114:
                    if (this.mIsGetAfter412) {
                        this.mCount412RetryDone = 0;
                        bundle.putInt("errorCode", UtConstant.UtError.HTTP_412_PRECONDITION_FAILED);
                        bundle.putString("errorMsg", "Precondition Failed");
                        i2 = 115;
                        break;
                    }
                    break;
                case 116:
                    if (this.mIsGetSdBy404) {
                        return;
                    }
                    this.mUtServiceModule.setSentSimServDoc(this.mPhoneId, false);
                    return;
            }
            this.mUtServiceModule.notifyFailResult(this.mPhoneId, i2, i, bundle);
        }
        this.mCount412RetryDone = 0;
        this.mUtServiceModule.notifyFailResult(this.mPhoneId, i2, i, bundle);
    }

    protected void failUtRequest(Bundle bundle) {
        UtFeatureData utFeatureData;
        UtProfile utProfile = this.mProfile;
        int i = utProfile.type;
        int i2 = utProfile.requestId;
        printFailLog(bundle, i, i2);
        this.mIsGetForAllCb = false;
        this.mIsGetAfter412 = false;
        this.isGetBeforePut = false;
        removeMessages(15);
        if (bundle.getInt("originErrorCode") != 1017 && ((utFeatureData = this.mFeature) == null || utFeatureData.isDisconnectXcapPdn)) {
            sendDisconnectPdnWithDelay();
        }
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if ((simMno == Mno.CTC || simMno == Mno.CTCMO) && bundle.getInt("errorCode", 0) == 403) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "CTC have to retry to CDMA dial");
            bundle.putInt("errorCode", CallStateMachine.DELAYED_EPSFB_CHECK_TIMING);
        }
        notifyFailResult(i2, bundle);
        this.mProfile = null;
        transitionTo(this.mRequestState);
        if (unlockProcessingRequest()) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "Process next request...");
        processUtRequest();
    }

    public boolean isServiceDeactive() {
        int i = this.mProfile.type;
        if (i == 101) {
            CallForwardingData callForwardingData = this.mCFCache;
            return (callForwardingData == null || callForwardingData.active) ? false : true;
        }
        if (i == 103) {
            CallBarringData callBarringData = this.mICBCache;
            return (callBarringData == null || callBarringData.active) ? false : true;
        }
        if (i != 105) {
            return false;
        }
        CallBarringData callBarringData2 = this.mOCBCache;
        return (callBarringData2 == null || callBarringData2.active) ? false : true;
    }

    public boolean hasConditionOnCfCache() {
        int i = this.mProfile.condition;
        if (i == 7) {
            return true;
        }
        if (i == 4 || i == 5) {
            for (int i2 = i == 5 ? 1 : 0; i2 < 4; i2++) {
                if (!this.mCFCache.isExist(i2)) {
                    IMSLog.e(LOG_TAG, this.mPhoneId, "The network doesn't have CF condition " + i2);
                    return false;
                }
            }
        } else if (!this.mCFCache.isExist(i)) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "The network doesn't have CF condition " + this.mProfile.condition);
            return false;
        }
        return true;
    }

    public boolean hasConditionOnCbCache() {
        UtProfile utProfile = this.mProfile;
        if (utProfile.type == 105) {
            if (this.mOCBCache.isExist(utProfile.condition)) {
                return true;
            }
            IMSLog.e(LOG_TAG, this.mPhoneId, "The network doesn't have OCB condition " + this.mProfile.condition);
            return false;
        }
        if (this.mICBCache.isExist(utProfile.condition)) {
            return true;
        }
        IMSLog.e(LOG_TAG, this.mPhoneId, "The network doesn't have ICB condition " + this.mProfile.condition);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    protected void processTerminalRequest() {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "process terminal request " + UtLog.getStringRequestType(this.mProfile.type));
        UtProfile utProfile = this.mProfile;
        int i = utProfile.type;
        if (i == 114) {
            if (SimUtil.getSimMno(this.mPhoneId) == Mno.TELSTRA && this.needPdnRequestForCW) {
                sendMessage(100);
                return;
            }
            boolean userSetToBoolean = getUserSetToBoolean(this.mPhoneId, "enable_call_wait");
            IMSLog.i(str, this.mPhoneId, "terminal CallWaiting " + userSetToBoolean);
            completeUtRequest(userSetToBoolean);
            return;
        }
        if (i != 115) {
            switch (i) {
                case 102:
                case 104:
                    int userSetToInt = getUserSetToInt(this.mPhoneId, "ss_volte_cb_pref", 0) & getUserSetToInt(this.mPhoneId, "ss_video_cb_pref", 0);
                    int convertCbTypeToBitMask = UtUtils.convertCbTypeToBitMask(this.mProfile.condition);
                    Bundle[] bundleArr = new Bundle[1];
                    ?? r5 = (userSetToInt & convertCbTypeToBitMask) != convertCbTypeToBitMask ? 0 : 1;
                    Bundle bundle = new Bundle();
                    bundle.putInt("status", r5);
                    bundle.putInt(UtConstant.CONDITION, this.mProfile.condition);
                    bundle.putInt(UtConstant.SERVICECLASS, this.mProfile.serviceClass);
                    bundleArr[0] = bundle;
                    IMSLog.i(str, this.mPhoneId, "terminal CallBarring " + this.mProfile.condition + " " + ((boolean) r5));
                    completeUtRequest(bundleArr);
                    break;
                case 103:
                case 105:
                    int convertCbTypeToBitMask2 = UtUtils.convertCbTypeToBitMask(utProfile.condition);
                    boolean z = this.mProfile.action == 1;
                    setCbUserConfig(MEDIA.AUDIO, z, convertCbTypeToBitMask2);
                    setCbUserConfig(MEDIA.VIDEO, z, convertCbTypeToBitMask2);
                    completeUtRequest();
                    break;
                case 106:
                    int userSetToInt2 = getUserSetToInt(this.mPhoneId, "ss_clip_pref", 1);
                    Parcelable build = new ImsSsInfo.Builder(userSetToInt2).setIncomingCommunicationBarringNumber("").build();
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable(UtConstant.IMSSSINFO, build);
                    IMSLog.i(str, this.mPhoneId, "terminal CLIP = " + userSetToInt2);
                    completeUtRequest(bundle2);
                    break;
                case 107:
                    setUserSet(this.mPhoneId, "ss_clip_pref", utProfile.enable ? 1 : 0);
                    completeUtRequest();
                    break;
                case 108:
                    int[] iArr = {getUserSetToInt(this.mPhoneId, "ss_clir_pref", 0), 4};
                    Bundle bundle3 = new Bundle();
                    bundle3.putIntArray(UtConstant.QUERYCLIR, iArr);
                    IMSLog.i(str, this.mPhoneId, "terminal CLIR = " + iArr[0]);
                    completeUtRequest(bundle3);
                    break;
                case 109:
                    setUserSet(this.mPhoneId, "ss_clir_pref", utProfile.condition);
                    completeUtRequest();
                    break;
                default:
                    IMSLog.i(str, this.mPhoneId, "no matched type " + this.mProfile.type);
                    Bundle bundle4 = new Bundle();
                    bundle4.putInt("errorCode", 0);
                    failUtRequest(bundle4);
                    break;
            }
            return;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if ((simManagerFromSimSlot == null ? Mno.DEFAULT : simManagerFromSimSlot.getSimMno()) == Mno.TELSTRA && this.needPdnRequestForCW) {
            IMSLog.i(str, this.mPhoneId, "Telstra needs to connect xcap pdn for call waiting to check non VoLTE SIM.");
            sendMessage(100);
        } else {
            setUserSet(this.mPhoneId, "enable_call_wait", this.mProfile.enable);
            completeUtRequest();
        }
    }

    private void setCbUserConfig(MEDIA media, boolean z, int i) {
        String str;
        int i2 = 0;
        if (media == MEDIA.AUDIO) {
            str = "ss_volte_cb_pref";
            i2 = getUserSetToInt(this.mPhoneId, "ss_volte_cb_pref", 0);
        } else if (media == MEDIA.VIDEO) {
            str = "ss_video_cb_pref";
            i2 = getUserSetToInt(this.mPhoneId, "ss_video_cb_pref", 0);
        } else {
            str = null;
        }
        setUserSet(this.mPhoneId, str, z ? i2 | i : (~i) & i2);
    }

    protected void updateConfig(UtConfigData utConfigData) {
        this.mConfig = utConfigData;
        this.mFeature = UtFeatureData.getBuilder().setPhoneId(this.mPhoneId).build();
        if (SimUtil.getSimMno(this.mPhoneId) == Mno.GCF && "CHM".equalsIgnoreCase(OmcCode.get())) {
            this.mFeature.setTurnOffGcfCondition();
        }
        this.mUtServiceModule.writeDump(this.mPhoneId, "mConfig = " + this.mConfig.toString() + " mFeature = " + this.mFeature.toString() + " ssDomain = " + UtUtils.getSetting(this.mPhoneId, GlobalSettingsConstants.SS.DOMAIN, "CS") + " ussdDomain = " + UtUtils.getSetting(this.mPhoneId, GlobalSettingsConstants.Call.USSD_DOMAIN, "CS"));
        this.needPdnRequestForCW = true;
        this.mIsGetForAllCb = false;
        this.mIsGetSdBy404 = false;
        this.isRetryingCreatePdn = false;
        this.isGetBeforePut = false;
        clearCachedSsData(-1);
        setForce403Error(false);
        PreciseAlarmManager.getInstance(this.mContext).removeMessage(obtainMessage(14));
    }

    protected UtConfigData getConfig() {
        return this.mConfig;
    }

    public void clearCachedSsData(int i) {
        if (i == 101) {
            this.mCFCache = null;
            this.mHasCFCache = false;
            return;
        }
        if (i == 103) {
            this.mICBCache = null;
            this.mHasICBCache = false;
        } else {
            if (i == 105) {
                this.mOCBCache = null;
                this.mHasOCBCache = false;
                return;
            }
            this.mCFCache = null;
            this.mICBCache = null;
            this.mOCBCache = null;
            this.mHasICBCache = false;
            this.mHasOCBCache = false;
            this.mHasCFCache = false;
        }
    }

    protected void onAirplaneModeChanged(int i) {
        if (i == 1) {
            if (SimUtil.getSimMno(this.mPhoneId).isChn() || SimUtil.getSimMno(this.mPhoneId).isHkMo() || SimUtil.getSimMno(this.mPhoneId).isTw()) {
                setForce403Error(false);
            }
            removeMessages(2);
            transitionTo(this.mRequestState);
            sendMessage(2);
        }
    }

    protected ImsUri.UriType getPreferredUriType() {
        if ("TEL".equalsIgnoreCase(this.mFeature.cfUriType)) {
            return ImsUri.UriType.TEL_URI;
        }
        return ImsUri.UriType.SIP_URI;
    }

    private boolean isTelUriUsePhoneContext(Mno mno) {
        return mno.isOneOf(Mno.VODAFONE_UK, Mno.SFR, Mno.SOFTBANK, Mno.TELSTRA, Mno.ETISALAT_UAE);
    }

    private boolean isGcfTelUri(Mno mno) {
        String str = OmcCode.get();
        if (mno == Mno.GCF) {
            return "CHM".equalsIgnoreCase(str) || "CBK".equalsIgnoreCase(str) || "CHC".equalsIgnoreCase(str);
        }
        return false;
    }

    protected String getNetworkPreferredUri(String str) {
        ImsUri parse;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        ImsUri.UriType preferredUriType = getPreferredUriType();
        String domain = UtUtils.getDomain(this.mUtServiceModule.getPublicId(this.mPhoneId));
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if (isGcfTelUri(simMno)) {
            preferredUriType = ImsUri.UriType.TEL_URI;
        }
        String replaceAll = str.replaceAll("\\p{Z}|\\p{Space}", "");
        if (replaceAll.charAt(0) != '+') {
            replaceAll = makeInternationalFormat(simMno, preferredUriType, replaceAll, domain);
        }
        if (domain != null && preferredUriType == ImsUri.UriType.SIP_URI) {
            parse = ImsUri.parse("sip:" + replaceAll + "@" + domain);
            parse.setUserParam(PhoneConstants.PHONE_KEY);
        } else {
            parse = ImsUri.parse("tel:" + replaceAll);
        }
        return parse.toString();
    }

    private int getPdnType() {
        UtConfigData utConfigData = this.mConfig;
        String str = utConfigData != null ? utConfigData.apnSelection : "xcap";
        if ("cbs".equalsIgnoreCase(str)) {
            return 12;
        }
        if ("default".equalsIgnoreCase(str)) {
            return 0;
        }
        return "wifi".equalsIgnoreCase(str) ? 1 : 27;
    }

    private String makeInternationalFormat(Mno mno, ImsUri.UriType uriType, String str, String str2) {
        String generate3GPPDomain = UtUtils.generate3GPPDomain(SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId));
        if (this.mFeature.isNeedInternationalNumber) {
            return UtUtils.makeInternationalNumber(str, mno);
        }
        if (mno == Mno.EASTLINK) {
            if (str.length() == 11) {
                return "+" + str;
            }
            if (str.length() != 10) {
                return str;
            }
            return "+1" + str;
        }
        if (str2 != null && uriType == ImsUri.UriType.SIP_URI) {
            if (!mno.isTmobile() && mno != Mno.TELEKOM_ALBANIA) {
                if (mno == Mno.TELENOR_SWE) {
                    return str;
                }
                return str + ";phone-context=" + str2;
            }
            if (generate3GPPDomain != null) {
                return str + ";phone-context=" + generate3GPPDomain;
            }
            return str + ";phone-context=" + str2;
        }
        if (mno == Mno.DTAC) {
            if (this.mProfile.action == 0) {
                return UtUtils.makeInternationalNumber(str, mno);
            }
            return str + ";phone-context=ims.mnc005.mcc520.3gppnetwork.org";
        }
        if (mno == Mno.SINGTEL) {
            return str + ";phone-context=+65";
        }
        if (mno == Mno.SMARTONE) {
            return str + ";phone-context=+852";
        }
        if (str2 != null && isTelUriUsePhoneContext(mno)) {
            return str + ";phone-context=" + str2;
        }
        if ((mno != Mno.CTC && mno != Mno.CTCMO && mno != Mno.ETISALAT_UAE) || generate3GPPDomain == null) {
            return str;
        }
        return str + ";phone-context=" + generate3GPPDomain;
    }

    protected boolean hasConnection() {
        if (this.mPdnType == -1) {
            this.mPdnType = getPdnType();
        }
        return this.mPdnController.isConnected(this.mPdnType, this.mPdnListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004a, code lost:
    
        if (r8.mPhoneId == r4) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void sendDisconnectPdnWithDelay() {
        /*
            r8 = this;
            r0 = 2
            r8.removeMessages(r0)
            com.sec.internal.ims.servicemodules.ss.UtProfile r1 = r8.mProfile
            int r1 = r1.type
            r2 = 116(0x74, float:1.63E-43)
            r3 = 0
            if (r1 != r2) goto Lf
            r1 = r3
            goto L53
        Lf:
            com.sec.internal.ims.servicemodules.ss.UtFeatureData r1 = r8.mFeature
            r2 = 5000(0x1388, float:7.006E-42)
            if (r1 == 0) goto L51
            int r1 = r1.delay_disconnect_pdn
            if (r1 <= r2) goto L4d
            java.util.List r4 = com.sec.internal.ims.core.sim.SimManagerFactory.getAllSimManagers()
            java.util.Iterator r4 = r4.iterator()
        L21:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L42
            java.lang.Object r5 = r4.next()
            com.sec.internal.interfaces.ims.core.ISimManager r5 = (com.sec.internal.interfaces.ims.core.ISimManager) r5
            boolean r6 = r5.isSimAvailable()
            if (r6 != 0) goto L3f
            int r5 = r5.getSimState()
            if (r5 != 0) goto L21
            boolean r5 = com.sec.internal.helper.SimUtil.isDualIMS()
            if (r5 == 0) goto L21
        L3f:
            int r3 = r3 + 1
            goto L21
        L42:
            int r4 = com.sec.internal.helper.SimUtil.getActiveDataPhoneId()
            if (r3 >= r0) goto L51
            int r5 = r8.mPhoneId
            if (r5 == r4) goto L4d
            goto L51
        L4d:
            r7 = r3
            r3 = r1
            r1 = r7
            goto L53
        L51:
            r1 = r3
            r3 = r2
        L53:
            java.lang.String r2 = com.sec.internal.ims.servicemodules.ss.UtStateMachine.LOG_TAG
            int r4 = r8.mPhoneId
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "sendDisconnectPdnWithDelay: "
            r5.append(r6)
            r5.append(r3)
            java.lang.String r6 = "ms, loadedSim : "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            com.sec.internal.log.IMSLog.i(r2, r4, r1)
            long r1 = (long) r3
            r8.sendMessageDelayed(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.ss.UtStateMachine.sendDisconnectPdnWithDelay():void");
    }

    public void handlePdnFail(PreciseDataConnectionState preciseDataConnectionState) {
        Message obtainMessage;
        if (this.mIsRequestFailed || this.mProfile == null) {
            return;
        }
        int dataConnectionFailCause = preciseDataConnectionState.getDataConnectionFailCause();
        int apnSettingFromPdnType = getApnSettingFromPdnType(this.mPdnType);
        if (preciseDataConnectionState.getApnSetting() == null || (preciseDataConnectionState.getApnSetting().getApnTypeBitmask() & apnSettingFromPdnType) != apnSettingFromPdnType || isRetryPdnFailCause(dataConnectionFailCause)) {
            return;
        }
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "XCAP PDN setup failed. failCause = " + dataConnectionFailCause + ", mPdnRetryCounter : " + this.mPdnRetryCounter);
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if ((simMno == Mno.CHT || simMno == Mno.SINGTEL) && (dataConnectionFailCause == 55 || dataConnectionFailCause == 38)) {
            IMSLog.e(str, this.mPhoneId, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED or NETWORK_FAILURE need retry.");
            this.isRetryingCreatePdn = true;
            removeMessages(2);
            removeMessages(100);
            sendMessageDelayed(obtainMessage(2), 1000L);
            sendMessageDelayed(obtainMessage(100), 1500L);
            return;
        }
        if (simMno == Mno.ETISALAT_UAE && dataConnectionFailCause == 38) {
            IMSLog.i(str, "Etisalat isRetryFailCause: " + dataConnectionFailCause);
            return;
        }
        if (simMno == Mno.VODAFONE_UK && dataConnectionFailCause == 27) {
            IMSLog.e(str, this.mPhoneId, "Vodafone UK returns MISSING_UNKNOWN_APN for non VoLTE SIM.");
            dataConnectionFailCause = 33;
        }
        this.mUtServiceModule.writeDump(this.mPhoneId, "PDN failCause : " + dataConnectionFailCause);
        IMSLog.c(LogClass.UT_PDN_FAILURE, this.mPhoneId + "," + dataConnectionFailCause);
        this.needPdnRequestForCW = false;
        if (getCurrentState() == this.mRequestState) {
            removeMessages(2);
            sendMessage(2);
        }
        if (this.mUtServiceModule.isTerminalRequest(this.mPhoneId, this.mProfile)) {
            IMSLog.i(str, this.mPhoneId, "Terminal request, should ignore pdn failed event");
            return;
        }
        if (needToCsfb(dataConnectionFailCause, simMno)) {
            obtainMessage = obtainMessage(12, 403);
        } else {
            IMSLog.e(str, this.mPhoneId, "Disconnect xcap pdn");
            obtainMessage = obtainMessage(12, dataConnectionFailCause + 10022);
        }
        sendMessage(obtainMessage);
    }

    private boolean needToCsfb(int i, Mno mno) {
        if (i == 33) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "needToCsfb :This SIM is not subscribed for xcap");
            return true;
        }
        if ((mno != Mno.ORANGE && mno != Mno.ORANGE_POLAND && mno != Mno.ORANGE_SLOVAKIA) || i == 0 || i == 65540) {
            return false;
        }
        IMSLog.e(LOG_TAG, this.mPhoneId, "needToCsfb : xcap pdn rejected for orange group");
        return true;
    }

    private boolean isRetryPdnFailCause(int i) {
        if (i != 0 && i != 14 && i != 65537) {
            return false;
        }
        String str = LOG_TAG;
        IMSLog.i(str, "isRetryFailCause: " + i);
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if ((simMno == Mno.CTC || simMno == Mno.CU) && i == 0) {
            IMSLog.i(str, "pdnRetryCounter: " + this.mPdnRetryCounter);
            int i2 = this.mPdnRetryCounter;
            if (i2 > 1) {
                return false;
            }
            this.mPdnRetryCounter = i2 + 1;
        }
        return true;
    }

    public void handleEpdgAvailabilityChanged(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleEpdgAvailabilityChanged: to " + z);
        if (!z && this.mProfile == null && hasConnection()) {
            removeMessages(2);
            sendMessage(2);
        }
    }

    protected void disconnectPdn() {
        removeMessages(1);
        removeMessages(2);
        if (this.mPdnType != -1) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "disconnectPdn: mPdnType " + this.mPdnType);
            this.mPdnController.stopPdnConnectivity(this.mPdnType, this.mPhoneId, this.mPdnListener);
            sendMessage(3);
        }
    }

    public boolean isForbidden() {
        return this.mForce403Error;
    }

    public void setForce403Error(boolean z) {
        this.mForce403Error = z;
    }

    private String updateCallforwardingInfo(Mno mno) {
        String xcapXml;
        UtProfile utProfile;
        int i;
        if (!this.mFeature.support_media) {
            this.mProfile.serviceClass = 255;
        } else if (mno != Mno.RJIL && UtUtils.convertToMedia(this.mProfile.serviceClass) == MEDIA.ALL) {
            this.mProfile.serviceClass = 1;
        }
        UtProfile utProfile2 = this.mProfile;
        if (utProfile2.action == 0 && TextUtils.isEmpty(utProfile2.number)) {
            UtProfile utProfile3 = this.mProfile;
            utProfile3.number = this.mPreviousCFCache.getRule(utProfile3.condition, UtUtils.convertToMedia(utProfile3.serviceClass)).fwdElm.target;
            IMSLog.i(LOG_TAG, this.mPhoneId, "previous activated number set " + IMSLog.checker(this.mProfile.number));
        }
        UtFeatureData utFeatureData = this.mFeature;
        if (!utFeatureData.isCFSingleElement || (i = (utProfile = this.mProfile).condition) == 5 || i == 4) {
            xcapXml = XmlCreator.toXcapXml(UtUtils.makeMultipleXml(getCfRuleSet(), mno, this.mFeature.support_ss_namespace));
        } else if (i == 7) {
            xcapXml = XmlCreator.toXcapXml(UtUtils.makeNoReplyTimerXml(utProfile.timeSeconds, utFeatureData.support_ss_namespace));
        } else if ((mno == Mno.SINGTEL || mno == Mno.FET) && !this.mSeparatedCFNRY && i == 2) {
            xcapXml = XmlCreator.toXcapXml(UtUtils.makeSingleXml(getCallForwardRule(i, UtUtils.convertToMedia(utProfile.serviceClass)), this.mFeature.support_ss_namespace, mno, this.mProfile.timeSeconds));
        } else {
            xcapXml = XmlCreator.toXcapXml(UtUtils.makeSingleXml(getCallForwardRule(i, UtUtils.convertToMedia(utProfile.serviceClass)), this.mFeature.support_ss_namespace, mno));
        }
        UtProfile utProfile4 = this.mProfile;
        if (utProfile4.action == 4) {
            this.mPreviousCFCache.getRule(utProfile4.condition, UtUtils.convertToMedia(utProfile4.serviceClass)).clear();
        }
        return xcapXml;
    }

    protected String updateUtDetailInfo() {
        String updateCallforwardingInfo;
        int i;
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        UtProfile utProfile = this.mProfile;
        int i2 = utProfile.type;
        if (i2 != 101) {
            if (i2 == 103 || i2 == 105) {
                UtFeatureData utFeatureData = this.mFeature;
                if (!utFeatureData.support_media || utFeatureData.noMediaForCB) {
                    utProfile.serviceClass = 255;
                } else if (simMno != Mno.RJIL && UtUtils.convertToMedia(utProfile.serviceClass) == MEDIA.ALL) {
                    this.mProfile.serviceClass = 1;
                }
                if (simMno == Mno.VODAFONE_AUSTRALIA) {
                    UtProfile utProfile2 = this.mProfile;
                    if (utProfile2.serviceClass == 8) {
                        utProfile2.serviceClass = 1;
                    }
                }
                if (simMno.isOneOf(Mno.HK3, Mno.FET, Mno.CHT) && ((i = this.mProfile.condition) == 8 || i == 9)) {
                    UtLog.i(LOG_TAG, this.mPhoneId, "3HK & FET & CHT mo mt");
                    updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeMultipleXml(getCbRuleSetForAll(this.mProfile.type, simMno), this.mProfile.type, simMno, this.mFeature.support_ss_namespace));
                } else if (!this.mFeature.isCBSingleElement) {
                    updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeMultipleXml(getCbRuleSet(this.mProfile.type), this.mProfile.type, simMno, this.mFeature.support_ss_namespace));
                } else {
                    UtProfile utProfile3 = this.mProfile;
                    updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeSingleXml(getCallBarringRule(utProfile3.type, UtUtils.convertToMedia(utProfile3.serviceClass)), simMno, this.mFeature.support_ss_namespace));
                }
            } else if (i2 == 107) {
                updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeSingleXml(UtElement.ELEMENT_OIP, utProfile.enable, this.mFeature.support_ss_namespace));
            } else if (i2 != 109) {
                updateCallforwardingInfo = i2 != 115 ? "" : XmlCreator.toXcapXml(UtUtils.makeSingleXml("communication-waiting", utProfile.enable, this.mFeature.support_ss_namespace));
            } else if (simMno == Mno.VINAPHONE) {
                updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeSingleXml(UtElement.ELEMENT_OIR, utProfile.condition == 1, this.mFeature.support_ss_namespace));
            } else {
                updateCallforwardingInfo = XmlCreator.toXcapXml(UtUtils.makeSingleXml(UtElement.ELEMENT_OIR, utProfile.condition, this.mFeature.support_ss_namespace));
            }
        } else {
            updateCallforwardingInfo = updateCallforwardingInfo(simMno);
        }
        UtLog.i(LOG_TAG, this.mPhoneId, "Print PUT Body : " + IMSLog.numberChecker(updateCallforwardingInfo));
        return updateCallforwardingInfo;
    }

    private boolean isSupportfwd(Mno mno) {
        return (mno == Mno.KOODO || mno == Mno.VIVACOM_BULGARIA || mno == Mno.WIND_GREECE || mno == Mno.CLARO_DOMINICAN || mno == Mno.TELUS) ? false : true;
    }

    protected CallForwardingData getCfRuleSet() {
        int i;
        int i2;
        int i3;
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        CallForwardingData callForwardingData = this.mCFCache;
        if (callForwardingData != null && (i2 = this.mProfile.condition) != 5 && i2 != 4) {
            CallForwardingData mo1178clone = callForwardingData.mo1178clone();
            Iterator<SsRuleData.SsRule> it = mo1178clone.rules.iterator();
            boolean z = false;
            while (it.hasNext()) {
                CallForwardingData.Rule rule = (CallForwardingData.Rule) it.next();
                List<ForwardElm> list = rule.fwdElm.fwdElm;
                if (list != null && list.size() > 0 && isSupportfwd(simMno)) {
                    rule.fwdElm.fwdElm.clear();
                }
                Condition condition = rule.conditions;
                int i4 = condition.condition;
                UtProfile utProfile = this.mProfile;
                if (i4 == utProfile.condition && (condition.media.contains(UtUtils.convertToMedia(utProfile.serviceClass)) || (!this.mFeature.supportAlternativeMediaForCf ? !simMno.isOneOf(Mno.BELL, Mno.CSL, Mno.PCCW) : !rule.conditions.media.contains(MEDIA.ALL)))) {
                    UtProfile utProfile2 = this.mProfile;
                    int i5 = utProfile2.action;
                    if (i5 == 3) {
                        rule.conditions.state = true;
                        rule.fwdElm.target = utProfile2.number;
                    } else if (i5 == 1) {
                        rule.conditions.state = true;
                        if (!TextUtils.isEmpty(utProfile2.number)) {
                            rule.fwdElm.target = this.mProfile.number;
                        }
                    } else {
                        rule.conditions.state = false;
                        if (i5 == 4) {
                            rule.fwdElm.target = "";
                        }
                    }
                    rule.conditions.action = this.mProfile.action;
                    if (!TextUtils.isEmpty(rule.fwdElm.target) && !rule.fwdElm.target.startsWith("sip:") && !rule.fwdElm.target.startsWith("tel:") && !rule.fwdElm.target.startsWith("voicemail:")) {
                        ForwardTo forwardTo = rule.fwdElm;
                        forwardTo.target = getNetworkPreferredUri(forwardTo.target);
                    }
                    if (this.mSeparatedCFNL) {
                        this.mCFCache.replaceRule(rule);
                    }
                    z = true;
                }
            }
            if (this.mProfile.condition == 0 && z) {
                if (simMno == Mno.BELL) {
                    return mo1178clone;
                }
                if (simMno.isOneOf(Mno.CSL, Mno.PCCW)) {
                    mo1178clone.replyTimer = 0;
                    return mo1178clone;
                }
            }
            UtProfile utProfile3 = this.mProfile;
            if (!mo1178clone.isExist(utProfile3.condition, UtUtils.convertToMedia(utProfile3.serviceClass))) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "CF rule is not present. Make new rule.");
                UtProfile utProfile4 = this.mProfile;
                CallForwardingData.Rule makeCFRule = makeCFRule(utProfile4.condition, utProfile4.serviceClass, utProfile4.action, utProfile4.number);
                mo1178clone.setRule(makeCFRule);
                if (this.mSeparatedCFNL) {
                    this.mCFCache.replaceRule(makeCFRule);
                }
            }
            if (simMno == Mno.GCF) {
                mo1178clone.replyTimer = 0;
            } else {
                UtProfile utProfile5 = this.mProfile;
                if (utProfile5.condition == 2 && (i3 = utProfile5.timeSeconds) > 0) {
                    mo1178clone.replyTimer = i3;
                } else if (simMno.isOneOf(Mno.CSL, Mno.PCCW)) {
                    mo1178clone.replyTimer = 0;
                }
            }
            return mo1178clone;
        }
        CallForwardingData callForwardingData2 = new CallForwardingData();
        makeRuleSet(simMno, callForwardingData2);
        if (simMno == Mno.GCF) {
            CallForwardingData callForwardingData3 = this.mCFCache;
            if (callForwardingData3 != null) {
                callForwardingData3.replyTimer = 0;
            }
        } else {
            UtProfile utProfile6 = this.mProfile;
            if (utProfile6.condition == 2 && (i = utProfile6.timeSeconds) > 0) {
                callForwardingData2.replyTimer = i;
            }
        }
        this.mCFCache = callForwardingData2;
        return callForwardingData2;
    }

    private void makeRuleSet(Mno mno, CallForwardingData callForwardingData) {
        int i;
        CallForwardingData callForwardingData2;
        CallForwardingData callForwardingData3;
        boolean z;
        CallForwardingData callForwardingData4;
        boolean z2;
        UtProfile utProfile = this.mProfile;
        int i2 = utProfile.condition;
        if (i2 == 5 || i2 == 4) {
            for (int i3 = 0; i3 <= 3; i3++) {
                boolean z3 = true;
                if (this.mProfile.condition == 5 && i3 == 0) {
                    if (mno.isOneOf(Mno.CMHK, Mno.HK3, Mno.ASIACELL_IRAQ, Mno.ETISALAT_UAE) && (callForwardingData4 = this.mCFCache) != null) {
                        MEDIA media = MEDIA.AUDIO;
                        if (callForwardingData4.isExist(i3, media)) {
                            callForwardingData.rules.add(this.mCFCache.getRule(i3, media));
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        CallForwardingData callForwardingData5 = this.mCFCache;
                        MEDIA media2 = MEDIA.VIDEO;
                        if (callForwardingData5.isExist(i3, media2)) {
                            callForwardingData.rules.add(this.mCFCache.getRule(i3, media2));
                        } else {
                            z3 = z2;
                        }
                        if (!z3 && this.mCFCache.isExist(i3, UtUtils.convertToMedia(this.mProfile.serviceClass))) {
                            callForwardingData.rules.add(this.mCFCache.getRule(i3, UtUtils.convertToMedia(this.mProfile.serviceClass)));
                        }
                    }
                } else if (mno.isOneOf(Mno.CSL, Mno.PCCW, Mno.CMHK, Mno.HK3, Mno.ASIACELL_IRAQ) && (callForwardingData3 = this.mCFCache) != null) {
                    MEDIA media3 = MEDIA.AUDIO;
                    if (callForwardingData3.isExist(i3, media3)) {
                        callForwardingData.rules.add(getCallForwardRule(i3, media3));
                        z = true;
                    } else {
                        z = false;
                    }
                    CallForwardingData callForwardingData6 = this.mCFCache;
                    MEDIA media4 = MEDIA.VIDEO;
                    if (!callForwardingData6.isExist(i3, media4)) {
                        z3 = z;
                    } else if (mno == Mno.CMHK) {
                        callForwardingData.rules.add(this.mCFCache.getRule(i3, media4));
                    } else {
                        callForwardingData.rules.add(getCallForwardRule(i3, media4));
                    }
                    if (!z3) {
                        callForwardingData.rules.add(getCallForwardRule(i3, UtUtils.convertToMedia(this.mProfile.serviceClass)));
                    }
                } else if (mno == Mno.APT && (callForwardingData2 = this.mCFCache) != null) {
                    if (callForwardingData2.isExist(i3, UtUtils.convertToMedia(this.mProfile.serviceClass))) {
                        callForwardingData.rules.add(getCallForwardRule(i3, UtUtils.convertToMedia(this.mProfile.serviceClass)));
                    }
                } else {
                    callForwardingData.rules.add(getCallForwardRule(i3, UtUtils.convertToMedia(this.mProfile.serviceClass)));
                }
            }
            if (mno == Mno.ATT) {
                callForwardingData.rules.add(getCallForwardRule(6, MEDIA.ALL));
            }
            if (mno == Mno.ZAIN_BAHRAIN || mno.isCanada()) {
                CallForwardingData callForwardingData7 = this.mCFCache;
                if (callForwardingData7 != null) {
                    callForwardingData7.replyTimer = 0;
                }
                callForwardingData.replyTimer = 0;
            }
            int i4 = this.mProfile.timeSeconds;
            if (i4 > 0) {
                callForwardingData.replyTimer = i4;
            } else {
                CallForwardingData callForwardingData8 = this.mCFCache;
                if (callForwardingData8 != null && (i = callForwardingData8.replyTimer) > 0) {
                    callForwardingData.replyTimer = i;
                }
            }
            if (mno.isOneOf(Mno.CSL, Mno.PCCW)) {
                CallForwardingData callForwardingData9 = this.mCFCache;
                if (callForwardingData9 != null) {
                    callForwardingData9.replyTimer = 0;
                }
                callForwardingData.replyTimer = 0;
                return;
            }
            return;
        }
        callForwardingData.setRule(getCallForwardRule(i2, UtUtils.convertToMedia(utProfile.serviceClass)));
    }

    protected ArrayList<CallBarringData.Rule> parseSIBtarget(String[] strArr) {
        ArrayList<CallBarringData.Rule> arrayList = new ArrayList<>();
        if (strArr == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Empty password");
            return arrayList;
        }
        for (String str : strArr) {
            CallBarringData.Rule rule = new CallBarringData.Rule();
            String[] split = str.split(",");
            rule.ruleId = split[0];
            rule.conditions.condition = 10;
            int i = 1;
            rule.target.add(UtUtils.cleanBarringNum(split[1]));
            rule.allow = false;
            rule.conditions.state = split[2].equalsIgnoreCase(CloudMessageProviderContract.JsonData.TRUE);
            Condition condition = rule.conditions;
            if (!condition.state) {
                i = 3;
            }
            condition.action = i;
            arrayList.add(rule);
        }
        return arrayList;
    }

    private CallBarringData addKddiCbRules(CallBarringData callBarringData) {
        if (callBarringData == null) {
            callBarringData = new CallBarringData();
        }
        UtProfile utProfile = this.mProfile;
        int i = utProfile.condition;
        if (i != 10) {
            if (i == 6) {
                CallBarringData.Rule makeCBRule = makeCBRule(i, utProfile.serviceClass, utProfile.action);
                makeCBRule.ruleId = UtUtils.getSetting(this.mPhoneId, GlobalSettingsConstants.SS.ICB_ANONYMOUS_RULEID, "");
                callBarringData.setRule(makeCBRule);
                IMSLog.d(LOG_TAG, "KDDI_UT added rule id = " + makeCBRule.ruleId + " conditions = " + makeCBRule.conditions + " media = " + makeCBRule.conditions.media);
            }
            return callBarringData;
        }
        CallBarringData callBarringData2 = new CallBarringData();
        Iterator<CallBarringData.Rule> it = parseSIBtarget(this.mProfile.valueList).iterator();
        while (it.hasNext()) {
            CallBarringData.Rule next = it.next();
            callBarringData2.rules.add(next);
            IMSLog.d(LOG_TAG, "KDDI_UT added rule id = " + next.ruleId + " conditions = " + next.conditions + " media = " + next.conditions.media);
        }
        if (callBarringData.isExist(6)) {
            callBarringData2.rules.add(callBarringData.getRule(6, MEDIA.ALL));
        }
        return callBarringData2;
    }

    protected CallBarringData getCbRuleSet(int i) {
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        CallBarringData callBarringData = this.mICBCache;
        if (i == 105) {
            callBarringData = this.mOCBCache;
        }
        if (simMno == Mno.KDDI) {
            return addKddiCbRules(callBarringData);
        }
        if (callBarringData != null) {
            CallBarringData mo1178clone = callBarringData.mo1178clone();
            boolean z = false;
            for (SsRuleData.SsRule ssRule : mo1178clone.rules) {
                if (simMno.isOneOf(Mno.ELISA_FINLAND, Mno.TELEFONICA_CZ, Mno.VODAFONE_NEWZEALAND, Mno.CU)) {
                    Condition condition = ssRule.conditions;
                    if (condition.condition == this.mProfile.condition) {
                        condition.media.clear();
                        ssRule.conditions.media.add(UtUtils.convertToMedia(this.mProfile.serviceClass));
                    }
                }
                Condition condition2 = ssRule.conditions;
                int i2 = condition2.condition;
                UtProfile utProfile = this.mProfile;
                if (i2 == utProfile.condition && (condition2.media.contains(UtUtils.convertToMedia(utProfile.serviceClass)) || (this.mFeature.supportAlternativeMediaForCb && ssRule.conditions.media.contains(MEDIA.ALL)))) {
                    Condition condition3 = ssRule.conditions;
                    int i3 = this.mProfile.action;
                    condition3.state = i3 == 1 || i3 == 3;
                    condition3.action = i3;
                    z = true;
                }
            }
            if (!z) {
                UtProfile utProfile2 = this.mProfile;
                mo1178clone.setRule(makeCBRule(utProfile2.condition, utProfile2.serviceClass, utProfile2.action));
            }
            return mo1178clone;
        }
        CallBarringData callBarringData2 = new CallBarringData();
        callBarringData2.setRule(getCallBarringRule(i, UtUtils.convertToMedia(this.mProfile.serviceClass)));
        return callBarringData2;
    }

    protected CallBarringData getCbRuleSetForAll(int i, Mno mno) {
        String str = LOG_TAG;
        UtLog.i(str, this.mPhoneId, "getCbRuleSetForAll");
        CallBarringData callBarringData = this.mICBCache;
        if (i == 105) {
            callBarringData = this.mOCBCache;
        }
        if (callBarringData != null) {
            UtLog.i(str, this.mPhoneId, "CBCache not null");
            CallBarringData mo1178clone = callBarringData.mo1178clone();
            Iterator<SsRuleData.SsRule> it = mo1178clone.rules.iterator();
            while (it.hasNext()) {
                Condition condition = it.next().conditions;
                int i2 = this.mProfile.action;
                boolean z = true;
                if (i2 != 1 && i2 != 3) {
                    z = false;
                }
                condition.state = z;
                condition.action = i2;
            }
            return mo1178clone;
        }
        CallBarringData callBarringData2 = new CallBarringData();
        callBarringData2.setRule(getCallBarringRule(i, UtUtils.convertToMedia(this.mProfile.serviceClass)));
        return callBarringData2;
    }

    protected CallBarringData.Rule getCallBarringRule(int i, MEDIA media) {
        MEDIA matchedMediaForCB;
        CallBarringData callBarringData = this.mICBCache;
        if (i == 105) {
            callBarringData = this.mOCBCache;
        }
        if (callBarringData != null && (matchedMediaForCB = getMatchedMediaForCB(callBarringData, media)) != null) {
            CallBarringData.Rule rule = callBarringData.getRule(this.mProfile.condition, matchedMediaForCB);
            if (rule.conditions.media.contains(matchedMediaForCB)) {
                Condition condition = rule.conditions;
                int i2 = this.mProfile.action;
                condition.state = i2 == 3 || i2 == 1;
                condition.action = i2;
            }
            return rule;
        }
        CallBarringData.Rule rule2 = new CallBarringData.Rule();
        rule2.allow = false;
        rule2.ruleId = getCbRuleId();
        Condition condition2 = new Condition();
        rule2.conditions = condition2;
        UtProfile utProfile = this.mProfile;
        condition2.condition = utProfile.condition;
        int i3 = utProfile.action;
        condition2.state = i3 == 3 || i3 == 1;
        condition2.action = i3;
        if (callBarringData == null) {
            callBarringData = new CallBarringData();
        }
        rule2.conditions.media = new ArrayList();
        rule2.conditions.media.add(media);
        callBarringData.setRule(rule2);
        return rule2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.sec.internal.ims.servicemodules.ss.CallForwardingData.Rule getCallForwardRule(int r9, com.sec.internal.ims.servicemodules.ss.MEDIA r10) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.ss.UtStateMachine.getCallForwardRule(int, com.sec.internal.ims.servicemodules.ss.MEDIA):com.sec.internal.ims.servicemodules.ss.CallForwardingData$Rule");
    }

    private CallForwardingData.Rule makeCFRule(int i, int i2, int i3, String str) {
        CallForwardingData.Rule makeRule = CallForwardingData.makeRule(i, UtUtils.convertToMedia(i2));
        makeRule.ruleId = getCfRuleId(i);
        if (i3 == 1 || i3 == 3) {
            makeRule.conditions.state = true;
            makeRule.fwdElm.target = str;
        } else {
            makeRule.conditions.state = false;
            if (i3 == 4) {
                makeRule.fwdElm.target = "";
            }
        }
        makeRule.conditions.action = i3;
        if (!TextUtils.isEmpty(makeRule.fwdElm.target)) {
            ForwardTo forwardTo = makeRule.fwdElm;
            forwardTo.target = getNetworkPreferredUri(UtUtils.getNumberFromURI(forwardTo.target));
        }
        return makeRule;
    }

    private CallBarringData.Rule makeCBRule(int i, int i2, int i3) {
        CallBarringData.Rule makeRule = CallBarringData.makeRule(i, UtUtils.convertToMedia(i2));
        makeRule.ruleId = getCbRuleId();
        Condition condition = makeRule.conditions;
        boolean z = true;
        if (i3 != 1 && i3 != 3) {
            z = false;
        }
        condition.state = z;
        condition.action = i3;
        return makeRule;
    }

    private MEDIA getMatchedMediaForCB(CallBarringData callBarringData, MEDIA media) {
        if (callBarringData.isExist(this.mProfile.condition, media)) {
            return media;
        }
        if (this.mFeature.supportAlternativeMediaForCb) {
            int i = this.mProfile.condition;
            MEDIA media2 = MEDIA.ALL;
            if (callBarringData.isExist(i, media2)) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "no exact CB rule media match -> media ALL should be used");
                return media2;
            }
        }
        return null;
    }

    protected String getCbRuleId() {
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        int i = this.mProfile.type;
        if (i != 103) {
            if (i != 105) {
                return "";
            }
            String cbRuleIdFromFeature = getCbRuleIdFromFeature(simMno);
            if (cbRuleIdFromFeature != null) {
                return cbRuleIdFromFeature;
            }
            return "OCB" + createCBRequestId();
        }
        if (simMno.isOneOf(Mno.CMHK, Mno.HK3)) {
            int i2 = this.mProfile.condition;
            if ((i2 == 1 || i2 == 7 || i2 == 9) && this.mFeature.cbbaic.length() > 0) {
                return this.mFeature.cbbaic;
            }
            if (this.mProfile.condition == 5 && this.mFeature.cbbicwr.length() > 0) {
                return this.mFeature.cbbicwr;
            }
            if (this.mFeature.cbbaic.length() > 0) {
                return this.mFeature.cbbaic;
            }
        }
        if (this.mProfile.condition == 5 && this.mFeature.cbbicwr.length() > 0) {
            return this.mFeature.cbbicwr;
        }
        if (this.mProfile.condition == 1 && this.mFeature.cbbaic.length() > 0) {
            return this.mFeature.cbbaic;
        }
        return "ICB" + createCBRequestId();
    }

    private String getCbRuleIdFromFeature(Mno mno) {
        if (mno.isOneOf(Mno.CMHK, Mno.HK3)) {
            int i = this.mProfile.condition;
            if ((i == 2 || i == 8) && this.mFeature.cbbaoc.length() > 0) {
                return this.mFeature.cbbaoc;
            }
            if (this.mProfile.condition == 3 && this.mFeature.cbboic.length() > 0) {
                return this.mFeature.cbboic;
            }
            if (this.mProfile.condition == 4 && this.mFeature.cbboic_exhc.length() > 0) {
                return this.mFeature.cbboic_exhc;
            }
            if (this.mFeature.cbbaoc.length() > 0) {
                return this.mFeature.cbbaoc;
            }
        }
        if (mno != Mno.DTAC) {
            return null;
        }
        if (this.mProfile.condition == 2 && this.mFeature.cbbaoc.length() > 0) {
            return this.mFeature.cbbaoc;
        }
        if (this.mProfile.condition == 3 && this.mFeature.cbboic.length() > 0) {
            return this.mFeature.cbboic;
        }
        if (this.mProfile.condition != 4 || this.mFeature.cbboic_exhc.length() <= 0) {
            return null;
        }
        return this.mFeature.cbboic_exhc;
    }

    protected String getCfRuleId(int i) {
        String str;
        if (i == 1) {
            str = this.mFeature.cfb;
        } else if (i == 2) {
            str = this.mFeature.cfnr;
        } else if (i == 3) {
            str = this.mFeature.cfnrc;
        } else if (i == 6) {
            str = this.mFeature.cfni;
        } else {
            str = this.mFeature.cfu;
        }
        if (!this.mFeature.support_media || !UtUtils.convertToMedia(this.mProfile.serviceClass).equals(MEDIA.VIDEO)) {
            return str;
        }
        return str + "_video";
    }

    protected String getCfURL() {
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        UtProfile utProfile = this.mProfile;
        int i = utProfile.condition;
        if (i == 5 || i == 4) {
            return simMno == Mno.CHT ? "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)" : "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)";
        }
        if (i == 7) {
            return UtUrl.NOREPLY_URL;
        }
        if (this.mCFCache != null) {
            MEDIA convertToMedia = UtUtils.convertToMedia(utProfile.serviceClass);
            String str = this.mCFCache.getRule(this.mProfile.condition, convertToMedia).ruleId;
            if ((simMno == Mno.CU || simMno == Mno.CTC) && !this.mCFCache.isExist(this.mProfile.condition, convertToMedia)) {
                CallForwardingData callForwardingData = this.mCFCache;
                int i2 = this.mProfile.condition;
                MEDIA media = MEDIA.AUDIO;
                if (callForwardingData.isExist(i2, media)) {
                    str = this.mCFCache.getRule(this.mProfile.condition, media).ruleId;
                }
            }
            if (str != null) {
                return UtUrl.DIV_START_URL + str + UtUrl.DIV_END_URL;
            }
        }
        return UtUrl.DIV_START_URL + getCfRuleId(this.mProfile.condition) + UtUrl.DIV_END_URL;
    }

    protected String getCbURL() {
        MEDIA matchedMediaForCB;
        MEDIA matchedMediaForCB2;
        UtProfile utProfile = this.mProfile;
        if (utProfile.type == 105) {
            CallBarringData callBarringData = this.mOCBCache;
            if (callBarringData != null && (matchedMediaForCB2 = getMatchedMediaForCB(callBarringData, UtUtils.convertToMedia(utProfile.serviceClass))) != null) {
                return UtUrl.DIV_START_URL + this.mOCBCache.getRule(this.mProfile.condition, matchedMediaForCB2).ruleId + UtUrl.DIV_END_URL;
            }
        } else {
            CallBarringData callBarringData2 = this.mICBCache;
            if (callBarringData2 != null && (matchedMediaForCB = getMatchedMediaForCB(callBarringData2, UtUtils.convertToMedia(utProfile.serviceClass))) != null) {
                return UtUrl.DIV_START_URL + this.mICBCache.getRule(this.mProfile.condition, matchedMediaForCB).ruleId + UtUrl.DIV_END_URL;
            }
        }
        return UtUrl.DIV_START_URL + getCbRuleId() + UtUrl.DIV_END_URL;
    }

    protected HashMap<String, String> makeHeader() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(HttpController.HEADER_HOST, this.mConfig.nafServer);
        hashMap.put("Accept-Encoding", UtUtils.getAcceptEncoding(this.mPhoneId));
        hashMap.put("Accept", "*/*");
        hashMap.put("X-3GPP-Intended-Identity", CmcConstants.E_NUM_STR_QUOTE + this.mConfig.impu + CmcConstants.E_NUM_STR_QUOTE);
        hashMap.put("User-Agent", this.mConfig.xdmUserAgent);
        if (UtUtils.isPutRequest(this.mProfile.type)) {
            hashMap.put("Content-Type", HttpController.CONTENT_TYPE_XCAP_EL_XML);
        }
        return hashMap;
    }

    protected int createCBRequestId() {
        if (mCBIdCounter >= 255) {
            mCBIdCounter = 0;
        }
        int i = mCBIdCounter + 1;
        mCBIdCounter = i;
        return i;
    }

    public String makeUri() {
        UtProfile utProfile;
        int i;
        int i2;
        int i3;
        StringBuilder sb = new StringBuilder();
        if (this.mConfig.nafPort == 443 || this.mFeature.support_tls) {
            sb.append("https://");
        } else {
            sb.append("http://");
        }
        sb.append(this.mConfig.nafServer);
        if (this.mConfig.nafPort != 80) {
            sb.append(":");
            sb.append(this.mConfig.nafPort);
        }
        if (!this.mConfig.xcapRootUri.isEmpty()) {
            sb.append(this.mConfig.xcapRootUri);
        }
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if (simMno == Mno.XPLORE) {
            sb.append("/rem/sentinel/xcap");
        }
        sb.append(UtUrl.REQUEST_USER_URL);
        sb.append(this.mConfig.impu);
        sb.append(UtUrl.REQUEST_SERVICE_URL);
        switch (this.mProfile.type) {
            case 100:
                if (simMno == Mno.CHT || simMno == Mno.XPLORE) {
                    sb.append(UtUrl.DIV_URL_SS);
                    break;
                } else {
                    sb.append(UtUrl.DIV_URL);
                    break;
                }
            case 101:
                if (simMno == Mno.CHT || simMno == Mno.SPRINT || simMno == Mno.XPLORE) {
                    sb.append(UtUrl.DIV_URL_SS);
                } else {
                    sb.append(UtUrl.DIV_URL);
                }
                if (this.mFeature.isCFSingleElement) {
                    sb.append(getCfURL());
                }
                if (simMno == Mno.SMARTONE && this.mProfile.action == 4) {
                    sb.append("/cp:conditions");
                    break;
                }
                break;
            case 102:
                if (simMno == Mno.CHT) {
                    sb.append(UtUrl.ICB_URL_SS);
                    break;
                } else {
                    sb.append(UtUrl.ICB_URL);
                    break;
                }
            case 103:
                if (simMno == Mno.CHT) {
                    sb.append(UtUrl.ICB_URL_SS);
                } else {
                    sb.append(UtUrl.ICB_URL);
                }
                if ((!simMno.isOneOf(Mno.HK3, Mno.FET, Mno.CHT) || ((i2 = this.mProfile.condition) != 8 && i2 != 9)) && this.mFeature.isCBSingleElement) {
                    sb.append(getCbURL());
                    break;
                }
                break;
            case 104:
                if (simMno == Mno.CHT) {
                    sb.append(UtUrl.OCB_URL_SS);
                    break;
                } else {
                    sb.append(UtUrl.OCB_URL);
                    break;
                }
            case 105:
                if (simMno == Mno.CHT) {
                    sb.append(UtUrl.OCB_URL_SS);
                } else {
                    sb.append(UtUrl.OCB_URL);
                }
                if ((!simMno.isOneOf(Mno.HK3, Mno.FET, Mno.CHT) || ((i3 = this.mProfile.condition) != 8 && i3 != 9)) && this.mFeature.isCBSingleElement) {
                    sb.append(getCbURL());
                    break;
                }
                break;
            case 106:
            case 107:
                sb.append(UtUrl.OIP_URL_SIMSERVS);
                break;
            case 108:
            case 109:
                sb.append(UtUrl.OIR_URL_SIMSERVS);
                break;
            case 110:
            case 111:
                sb.append(UtUrl.TIP_URL);
                break;
            case 112:
            case 113:
                sb.append(UtUrl.TIR_URL);
                break;
            case 114:
            case 115:
                sb.append(UtUrl.CW_URL);
                break;
        }
        int indexOf = sb.indexOf("cp:");
        int indexOf2 = sb.indexOf("ss:");
        if (indexOf > 0 || indexOf2 > 0) {
            if (simMno == Mno.CHT && (((i = (utProfile = this.mProfile).condition) == 5 || i == 4) && utProfile.type == 101)) {
                sb.append("xmlns(cp=urn:ietf:params:xml:ns:common-policy)");
            } else {
                sb.append("?");
                if (simMno == Mno.XPLORE) {
                    if (indexOf2 > 0) {
                        sb.append(UtUrl.XMLNS_SS_URL);
                    }
                    if (indexOf > 0) {
                        sb.append("xmlns(cp=urn:ietf:params:xml:ns:common-policy)");
                    }
                } else {
                    if (indexOf > 0) {
                        sb.append("xmlns(cp=urn:ietf:params:xml:ns:common-policy)");
                    }
                    if (indexOf2 > 0 || (simMno == Mno.SFR && this.mProfile.type == 101)) {
                        sb.append(UtUrl.XMLNS_SS_URL);
                    }
                }
            }
        }
        return sb.toString();
    }

    protected HttpRequestParams makeHttpParams() {
        int i;
        LinkPropertiesWrapper linkProperties;
        boolean z;
        int i2;
        String str;
        int i3;
        Dns dns;
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        HttpRequestParams httpRequestParams = new HttpRequestParams();
        HashMap<String, String> makeHeader = makeHeader();
        SocketFactory socketFactory = this.mSocketFactory;
        if (socketFactory != null) {
            httpRequestParams.setSocketFactory(socketFactory);
        }
        UtFeatureData utFeatureData = this.mFeature;
        if (utFeatureData.isReuseConnection && (dns = this.mDns) != null) {
            httpRequestParams.setDns(dns);
        } else if (this.mNetwork != null) {
            int i4 = utFeatureData.ip_version;
            if (i4 > 0) {
                if (simMno != Mno.CTCMO || (linkProperties = this.mPdnController.getLinkProperties(this.mPdnListener)) == null || !linkProperties.hasIPv4Address() || linkProperties.hasGlobalIPv6Address()) {
                    i = i4;
                } else {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "Local ip only has ipv4, use TYPE_A for DNS query");
                    i = 1;
                }
                if (!simMno.isChn()) {
                    this.mBsfRetryCounter = this.mNafRetryCounter;
                }
                if (simMno.isOneOf(Mno.TELSTRA, Mno.TELEFONICA_CZ, Mno.ETISALAT_UAE, Mno.SINGTEL, Mno.FET)) {
                    int i5 = this.mNafRetryCounter;
                    int i6 = this.mBsfRetryCounter;
                    Network network = this.mNetwork;
                    List<InetAddress> list = this.mDnsAddresses;
                    UtConfigData utConfigData = this.mConfig;
                    this.mDns = new DnsController(i5, i6, network, list, i, true, simMno, utConfigData.nafServer, utConfigData.bsfServer, true);
                } else {
                    this.mDns = new DnsController(this.mNafRetryCounter, this.mBsfRetryCounter, this.mNetwork, this.mDnsAddresses, i, true, simMno);
                }
            } else {
                this.mDns = new Dns() { // from class: com.sec.internal.ims.servicemodules.ss.UtStateMachine$$ExternalSyntheticLambda0
                    @Override // okhttp3.Dns
                    public final List lookup(String str2) {
                        List lambda$makeHttpParams$0;
                        lambda$makeHttpParams$0 = UtStateMachine.this.lambda$makeHttpParams$0(str2);
                        return lambda$makeHttpParams$0;
                    }
                };
            }
            httpRequestParams.setDns(this.mDns);
        }
        httpRequestParams.setReuseConnection(this.mFeature.isReuseConnection);
        httpRequestParams.setCallback(this.mUtCallback).setHeaders(makeHeader);
        if (UtUtils.isPutRequest(this.mProfile.type)) {
            httpRequestParams.setMethod(HttpRequestParams.Method.PUT);
            httpRequestParams.setPostBody(new HttpPostBody(updateUtDetailInfo().getBytes()));
        } else {
            httpRequestParams.setMethod(HttpRequestParams.Method.GET);
        }
        httpRequestParams.setUrl(makeUri()).setBsfUrl(this.mConfig.bsfServer).setPhoneId(this.mPhoneId);
        if (this.mConfig.username.isEmpty()) {
            httpRequestParams.setUserName(this.mConfig.impu);
        } else {
            httpRequestParams.setUserName(this.mConfig.username);
        }
        httpRequestParams.setPassword(this.mConfig.passwd).setUseTls(this.mFeature.support_tls).setConnectionTimeout(10000L);
        if (simMno == Mno.GCF) {
            httpRequestParams.setReadTimeout(HTTP_READ_TIMEOUT_GCF);
        } else if (simMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            httpRequestParams.setReadTimeout(HTTP_READ_TIMEOUT_TMB);
        } else {
            httpRequestParams.setReadTimeout(10000L);
        }
        httpRequestParams.setIpVersion(this.mFeature.ip_version);
        if (simMno == Mno.ORANGE) {
            ApnSettings apnSettings = this.mApn;
            if (apnSettings != null) {
                str = apnSettings.getProxyAddress();
                i3 = this.mApn.getProxyPort();
            } else {
                str = null;
                i3 = 80;
            }
            Proxy proxy = Proxy.NO_PROXY;
            try {
                if (!TextUtils.isEmpty(str) && this.mNetwork != null) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "proxyAddress : " + str + " ProxyPort : " + i3);
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.mNetwork.getByName(str), i3));
                }
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
            z = true;
            httpRequestParams.setProxy(proxy).setUseProxy(true);
        } else {
            z = true;
        }
        if (simMno == Mno.CU) {
            httpRequestParams.setProxy(Proxy.NO_PROXY).setUseProxy(z);
        }
        if (simMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            httpRequestParams.setUseImei(z);
        }
        if (simMno == Mno.HK3 || simMno == Mno.TWO_DEGREE) {
            i2 = 1;
            httpRequestParams.setIgnoreServerCert(true);
        } else {
            httpRequestParams.setIgnoreServerCert(false);
            i2 = 1;
        }
        if (simMno == Mno.VODAFONE_AUSTRALIA) {
            httpRequestParams.setCipherSuiteType(i2);
        }
        return httpRequestParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List lambda$makeHttpParams$0(String str) throws UnknownHostException {
        if (str == null) {
            throw new UnknownHostException("hostname == null");
        }
        try {
            return Arrays.asList(this.mNetwork.getAllByName(str));
        } catch (NullPointerException unused) {
            throw new UnknownHostException("android.net.Network.getAllByName returned null");
        }
    }

    @Override // com.sec.internal.helper.StateMachine
    protected void unhandledMessage(Message message) {
        UtLog.i(LOG_TAG, this.mPhoneId, "handleMessage " + UtLog.getStringMessage(message.what));
        int i = message.what;
        if (i != 12) {
            if (i == 14) {
                this.mProfile = null;
                setForce403Error(false);
                this.mUtServiceModule.unregisterCwdbObserver(this.mPhoneId);
                this.mUtServiceModule.updateCapabilities(this.mPhoneId);
                transitionTo(this.mRequestState);
                return;
            }
            if (i != 15) {
                return;
            }
        }
        if (i == 15) {
            if (this.isRetryingCreatePdn) {
                removeMessages(100);
                this.isRetryingCreatePdn = false;
            }
            disconnectPdn();
        }
        int i2 = message.arg1;
        Object obj = message.obj;
        String str = obj != null ? (String) obj : null;
        this.mIsRequestFailed = true;
        requestFailed(i2, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void requestFailed(int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.ss.UtStateMachine.requestFailed(int, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshDns() {
        this.mDns = null;
    }

    private boolean isCsfbErrorCode(int i, Mno mno) {
        UtFeatureData utFeatureData;
        String[] strArr;
        if (mno.isUSA() && i == 1009) {
            return false;
        }
        if (i == 1009 || i == 1003 || i == 1013 || (utFeatureData = this.mFeature) == null || (strArr = utFeatureData.csfbErrorCodeList) == null) {
            return true;
        }
        if (strArr.length == 0) {
            return false;
        }
        if ("all".equalsIgnoreCase(strArr[0])) {
            return true;
        }
        for (String str : this.mFeature.csfbErrorCodeList) {
            if (String.valueOf(i).matches(str.replace("x", "[0-9]").trim())) {
                return true;
            }
        }
        return false;
    }

    private boolean isChnNoRuleCbPut403Error() {
        CallBarringData callBarringData;
        CallBarringData callBarringData2;
        if (SimUtil.getSimMno(this.mPhoneId).isChn()) {
            UtProfile utProfile = this.mProfile;
            int i = utProfile.type;
            int i2 = utProfile.serviceClass;
            if (i == 103 && (callBarringData2 = this.mICBCache) != null && getMatchedMediaForCB(callBarringData2, UtUtils.convertToMedia(i2)) == null) {
                return true;
            }
            if (i == 105 && (callBarringData = this.mOCBCache) != null && getMatchedMediaForCB(callBarringData, UtUtils.convertToMedia(i2)) == null) {
                return true;
            }
        }
        return false;
    }

    private void setTimerFor403(String str) {
        int i = this.mFeature.timerFor403;
        if (!TextUtils.isEmpty(str) && str.contains("10 minutes")) {
            i = 600;
        }
        if (i > 0) {
            PreciseAlarmManager.getInstance(this.mContext).sendMessageDelayed(obtainMessage(14, this.mPhoneId), i * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDnsInfo() {
        List<String> dnsServers = this.mPdnController.getDnsServers(this.mPdnListener);
        if (dnsServers != null && dnsServers.size() > 0) {
            try {
                this.mDnsAddresses.clear();
                Iterator<String> it = dnsServers.iterator();
                while (it.hasNext()) {
                    this.mDnsAddresses.add(this.mNetwork.getByName(it.next()));
                }
                return;
            } catch (UnknownHostException unused) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "UnknownHostException");
                return;
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "Dns Service List is null");
        sendMessage(obtainMessage(12, 1018));
    }

    protected boolean getUserSetToBoolean(int i, String str) {
        return UserConfiguration.getUserConfig(this.mContext, i, str, true);
    }

    protected int getUserSetToInt(int i, String str, int i2) {
        return UserConfiguration.getUserConfig(this.mContext, i, str, i2);
    }

    protected void setUserSet(int i, String str, int i2) {
        UserConfiguration.setUserConfig(this.mContext, i, str, i2);
    }

    protected void setUserSet(int i, String str, boolean z) {
        UserConfiguration.setUserConfig(this.mContext, i, str, z);
    }

    public boolean hasProfile() {
        if (this.mProfile != null) {
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "mProfile is null. so ignore");
        return false;
    }

    private void printCompleteLog(Bundle[] bundleArr, int i, int i2) {
        String str;
        String str2 = "UtXcap[" + i2 + "]< ";
        if (UtUtils.isPutRequest(i)) {
            str = str2 + UtLog.extractLogFromUtProfile(this.mProfile) + " {Success}";
        } else {
            str = str2 + UtLog.extractLogFromResponse(i, bundleArr);
        }
        String str3 = this.mPhoneId + "," + i2 + ",<,T" + UtLog.extractCrLogFromResponse(i, bundleArr);
        IMSLog.i(LOG_TAG, this.mPhoneId, str);
        this.mUtServiceModule.writeDump(this.mPhoneId, str);
        IMSLog.c(LogClass.UT_RESPONSE, str3);
    }

    private void printFailLog(Bundle bundle, int i, int i2) {
        String str = "UtXcap[" + i2 + "]< [!ERROR] " + UtLog.extractLogFromUtProfile(this.mProfile) + UtLog.extractLogFromError(bundle);
        String str2 = this.mPhoneId + "," + i2 + ",<,F," + bundle.getInt("originErrorCode") + "," + bundle.getInt("errorCode");
        IMSLog.i(LOG_TAG, this.mPhoneId, str);
        this.mUtServiceModule.writeDump(this.mPhoneId, str);
        IMSLog.c(LogClass.UT_RESPONSE, str2);
    }
}
