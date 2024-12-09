package com.sec.internal.ims.entitlement.softphone;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.Uri;
import android.os.HandlerThread;
import android.provider.Settings;
import android.util.SparseArray;
import com.sec.ims.extensions.Extensions;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.entitilement.SoftphoneContract;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.entitlement.util.EncryptionHelper;
import com.sec.internal.ims.entitlement.util.SharedPrefHelper;
import com.sec.internal.log.IndentingPrintWriter;
import com.sec.vsim.attsoftphone.IEmergencyServiceListener;
import com.sec.vsim.attsoftphone.IProgressListener;
import com.sec.vsim.attsoftphone.ISoftphoneService;
import com.sec.vsim.attsoftphone.ISupplementaryServiceListener;
import com.sec.vsim.attsoftphone.data.CallForwardingInfo;
import com.sec.vsim.attsoftphone.data.CallWaitingInfo;
import com.sec.vsim.attsoftphone.data.DeviceInfo;
import java.util.List;
import javax.crypto.SecretKey;

/* loaded from: classes.dex */
public class SoftphoneServiceStub extends ISoftphoneService.Stub {
    private final String LOG_TAG;
    private IntentFilter mAirplaneModeIntentFilter;
    private BroadcastReceiver mAirplaneModeReceiver;
    private Context mContext;
    private int mCurrentUserId;
    final ConnectivityManager.NetworkCallback mDefaultNetworkListener;
    public SimpleEventLog mEventLog;
    private SparseArray<SoftphoneClient> mClients = new SparseArray<>();
    private boolean mNetworkConnected = false;

