package com.sec.internal.ims.core;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationGovernorImpl extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnImpl";

    public RegistrationGovernorImpl(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        if (DeviceUtil.getGcfMode() && this.mMno == Mno.GCF && SemSystemProperties.getInt(ImsConstants.SystemProperties.IMS_TEST_MODE_PROP, 0) == 1) {
            Log.i(LOG_TAG, "by GCF(VZW) IMS_TEST_MODE_PROP - remove all service");
            return new HashSet();
        }
        return super.filterService(set, i);
    }

    private boolean checkGcfStatus(int i) {
        boolean z;
        if (this.mTask.getProfile().getPdnType() == 11 && this.mTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERED) {
            List<String> gcfInitialRegistrationRat = getGcfInitialRegistrationRat();
            Log.i(LOG_TAG, "gcfIntialRegistrationRat = " + gcfInitialRegistrationRat);
            Iterator<String> it = gcfInitialRegistrationRat.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (ImsProfile.getNetworkType(it.next()) == i) {
                    z = true;
                    break;
                }
            }
            if (z) {
                Log.i(LOG_TAG, "GCF, Initial Rat condition is matched");
            } else {
                Log.i(LOG_TAG, "GCF, Initial Rat condition is not matched");
                return false;
            }
        }
        return true;
    }

    private List<String> getGcfInitialRegistrationRat() {
        String str = "";
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.sec.ims.settings/gcfinitrat"), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndex("rat"));
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception unused) {
            Log.e(LOG_TAG, "failed to get getGcfInitialRegistrationRat");
        }
        return Arrays.asList(TextUtils.split(str, ","));
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected void handleForbiddenError(long j) {
        Log.e(LOG_TAG, "onRegistrationError: Permanently prohibited.");
        this.mIsPermanentStopped = true;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return super.isReadyToRegister(i) && checkGcfStatus(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean determineDeRegistration(int i, int i2) {
        if (i == 0 && this.mTelephonyManager.getCallState() != 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "determineDeRegistration: no IMS service for network " + i2 + ". Deregister.");
            this.mTask.setReason("no IMS service for network : " + i2);
            this.mTask.setDeregiReason(4);
            this.mRegMan.tryDeregisterInternal(this.mTask, false, true);
            return true;
        }
        return super.determineDeRegistration(i, i2);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public RegisterTask onManualDeregister(boolean z) {
        if ((this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.EMERGENCY) || (this.mTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING && this.mTask.getUserAgent() == null)) && this.mPdnController.isConnected(this.mTask.getPdnType(), this.mTask)) {
            Log.i(LOG_TAG, "onManualDeregister: gcf enabled. Do nothing..");
            return null;
        }
        return super.onManualDeregister(z);
    }
}
