package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class RttSettingObserver {
    private static String LOG_TAG;
    private static String NAME;
    private static String rttSettingDb;
    private Context mContext;
    public ContentObserver mRttSettingObserver = new ContentObserver(new Handler()) { // from class: com.sec.internal.ims.servicemodules.volte2.RttSettingObserver.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            int i = Settings.Secure.getInt(RttSettingObserver.this.mContext.getContentResolver(), RttSettingObserver.rttSettingDb, 0);
            IMSLog.i(RttSettingObserver.LOG_TAG, "RttSettingObserver onChange: " + i);
            RttSettingObserver.this.mVsm.setRttMode(i);
        }
    };
    private IVolteServiceModuleInternal mVsm;

    static {
        String simpleName = VolteServiceModule.class.getSimpleName();
        NAME = simpleName;
        LOG_TAG = simpleName;
        rttSettingDb = "preferred_rtt_mode";
    }

    RttSettingObserver(Context context, IVolteServiceModuleInternal iVolteServiceModuleInternal) {
        this.mVsm = null;
        this.mContext = context;
        this.mVsm = iVolteServiceModuleInternal;
    }

    protected void init() {
        Context context = this.mContext;
        if (context != null) {
            registerRttSettingObserver(context);
        }
    }

    private void registerRttSettingObserver(Context context) {
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor(rttSettingDb), false, this.mRttSettingObserver);
    }
}