    public SoftphoneServiceStub(Context context) {
        this.mContext = null;
        this.mCurrentUserId = 0;
        this.mAirplaneModeIntentFilter = null;
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.entitlement.softphone.SoftphoneServiceStub.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                SoftphoneServiceStub.this.mEventLog.logAndAdd(SoftphoneServiceStub.this.LOG_TAG + ": mDefaultNetworkListener: onAvailable " + network);
                SoftphoneServiceStub.this.mNetworkConnected = true;
                SoftphoneServiceStub softphoneServiceStub = SoftphoneServiceStub.this;
                softphoneServiceStub.validateTokens(softphoneServiceStub.mCurrentUserId);
                for (int i = 0; i < SoftphoneServiceStub.this.mClients.size(); i++) {
                    SoftphoneClient softphoneClient = (SoftphoneClient) SoftphoneServiceStub.this.mClients.valueAt(i);
                    if (softphoneClient.getUserId() == SoftphoneServiceStub.this.mCurrentUserId) {
                        softphoneClient.onNetworkConnected();
                    }
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                SoftphoneServiceStub.this.mEventLog.logAndAdd(SoftphoneServiceStub.this.LOG_TAG + ": mDefaultNetworkListener: onLost + " + network);
                SoftphoneServiceStub.this.mNetworkConnected = false;
            }
        };
        this.mDefaultNetworkListener = networkCallback;
        this.mAirplaneModeReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.entitlement.softphone.SoftphoneServiceStub.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int i = Settings.Global.getInt(SoftphoneServiceStub.this.mContext.getContentResolver(), "airplane_mode_on", 1);
                SoftphoneServiceStub.this.mEventLog.logAndAdd("mAirplaneModeReceiver onChange: " + i);
                if (i == 1) {
                    for (int i2 = 0; i2 < SoftphoneServiceStub.this.mClients.size(); i2++) {
                        SoftphoneClient softphoneClient = (SoftphoneClient) SoftphoneServiceStub.this.mClients.valueAt(i2);
                        if (softphoneClient.getUserId() == SoftphoneServiceStub.this.mCurrentUserId) {
                            softphoneClient.onAirplaneModeOn();
                        }
                    }
                }
            }
        };
        this.mContext = context;
        this.mCurrentUserId = Extensions.ActivityManager.getCurrentUser();
        String str = SoftphoneServiceStub.class.getSimpleName() + '-' + this.mCurrentUserId;
        this.LOG_TAG = str;
        this.mEventLog = new SimpleEventLog(context, str, 100);
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerDefaultNetworkCallback(networkCallback);
        IntentFilter intentFilter = new IntentFilter(ImsConstants.Intents.ACTION_AIRPLANE_MODE);
        this.mAirplaneModeIntentFilter = intentFilter;
        this.mContext.registerReceiver(this.mAirplaneModeReceiver, intentFilter);
        this.mEventLog.logAndAdd("SoftphoneServiceStub(): registering mAirplaneModeReceiver");
        reloadAccounts();
        clearUnusedAddresses();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(Extensions.Intent.ACTION_USER_SWITCHED);
        this.mContext.registerReceiver(new UserSwitchReceiver(), intentFilter2);
    }

    private void reloadAccounts() {
        this.mEventLog.logAndAdd("reloadAccounts()");
        Uri buildFunctionalAccountUri = SoftphoneContract.SoftphoneAccount.buildFunctionalAccountUri();
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        this.mContext.getContentResolver().update(buildFunctionalAccountUri, contentValues, null, null);
        Uri buildActiveAccountUri = SoftphoneContract.SoftphoneAccount.buildActiveAccountUri();
        contentValues.clear();
        contentValues.put("status", (Integer) 0);
        this.mContext.getContentResolver().update(buildActiveAccountUri, contentValues, null, null);
    }

    private void clearUnusedAddresses() {
        this.mEventLog.logAndAdd("clearUnusedAddresses()");
        this.mContext.getContentResolver().delete(SoftphoneContract.SoftphoneAddress.CONTENT_URI, "account_id is null OR account_id =?", new String[]{""});
    }

    private class UserSwitchReceiver extends BroadcastReceiver {
        private UserSwitchReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Extensions.Intent.ACTION_USER_SWITCHED.equals(intent.getAction())) {
                int currentUser = Extensions.ActivityManager.getCurrentUser();
                SoftphoneServiceStub.this.mEventLog.logAndAdd("UserSwitchReceiver(): newUserId: " + currentUser);
                SoftphoneServiceStub.this.onUserSwitched(currentUser);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserSwitched(int i) {
        this.mEventLog.logAndAdd("onUserSwitched(): newUserId: " + i + ", mCurrentUserId: " + this.mCurrentUserId + ", size: " + this.mClients.size());
        this.mCurrentUserId = i;
        for (int i2 = 0; i2 < this.mClients.size(); i2++) {
            SoftphoneClient valueAt = this.mClients.valueAt(i2);
            if (valueAt.getUserId() != i) {
                valueAt.onUserSwitch();
                valueAt.onUserSwitchedAway();
            } else {
                valueAt.onUserSwitchedBack();
                if (this.mNetworkConnected) {
                    valueAt.onNetworkConnected();
                }
            }
        }
    }

    private void updateAccountStatus(String str, int i, int i2) {
        Uri buildAccountIdUri = SoftphoneContract.SoftphoneAccount.buildAccountIdUri(str, i);
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.valueOf(i2));
        this.mContext.getContentResolver().update(buildAccountIdUri, contentValues, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateTokens(int i) {
        this.mEventLog.logAndAdd("validateTokens(): newUserId: " + i);
        Cursor query = this.mContext.getContentResolver().query(SoftphoneContract.SoftphoneAccount.buildPendingAccountUri((long) i), null, null, null, null);
        if (query != null) {
            try {
                this.mEventLog.logAndAdd("validateTokens found " + query.getCount() + " records");
                if (query.getCount() > 0) {
                    SharedPrefHelper sharedPrefHelper = new SharedPrefHelper(SoftphoneNamespaces.SoftphoneSharedPref.SHARED_PREF_NAME);
                    EncryptionHelper encryptionHelper = EncryptionHelper.getInstance(SoftphoneNamespaces.SoftphoneSettings.ENCRYPTION_ALGORITHM);
                    while (query.moveToNext()) {
                        String string = query.getString(query.getColumnIndex("account_id"));
                        updateAccountStatus(string, i, 0);
                        SecretKey secretKey = EncryptionHelper.getSecretKey(query);
                        if (secretKey == null) {
                            this.mEventLog.logAndAdd("Cannot obtain secret key for account: " + string);
                            query.close();
                            query.close();
                            return;
                        }
                        String str = sharedPrefHelper.get(this.mContext, string + ":" + i + ":" + SoftphoneNamespaces.SoftphoneSharedPref.PREF_TGUARD_TOKEN);
                        String str2 = sharedPrefHelper.get(this.mContext, string + ":" + i + ":" + SoftphoneNamespaces.SoftphoneSharedPref.PREF_TGUARD_APPID);
                        String str3 = sharedPrefHelper.get(this.mContext, string + ":" + i + ":environment");
                        SimpleEventLog simpleEventLog = this.mEventLog;
                        StringBuilder sb = new StringBuilder();
                        sb.append("encodedTGaurdToken ");
                        sb.append(str);
                        simpleEventLog.logAndAdd(sb.toString());
                        String decrypt = encryptionHelper.decrypt(str, secretKey);
                        String decrypt2 = encryptionHelper.decrypt(str2, secretKey);
                        this.mEventLog.logAndAdd("decodedTGaurdToken: " + decrypt + ", decodedTGaurdAppId: " + decrypt2);
                        if (decrypt != null && decrypt2 != null) {
                            getClient(getClientId(string)).restoreAccessToken(decrypt, string, true, decrypt2, Integer.parseInt(str3));
                        }
                    }
                }
                query.close();
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("Dump of " + this.LOG_TAG);
        indentingPrintWriter.increaseIndent();
        this.mEventLog.dump(indentingPrintWriter);
        indentingPrintWriter.decreaseIndent();
        for (int i = 0; i < this.mClients.size(); i++) {
            this.mClients.valueAt(i).dump(indentingPrintWriter);
        }
        indentingPrintWriter.close();
    }

    private synchronized SoftphoneClient getClient(int i) {
        SoftphoneClient softphoneClient;
        softphoneClient = this.mClients.get(i);
        if (softphoneClient == null) {
            throw new RuntimeException("client " + i + " cannot be found");
        }
        return softphoneClient;
    }

    public synchronized int getClientId(String str) {
        int hashCode;
        String str2 = str + CmcConstants.E_NUM_SLOT_SPLIT + this.mCurrentUserId;
        hashCode = str2.hashCode();
        if (this.mClients.get(hashCode) == null) {
            HandlerThread handlerThread = new HandlerThread("SoftphoneClient-" + str2);
            handlerThread.start();
            this.mClients.put(hashCode, new SoftphoneClient(str, this.mContext, handlerThread.getLooper()));
            this.mEventLog.logAndAdd("getClientId(): create new client SoftphoneClient-" + str2);
        }
        return hashCode;
    }

    public void registerProgressListener(int i, IProgressListener iProgressListener) {
        getClient(i).registerProgressListener(ISoftphoneService.Stub.getCallingUid(), iProgressListener);
    }

    public void deregisterProgressListener(int i, IProgressListener iProgressListener) {
        getClient(i).deregisterProgressListener(ISoftphoneService.Stub.getCallingUid());
    }

    public void exchangeForAccessToken(int i, String str, String str2, String str3, int i2) {
        getClient(i).exchangeForAccessToken(str, str2, false, str3, i2);
    }

    public void provisionAccount(int i) {
        getClient(i).provisionAccount();
    }

    public void validateE911Address(int i, int i2, boolean z, IEmergencyServiceListener iEmergencyServiceListener) {
        getClient(i).validateE911Address(i2, z, iEmergencyServiceListener);
    }

    public void tryRegister(int i) {
        getClient(i).tryRegister();
    }

    public void tryDeregister(int i) {
        getClient(i).tryDeregister();
    }

    public void logOut(int i) {
        getClient(i).logOut();
    }

    public void registerSupplementaryServiceListener(int i, ISupplementaryServiceListener iSupplementaryServiceListener) {
        getClient(i).registerSupplementaryServiceListener(ISoftphoneService.Stub.getCallingUid(), iSupplementaryServiceListener);
    }

    public void deregisterSupplementaryServiceListener(int i, ISupplementaryServiceListener iSupplementaryServiceListener) {
        getClient(i).deregisterSupplementaryServiceListener(ISoftphoneService.Stub.getCallingUid());
    }

    public void getCallWaitingInfo(int i) {
        getClient(i).getCallWaitingInfo();
    }

    public void getCallForwardingInfo(int i) {
        getClient(i).getCallForwardingInfo();
    }

    public void setCallWaitingInfo(int i, CallWaitingInfo callWaitingInfo) {
        getClient(i).setCallWaitingInfo(callWaitingInfo);
    }

    public void setCallForwardingInfo(int i, CallForwardingInfo callForwardingInfo) {
        getClient(i).setCallForwardingInfo(callForwardingInfo);
    }

    public void getTermsConditions(int i) {
        getClient(i).getTermsAndConditions();
    }

    public List<DeviceInfo> getDeviceList(int i) {
        return getClient(i).getDeviceList();
    }

    public void deleteAddress(int i, long j) {
        this.mEventLog.logAndAdd("ClientId(): " + i + "AddressId(): " + j);
        getClient(i).deleteAddress(j);
    }
}
