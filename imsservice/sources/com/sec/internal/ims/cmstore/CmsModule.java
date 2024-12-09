package com.sec.internal.ims.cmstore;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.fcm.receiver.McsFcmEventListener;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.cmstore.ICmsModule;
import com.sec.sve.generalevent.VcidEvent;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class CmsModule extends ServiceModuleBase implements ICmsModule {
    private static final String LOG_TAG = CmsModule.class.getSimpleName();
    private static Hashtable<Integer, CloudMessageServiceWrapper> mCloudMessageServiceWrappers = new Hashtable<>();
    private final Context mContext;
    private final Looper mLooper;

    public CmsModule(Looper looper, Context context) {
        super(looper);
        this.mContext = context;
        this.mLooper = looper;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"cms", "im", "slm", "ft", "ft_http"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        Log.v(LOG_TAG, "handleIntent");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        super.start();
        Log.i(LOG_TAG, "start CmsModule");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        int phoneCount = SimUtil.getPhoneCount();
        boolean z = false;
        for (int i = 0; i < phoneCount; i++) {
            mCloudMessageServiceWrappers.put(Integer.valueOf(i), new CloudMessageServiceWrapper(i, this.mContext, this.mLooper));
            if (ImsUtil.isMcsSupported(i)) {
                z = true;
            }
        }
        if (z) {
            Log.i(LOG_TAG, "init: registerFcmEventListener");
            ImsRegistry.getFcmHandler().registerFcmEventListener(McsFcmEventListener.getInstance());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        Log.v(LOG_TAG, VcidEvent.BUNDLE_VALUE_ACTION_STOP);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        CloudMessageServiceWrapper cloudMessageServiceWrapper;
        if (imsRegistration == null || imsRegistration.getPreferredImpu() == null || imsRegistration.getPreferredImpu().getUri() == null) {
            Log.v(LOG_TAG, "onRegistered, null regiInfo");
            return;
        }
        super.onRegistered(imsRegistration);
        try {
            Log.i(LOG_TAG, "onRegistered");
            int phoneId = imsRegistration.getPhoneId();
            if (phoneId < 0 || phoneId >= mCloudMessageServiceWrappers.size() || (cloudMessageServiceWrapper = mCloudMessageServiceWrappers.get(Integer.valueOf(phoneId))) == null) {
                return;
            }
            cloudMessageServiceWrapper.onImsRegistered(imsRegistration);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "onRegistered: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        CloudMessageServiceWrapper cloudMessageServiceWrapper;
        if (imsRegistration == null) {
            Log.v(LOG_TAG, "onDeregistered, null regiInfo");
            return;
        }
        super.onDeregistered(imsRegistration, i);
        try {
            Log.i(LOG_TAG, "onDeregistered");
            int phoneId = imsRegistration.getPhoneId();
            if (phoneId < 0 || phoneId >= mCloudMessageServiceWrappers.size() || (cloudMessageServiceWrapper = mCloudMessageServiceWrappers.get(Integer.valueOf(phoneId))) == null) {
                return;
            }
            cloudMessageServiceWrapper.onImsDeregistered(imsRegistration);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "onDeregistered: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        super.onConfigured(i);
        Log.v(LOG_TAG, "onConfigured");
    }

    public static CloudMessageServiceWrapper getCMSServiceByPhoneID(int i) {
        for (int i2 = 0; i2 < mCloudMessageServiceWrappers.size(); i2++) {
            if (i2 == i) {
                Log.i(LOG_TAG, "phoneID:" + i);
                return mCloudMessageServiceWrappers.get(Integer.valueOf(i));
            }
        }
        return mCloudMessageServiceWrappers.get(0);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.ICmsModule
    public void handleEventDefaultAppChanged() {
        Log.i(LOG_TAG, "onDefaultSmsPackageChanged");
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            try {
                if (mCloudMessageServiceWrappers.get(Integer.valueOf(i)) != null) {
                    mCloudMessageServiceWrappers.get(Integer.valueOf(i)).onDefaultSmsPackageChanged();
                }
            } catch (RemoteException e) {
                Log.e(LOG_TAG, "onRCSDbReady: " + e.getMessage());
                e.printStackTrace();
                return;
            }
        }
    }
}
