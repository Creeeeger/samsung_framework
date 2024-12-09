package com.sec.internal.ims.cmstore.ambs.provision;

import android.content.Context;
import android.telephony.ServiceState;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.enumprovision.EnumProvision;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;

/* loaded from: classes.dex */
public class AmbsPhoneStateListener {
    private static final String TAG = "AmbsPhoneStateListener";
    private final Context mContext;
    private IControllerCommonInterface mIControllerCommonInterface;
    private final int mSlotId;
    private boolean mIsPhoneServiceReady = false;
    private boolean mZcodeRequested = false;
    private PhoneServiceListener mServiceStateListener = null;

    AmbsPhoneStateListener(int i, IControllerCommonInterface iControllerCommonInterface, Context context) {
        this.mIControllerCommonInterface = iControllerCommonInterface;
        this.mContext = context;
        this.mSlotId = i;
    }

    public void startListen() {
        if (this.mServiceStateListener == null) {
            this.mServiceStateListener = new PhoneServiceListener();
        }
        this.mZcodeRequested = false;
        TelephonyManager telephonyManager = Util.getTelephonyManager(this.mContext, this.mSlotId);
        if (telephonyManager != null) {
            telephonyManager.registerTelephonyCallback(this.mContext.getMainExecutor(), this.mServiceStateListener);
        }
    }

    public void stopListen() {
        TelephonyManager telephonyManager = Util.getTelephonyManager(this.mContext, this.mSlotId);
        PhoneServiceListener phoneServiceListener = this.mServiceStateListener;
        if (phoneServiceListener != null && telephonyManager != null) {
            telephonyManager.unregisterTelephonyCallback(phoneServiceListener);
        } else {
            Log.d(TAG, "Phone state listener was not initial, maybe provison started form the latest failed api. No need to close it.");
        }
    }

    public class PhoneServiceListener extends TelephonyCallback implements TelephonyCallback.ServiceStateListener {
        public PhoneServiceListener() {
        }

        @Override // android.telephony.TelephonyCallback.ServiceStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            Log.i(AmbsPhoneStateListener.TAG, "onServiceStateChanged " + serviceState.getState() + " mZCode: " + AmbsPhoneStateListener.this.mZcodeRequested + " slot: " + AmbsPhoneStateListener.this.mSlotId);
            AmbsPhoneStateListener.this.mIsPhoneServiceReady = serviceState.getState() == 0 || Util.isWifiCallingEnabled(AmbsPhoneStateListener.this.mContext);
            if (!AmbsPhoneStateListener.this.mIsPhoneServiceReady || AmbsPhoneStateListener.this.mZcodeRequested) {
                return;
            }
            AmbsPhoneStateListener.this.mIControllerCommonInterface.update(EnumProvision.ProvisionEventType.REQ_AUTH_ZCODE.getId());
            AmbsPhoneStateListener.this.mZcodeRequested = true;
        }
    }
}
