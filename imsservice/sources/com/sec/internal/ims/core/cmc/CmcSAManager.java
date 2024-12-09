package com.sec.internal.ims.core.cmc;

import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.msc.sa.aidl.ISACallback;
import com.msc.sa.aidl.ISAService;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class CmcSAManager {
    private static final String LOG_TAG = "CmcSAManager";
    private CmcAccountManager mCmcAccountMgr;
    private Context mContext;
    private CmcSAEventListener mListener;
    private final String mAppId = "8f9l37bswj";
    private ServiceConnection mSAConnection = null;
    private ISAService mISaService = null;
    private ISACallback mSACallback = null;
    private String mRegistrationCode = null;
    private final int ID_REQUEST_ACCESSTOKEN = 1;
    private boolean mIsLocal = true;
    private SAState mState = SAState.IDLE;

    public interface CmcSAEventListener {
        void onSARequestFailed(SAErrorReason sAErrorReason);

        void onSARequested();

        void onSAServiceBindResult(boolean z, boolean z2);

        void onSAUpdated(String str, String str2);
    }

    private enum SAState {
        IDLE,
        SERVICE_CONNECTING,
        SERVICE_CONNECTED,
        REQUESTING
    }

    public enum SAErrorReason {
        SERVICE_DISCONNECTED,
        NOT_LOGGED_IN,
        REQUEST_TIMER_EXPIRED,
        RESIGN_REQUIRED,
        NETWORK_UNAVAILABLE,
        OTHERS;

        String mDescription = "";

        SAErrorReason() {
        }

        SAErrorReason setDescription(String str) {
            if (str != null) {
                this.mDescription = str;
            }
            return this;
        }

        public String description() {
            return name() + ": " + this.mDescription;
        }
    }

    public CmcSAManager(Context context, CmcAccountManager cmcAccountManager, CmcSAEventListener cmcSAEventListener) {
        this.mContext = context;
        this.mCmcAccountMgr = cmcAccountManager;
        this.mListener = cmcSAEventListener;
    }

    public void connectToSamsungAccountService(boolean z) {
        IMSLog.i(LOG_TAG, "connect to Samsung Account AIDL() from cache: " + z);
        if (!isSaLogined()) {
            IMSLog.i(LOG_TAG, "connectToSamsungAccountService Not Logined");
            this.mListener.onSARequestFailed(SAErrorReason.NOT_LOGGED_IN.setDescription("onServiceConnected"));
            return;
        }
        this.mIsLocal = z;
        Intent intent = new Intent();
        intent.setAction("com.msc.action.samsungaccount.REQUEST_SERVICE");
        intent.setClassName("com.osp.app.signin", "com.msc.sa.service.RequestService");
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.sec.internal.ims.core.cmc.CmcSAManager.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                CmcSAManager.this.mISaService = ISAService.Stub.asInterface(iBinder);
                if (CmcSAManager.this.mISaService != null) {
                    CmcSAManager.this.mSACallback = new SACallback();
                    try {
                        String registerCallback = CmcSAManager.this.mISaService.registerCallback("8f9l37bswj", "", CmcSAManager.this.mContext.getPackageName(), CmcSAManager.this.mSACallback);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onServiceConnected to SA : ");
                        sb.append(registerCallback == null ? "null" : registerCallback);
                        IMSLog.i(CmcSAManager.LOG_TAG, sb.toString());
                        CmcSAManager.this.mRegistrationCode = registerCallback;
                        CmcSAManager.this.mState = SAState.SERVICE_CONNECTED;
                        CmcSAManager.this.getAccessTokenInternal();
                        return;
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        CmcSAManager.this.mState = SAState.IDLE;
                        CmcSAManager.this.mListener.onSARequestFailed(SAErrorReason.SERVICE_DISCONNECTED.setDescription("onServiceConnected: remote exception"));
                        return;
                    }
                }
                IMSLog.e(CmcSAManager.LOG_TAG, "onServiceConnected: service is null");
                CmcSAManager.this.mState = SAState.IDLE;
                CmcSAManager.this.mListener.onSARequestFailed(SAErrorReason.SERVICE_DISCONNECTED.setDescription("onServiceConnected: service is null"));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                IMSLog.i(CmcSAManager.LOG_TAG, "onServiceDisconnected to SA");
                if (CmcSAManager.this.mISaService != null) {
                    try {
                        CmcSAManager.this.mISaService.unregisterCallback(CmcSAManager.this.mRegistrationCode);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    CmcSAManager.this.mISaService = null;
                }
                CmcSAManager.this.mListener.onSARequestFailed(SAErrorReason.SERVICE_DISCONNECTED.setDescription("onServiceDisconnected"));
                CmcSAManager.this.mState = SAState.IDLE;
            }
        };
        this.mSAConnection = serviceConnection;
        this.mState = SAState.SERVICE_CONNECTING;
        boolean bindService = this.mContext.bindService(intent, serviceConnection, 1);
        if (!bindService) {
            IMSLog.e(LOG_TAG, "connectToSamsungAccountService: bindService failed");
            this.mState = SAState.IDLE;
        }
        this.mListener.onSAServiceBindResult(bindService, z);
    }

    private class SACallback extends ISACallback.Stub {
        @Override // com.msc.sa.aidl.ISACallback
        public void onReceiveAuthCode(int i, boolean z, Bundle bundle) throws RemoteException {
        }

        @Override // com.msc.sa.aidl.ISACallback
        public void onReceiveChecklistValidation(int i, boolean z, Bundle bundle) throws RemoteException {
        }

        @Override // com.msc.sa.aidl.ISACallback
        public void onReceiveDisclaimerAgreement(int i, boolean z, Bundle bundle) throws RemoteException {
        }

        @Override // com.msc.sa.aidl.ISACallback
        public void onReceivePasswordConfirmation(int i, boolean z, Bundle bundle) throws RemoteException {
        }

        @Override // com.msc.sa.aidl.ISACallback
        public void onReceiveSCloudAccessToken(int i, boolean z, Bundle bundle) throws RemoteException {
        }

        private SACallback() {
        }

        @Override // com.msc.sa.aidl.ISACallback
        public void onReceiveAccessToken(int i, boolean z, Bundle bundle) throws RemoteException {
            String str;
            CmcSAManager.this.mState = SAState.SERVICE_CONNECTED;
            if (z) {
                String string = bundle.getString("access_token");
                String string2 = bundle.getString("user_id");
                String string3 = bundle.getString("mcc");
                String string4 = bundle.getString("api_server_url");
                IMSLog.s(CmcSAManager.LOG_TAG, "onReceiveAccessToken: Success to get user id: " + string2 + " Access Token: " + string + " api_server_url: " + string4 + " auth_server_url: " + bundle.getString("auth_server_url") + " mcc : " + string3);
                CmcSAManager.this.mListener.onSAUpdated(string, string4);
                return;
            }
            SAErrorReason sAErrorReason = SAErrorReason.OTHERS;
            if (bundle == null) {
                str = "resultData is null";
            } else {
                String string5 = bundle.getString(CloudMessageProviderContract.BufferDBSMS.ERROR_CODE);
                str = string5 + ": " + bundle.getString("error_message");
                string5.hashCode();
                switch (string5) {
                    case "SAC_0301":
                    case "NETWORK_ERROR":
                        sAErrorReason = SAErrorReason.NETWORK_UNAVAILABLE;
                        break;
                    case "SAC_0402":
                        sAErrorReason = SAErrorReason.RESIGN_REQUIRED;
                        break;
                    case "SAC_0501":
                        IMSLog.e(CmcSAManager.LOG_TAG, "onReceiveAccessToken: SAC_0501 error, Another request is ongoing. Ignore this error");
                        CmcSAManager.this.mState = SAState.REQUESTING;
                        return;
                }
            }
            IMSLog.i(CmcSAManager.LOG_TAG, "onReceiveAccessToken: Error: " + str);
            CmcSAManager.this.mListener.onSARequestFailed(sAErrorReason.setDescription(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAccessTokenInternal() {
        SAState sAState = this.mState;
        SAState sAState2 = SAState.REQUESTING;
        if (sAState == sAState2) {
            IMSLog.i(LOG_TAG, "getAccessTokenInternal: Already requesting access token state");
            return;
        }
        try {
            IMSLog.e(LOG_TAG, "getAccessTokenInternal: Try to Get Access Token");
            String[] strArr = {"user_id", "birthday", "email_id", "mcc", "server_url", "cc", "api_server_url", "auth_server_url", "device_physical_address_text", "login_id ", "login_id_type"};
            Bundle bundle = new Bundle();
            String accessTokenFromCmcPref = this.mCmcAccountMgr.getAccessTokenFromCmcPref();
            if (!this.mIsLocal && !TextUtils.isEmpty(accessTokenFromCmcPref) && !CmcConstants.SA.TOKEN_DEFAULT.equals(accessTokenFromCmcPref)) {
                IMSLog.i(LOG_TAG, "getAccessTokenInternal: Adding expired_access_token");
                bundle.putString("expired_access_token", accessTokenFromCmcPref);
            }
            bundle.putCharSequenceArray("additional", strArr);
            ISAService iSAService = this.mISaService;
            if (iSAService != null) {
                iSAService.requestAccessToken(1, this.mRegistrationCode, bundle);
                IMSLog.e(LOG_TAG, "getAccessTokenInternal: Request Access Token");
                this.mState = sAState2;
                this.mListener.onSARequested();
                return;
            }
            this.mState = SAState.IDLE;
            this.mListener.onSARequestFailed(SAErrorReason.SERVICE_DISCONNECTED.setDescription("getAccessTokenInternal: ISaService is null"));
        } catch (RemoteException e) {
            e.printStackTrace();
            this.mState = SAState.IDLE;
            this.mListener.onSARequestFailed(SAErrorReason.SERVICE_DISCONNECTED.setDescription("getAccessTokenInternal: RemoteException"));
        }
    }

    public void disconnectToSamsungAccountService() {
        IMSLog.i(LOG_TAG, "disconnectToSamsungAccountService");
        ISAService iSAService = this.mISaService;
        if (iSAService != null) {
            try {
                iSAService.unregisterCallback(this.mRegistrationCode);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            IMSLog.e(LOG_TAG, "disconnectToSamsungAccountService: service is null");
        }
        try {
            ServiceConnection serviceConnection = this.mSAConnection;
            if (serviceConnection != null) {
                this.mContext.unbindService(serviceConnection);
            }
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        }
        this.mISaService = null;
        this.mState = SAState.IDLE;
    }

    private boolean isSaLogined() {
        return AccountManager.get(this.mContext).getAccountsByType("com.osp.app.signin").length > 0;
    }

    public void tryGetAccessToken() {
        if (this.mISaService == null) {
            connectToSamsungAccountService(this.mIsLocal);
        } else {
            getAccessTokenInternal();
        }
    }

    public boolean isSAServiceIdle() {
        return this.mState == SAState.IDLE;
    }

    public boolean isLocalCachedAccessTokenRequestState() {
        return this.mIsLocal;
    }
}
