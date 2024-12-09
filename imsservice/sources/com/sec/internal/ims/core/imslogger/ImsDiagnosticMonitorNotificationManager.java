package com.sec.internal.ims.core.imslogger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.servicemodules.volte2.data.DedicatedBearerEvent;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor;
import com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class ImsDiagnosticMonitorNotificationManager extends Handler implements ISequentialInitializable, ISignallingNotifier, IImsDiagMonitor {
    private static final String DATEFORMAT = "MM.dd HH:mm:ss";
    private static final String DM_EVENT_READY = "com.samsung.imslogger.action.DM_EVENT_READY";
    private static final String DM_PACKAGE = "com.sec.imslogger";
    private static final int EVENT_CHECK_PACKAGE_STATUS = 3;
    private static final int EVENT_VOPS_CHANGED = 1;
    public static final String IMS_DEBUG_INFO_TIMESTAMP = "Timestamp";
    public static final String IMS_DEBUG_INFO_TYPE = "DebugInfoType";
    public static final String IMS_LOCAL_ADDRESS = "LocalAddr";
    public static final String IMS_REMOTE_ADDRESS = "RemoteAddr";
    public static final int IMS_SETTINGS_EVENT_CALL = 18;
    public static final int IMS_SETTINGS_EVENT_DBR = 11;
    public static final int IMS_SETTINGS_EVENT_REGI = 17;
    public static final int IMS_SETTINGS_EVENT_SIP = 1;
    public static final int IMS_SETTINGS_EVENT_VPOS = 5;
    public static final String IMS_SIP_DIRECTION = "Direction";
    public static final String IMS_SIP_MESSAGE = "SipMsg";
    public static final String IMS_SIP_TYPE = "SipType";
    public static final String IMS_VOLTE_VOPS_INDICATION = "VoPSIndication";
    private static final String LOG_TAG = "ImsDiagMonitorNotiMgr";
    private static final String STTS_EVENT_READY = "com.googlecode.android_scripting.action.STTS_EVENT_READY";
    private static final String STTS_PACKAGE = "com.googlecode.android_scripting";
    private static final int VOLTE_DEDICATED_BEARER_NOTIFY_EVENT = 2;
    private final Context mContext;
    protected BroadcastReceiver mDmEventReadyReceiver;
    private ExternalSupporter mExternalSupporter;
    private int mPackageCheckCount;
    private SparseArray<String> mPdnStateMap;

    public ImsDiagnosticMonitorNotificationManager(Context context, Looper looper) {
        super(looper);
        this.mPackageCheckCount = 0;
        this.mDmEventReadyReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.imslogger.ImsDiagnosticMonitorNotificationManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String str;
                String action = intent.getAction();
                Log.i(ImsDiagnosticMonitorNotificationManager.LOG_TAG, "Received Intent : " + action);
                if (ImsDiagnosticMonitorNotificationManager.STTS_EVENT_READY.equals(action)) {
                    ExternalSupporter externalSupporter = ImsDiagnosticMonitorNotificationManager.this.mExternalSupporter;
                    str = ImsDiagnosticMonitorNotificationManager.STTS_PACKAGE;
                    externalSupporter.checkPackageStatus(ImsDiagnosticMonitorNotificationManager.STTS_PACKAGE);
                } else {
                    str = ImsDiagnosticMonitorNotificationManager.DM_PACKAGE;
                }
                ImsDiagnosticMonitorNotificationManager.this.mExternalSupporter.initializeDmEvent(str);
            }
        };
        this.mContext = context;
        this.mExternalSupporter = new ExternalSupporter(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(DM_EVENT_READY);
        intentFilter.addAction(STTS_EVENT_READY);
        context.registerReceiver(this.mDmEventReadyReceiver, intentFilter);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        SparseArray<String> sparseArray = new SparseArray<>();
        this.mPdnStateMap = sparseArray;
        sparseArray.put(0, "APN_ALREADY_ACTIVE");
        this.mPdnStateMap.put(1, "APN_REQUEST_STARTED");
        this.mPdnStateMap.put(2, "APN_TYPE_NOT_AVAILABLE");
        this.mPdnStateMap.put(3, "APN_REQUEST_FAILED");
        this.mPdnStateMap.put(4, "APN_ALREADY_INACTIVE");
        sendEmptyMessage(3);
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier
    public boolean send(Object obj) {
        this.mExternalSupporter.send(obj);
        return true;
    }

    private ISignallingNotifier.PackageStatus checkPackageStatus(String str) {
        return this.mExternalSupporter.checkPackageStatus(str);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 1) {
            handleUpdateVoPSIndication(((Boolean) ((AsyncResult) message.obj).result).booleanValue());
            return;
        }
        if (i == 2) {
            handleDedicatedBearerEvent((DedicatedBearerEvent) ((AsyncResult) message.obj).result);
            return;
        }
        if (i != 3) {
            return;
        }
        this.mPackageCheckCount++;
        if (checkPackageStatus(DM_PACKAGE) == ISignallingNotifier.PackageStatus.NOT_INSTALLED) {
            if (this.mPackageCheckCount < 10) {
                Log.i(LOG_TAG, "Package was not installed, check again #" + this.mPackageCheckCount);
                sendEmptyMessageDelayed(3, 1000L);
                return;
            }
            return;
        }
        if (PackageUtils.isProcessRunning(this.mContext, DM_PACKAGE)) {
            this.mExternalSupporter.initializeDmEvent(DM_PACKAGE);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor
    public void onIndication(int i, String str, int i2, int i3, String str2, String str3, String str4, String str5) {
        onIndication(i, str, i2, i3, -1, str2, str3, str4, str5);
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor
    public void onIndication(final int i, final String str, final int i2, final int i3, final int i4, final String str2, final String str3, final String str4, final String str5) {
        post(new Runnable() { // from class: com.sec.internal.ims.core.imslogger.ImsDiagnosticMonitorNotificationManager.2
            @Override // java.lang.Runnable
            public void run() {
                int i5 = i;
                if (i5 == 0 || i5 == 1) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("notifyType", i);
                    bundle.putInt("msgType", i2);
                    bundle.putInt("direction", i3);
                    bundle.putInt("phoneId", i4);
                    bundle.putString("timestamp", str2);
                    bundle.putString("localIp", str3);
                    bundle.putString("remoteIp", str4);
                    bundle.putString("message", str);
                    if (str5.length() > 0) {
                        bundle.putByteArray("hexcontents", ImsDiagnosticMonitorNotificationManager.hexStringToByteArray(str5));
                    }
                    ImsDiagnosticMonitorNotificationManager.this.send(bundle);
                }
            }
        });
    }

    public static byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        if (length % 2 == 1) {
            length--;
        }
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    private void handleUpdateVoPSIndication(boolean z) {
        Intent intent = new Intent();
        intent.putExtra(IMS_VOLTE_VOPS_INDICATION, z ? "1" : "0");
        send(5, intent);
    }

    private void handleDedicatedBearerEvent(DedicatedBearerEvent dedicatedBearerEvent) {
        Intent intent = new Intent();
        intent.putExtra("DedicatedBearerQosStatus", dedicatedBearerEvent.getBearerState());
        intent.putExtra("DedicatedBearerQosQCI", dedicatedBearerEvent.getQci());
        send(11, intent);
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor
    public void handleRegistrationEvent(ImsRegistration imsRegistration, boolean z) {
        if (imsRegistration != null && imsRegistration.getImsProfile() != null) {
            Intent intent = new Intent();
            intent.putExtra("regState", z);
            intent.putExtra("profileName", imsRegistration.getImsProfile().getName());
            intent.putExtra(GlobalSettingsConstants.Registration.EXTENDED_SERVICES, imsRegistration.getServices().toString());
            intent.putExtra("cmcType", imsRegistration.getImsProfile().getCmcType());
            send(17, intent);
            return;
        }
        Log.e(LOG_TAG, "regInfo is null");
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor
    public void notifyCallStatus(int i, String str, int i2, String str2) {
        Intent intent = new Intent();
        intent.putExtra("sessionId", i);
        intent.putExtra("callState", str);
        intent.putExtra("callType", i2);
        intent.putExtra("audioCodec", str2);
        send(18, intent);
    }

    private void send(int i, Intent intent) {
        intent.putExtra(IMS_DEBUG_INFO_TYPE, i);
        intent.putExtra(IMS_DEBUG_INFO_TIMESTAMP, new SimpleDateFormat(DATEFORMAT, Locale.US).format(new Date()));
        send(intent);
    }
}
