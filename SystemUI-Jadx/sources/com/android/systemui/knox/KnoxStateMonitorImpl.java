package com.android.systemui.knox;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.UserInfo;
import android.os.Handler;
import android.os.Message;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.sec.enterprise.EnterpriseDeviceManager;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.google.android.collect.Lists;
import com.samsung.android.knox.EnterpriseDeviceAdminInfo;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.custom.PrivateCustomDeviceManager;
import com.samsung.android.knox.dar.ddar.DualDarManager;
import com.samsung.android.knox.ucm.core.IUcmService;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KnoxStateMonitorImpl implements KnoxStateMonitor, Dumpable {
    public final Context mContext;
    public final ArrayList mCallbacks = Lists.newArrayList();
    public final AnonymousClass1 mUCMReceiver = new BroadcastReceiver() { // from class: com.android.systemui.knox.KnoxStateMonitorImpl.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("com.samsung.ucs.ucsservice.stateblocked".equals(intent.getAction())) {
                String str = KnoxStateMonitorImpl.this.mUcmMonitor.mUCMVendor;
                String stringExtra = intent.getStringExtra("UCS_CSNAME");
                if (str != null && stringExtra != null && stringExtra.equals(str)) {
                    Log.d("KnoxStateMonitorImpl", "com.samsung.ucs.ucsservice.stateblocked intent!");
                    sendEmptyMessage(5005);
                }
            }
        }
    };
    public final AnonymousClass2 mBroadCastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.knox.KnoxStateMonitorImpl.2
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("com.sec.knox.keyguard.show".equals(action)) {
                if (SemPersonaManager.isKnoxId(intent.getIntExtra("personaId", -1))) {
                    sendMessage(obtainMessage(5002, Boolean.valueOf(intent.getBooleanExtra("isShown", false))));
                    return;
                }
                return;
            }
            if ("com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL".equals(action)) {
                sendMessage(obtainMessage(5003, Integer.valueOf(getSendingUserId())));
            } else if ("com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED".equals(action)) {
                sendEmptyMessage(5004);
            }
        }
    };
    public final AnonymousClass3 mHandler = new Handler(((Handler) Dependency.get(Dependency.MAIN_HANDLER)).getLooper()) { // from class: com.android.systemui.knox.KnoxStateMonitorImpl.3
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = 0;
            switch (message.what) {
                case 5002:
                    KnoxStateMonitorImpl knoxStateMonitorImpl = KnoxStateMonitorImpl.this;
                    ((Boolean) message.obj).booleanValue();
                    knoxStateMonitorImpl.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateKnoxKeyguardState");
                    while (true) {
                        ArrayList arrayList = knoxStateMonitorImpl.mCallbacks;
                        if (i < arrayList.size()) {
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5003:
                    KnoxStateMonitorImpl knoxStateMonitorImpl2 = KnoxStateMonitorImpl.this;
                    int intValue = ((Integer) message.obj).intValue();
                    knoxStateMonitorImpl2.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleDoKeyguard " + intValue);
                    while (true) {
                        ArrayList arrayList2 = knoxStateMonitorImpl2.mCallbacks;
                        if (i < arrayList2.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback = (KnoxStateMonitorCallback) ((WeakReference) arrayList2.get(i)).get();
                            if (knoxStateMonitorCallback != null) {
                                knoxStateMonitorCallback.onDoKeyguard(intValue);
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5004:
                    KnoxStateMonitorImpl knoxStateMonitorImpl3 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl3.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleDPMPasswordChanged");
                    while (true) {
                        ArrayList arrayList3 = knoxStateMonitorImpl3.mCallbacks;
                        if (i < arrayList3.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback2 = (KnoxStateMonitorCallback) ((WeakReference) arrayList3.get(i)).get();
                            if (knoxStateMonitorCallback2 != null) {
                                knoxStateMonitorCallback2.onDPMPasswordChanged();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5005:
                    KnoxStateMonitorImpl knoxStateMonitorImpl4 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl4.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleEnableUCMLock");
                    while (true) {
                        ArrayList arrayList4 = knoxStateMonitorImpl4.mCallbacks;
                        if (i < arrayList4.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback3 = (KnoxStateMonitorCallback) ((WeakReference) arrayList4.get(i)).get();
                            if (knoxStateMonitorCallback3 != null) {
                                knoxStateMonitorCallback3.onEnableUCMLock();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5006:
                case 5007:
                case 5008:
                case 5009:
                case 5016:
                case 5021:
                default:
                    Log.d("KnoxStateMonitorImpl", "ignore message");
                    return;
                case 5010:
                    KnoxStateMonitorImpl knoxStateMonitorImpl5 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl5.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateLockscreenHiddenItems");
                    while (true) {
                        ArrayList arrayList5 = knoxStateMonitorImpl5.mCallbacks;
                        if (i < arrayList5.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback4 = (KnoxStateMonitorCallback) ((WeakReference) arrayList5.get(i)).get();
                            if (knoxStateMonitorCallback4 != null) {
                                knoxStateMonitorCallback4.onUpdateLockscreenHiddenItems();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5011:
                    KnoxStateMonitorImpl knoxStateMonitorImpl6 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl6.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateLockTypeOverride");
                    while (true) {
                        ArrayList arrayList6 = knoxStateMonitorImpl6.mCallbacks;
                        if (i < arrayList6.size()) {
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5012:
                    KnoxStateMonitorImpl knoxStateMonitorImpl7 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl7.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateQuickPanelButtons");
                    while (true) {
                        ArrayList arrayList7 = knoxStateMonitorImpl7.mCallbacks;
                        if (i < arrayList7.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback5 = (KnoxStateMonitorCallback) ((WeakReference) arrayList7.get(i)).get();
                            if (knoxStateMonitorCallback5 != null) {
                                knoxStateMonitorCallback5.onUpdateQuickPanelButtons();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5013:
                    KnoxStateMonitorImpl knoxStateMonitorImpl8 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl8.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateQuickPanelEdit");
                    while (true) {
                        ArrayList arrayList8 = knoxStateMonitorImpl8.mCallbacks;
                        if (i < arrayList8.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback6 = (KnoxStateMonitorCallback) ((WeakReference) arrayList8.get(i)).get();
                            if (knoxStateMonitorCallback6 != null) {
                                knoxStateMonitorCallback6.onUpdateQuickPanelEdit();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5014:
                    KnoxStateMonitorImpl knoxStateMonitorImpl9 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl9.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateQuickPanelItems");
                    while (true) {
                        ArrayList arrayList9 = knoxStateMonitorImpl9.mCallbacks;
                        if (i < arrayList9.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback7 = (KnoxStateMonitorCallback) ((WeakReference) arrayList9.get(i)).get();
                            if (knoxStateMonitorCallback7 != null) {
                                knoxStateMonitorCallback7.onUpdateQuickPanelItems();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5015:
                    KnoxStateMonitorImpl knoxStateMonitorImpl10 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl10.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateStatusBarText");
                    while (true) {
                        ArrayList arrayList10 = knoxStateMonitorImpl10.mCallbacks;
                        if (i < arrayList10.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback8 = (KnoxStateMonitorCallback) ((WeakReference) arrayList10.get(i)).get();
                            if (knoxStateMonitorCallback8 != null) {
                                knoxStateMonitorCallback8.onUpdateStatusBarText();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5017:
                    KnoxStateMonitorImpl knoxStateMonitorImpl11 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl11.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateStatusBarIcons");
                    while (true) {
                        ArrayList arrayList11 = knoxStateMonitorImpl11.mCallbacks;
                        if (i < arrayList11.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback9 = (KnoxStateMonitorCallback) ((WeakReference) arrayList11.get(i)).get();
                            if (knoxStateMonitorCallback9 != null) {
                                knoxStateMonitorCallback9.onUpdateStatusBarIcons();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5018:
                    KnoxStateMonitorImpl knoxStateMonitorImpl12 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl12.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateStatusBarBatteryColour");
                    while (true) {
                        ArrayList arrayList12 = knoxStateMonitorImpl12.mCallbacks;
                        if (i < arrayList12.size()) {
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5019:
                    KnoxStateMonitorImpl knoxStateMonitorImpl13 = KnoxStateMonitorImpl.this;
                    StringBuilder sb = new StringBuilder("handleUpdateStatusBarHidden() - mCallbacks.size is ");
                    ArrayList arrayList13 = knoxStateMonitorImpl13.mCallbacks;
                    sb.append(arrayList13.size());
                    Log.d("KnoxStateMonitorImpl", sb.toString());
                    while (i < arrayList13.size()) {
                        KnoxStateMonitorCallback knoxStateMonitorCallback10 = (KnoxStateMonitorCallback) ((WeakReference) arrayList13.get(i)).get();
                        if (knoxStateMonitorCallback10 != null) {
                            knoxStateMonitorCallback10.onUpdateStatusBarHidden();
                            Log.d("KnoxStateMonitorImpl", "         -" + i + "=" + knoxStateMonitorCallback10);
                        }
                        i++;
                    }
                    return;
                case 5020:
                    KnoxStateMonitorImpl knoxStateMonitorImpl14 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl14.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateNavigationBarHidden");
                    while (true) {
                        ArrayList arrayList14 = knoxStateMonitorImpl14.mCallbacks;
                        if (i < arrayList14.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback11 = (KnoxStateMonitorCallback) ((WeakReference) arrayList14.get(i)).get();
                            if (knoxStateMonitorCallback11 != null) {
                                knoxStateMonitorCallback11.onUpdateNavigationBarHidden();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5022:
                    KnoxStateMonitorImpl knoxStateMonitorImpl15 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl15.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleDisableDeviceWhenReachMaxFailed");
                    while (true) {
                        ArrayList arrayList15 = knoxStateMonitorImpl15.mCallbacks;
                        if (i < arrayList15.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback12 = (KnoxStateMonitorCallback) ((WeakReference) arrayList15.get(i)).get();
                            if (knoxStateMonitorCallback12 != null) {
                                knoxStateMonitorCallback12.onDisableDeviceWhenReachMaxFailed();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5023:
                    KnoxStateMonitorImpl knoxStateMonitorImpl16 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl16.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateQuickPanelButtonUsers");
                    while (true) {
                        ArrayList arrayList16 = knoxStateMonitorImpl16.mCallbacks;
                        if (i < arrayList16.size()) {
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5024:
                    KnoxStateMonitorImpl knoxStateMonitorImpl17 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl17.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleEnableMDMWallpaper");
                    while (true) {
                        ArrayList arrayList17 = knoxStateMonitorImpl17.mCallbacks;
                        if (i < arrayList17.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback13 = (KnoxStateMonitorCallback) ((WeakReference) arrayList17.get(i)).get();
                            if (knoxStateMonitorCallback13 != null) {
                                knoxStateMonitorCallback13.onEnableMDMWallpaper();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5025:
                    KnoxStateMonitorImpl knoxStateMonitorImpl18 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl18.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleMDMWallpaperChanged");
                    while (true) {
                        ArrayList arrayList18 = knoxStateMonitorImpl18.mCallbacks;
                        if (i < arrayList18.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback14 = (KnoxStateMonitorCallback) ((WeakReference) arrayList18.get(i)).get();
                            if (knoxStateMonitorCallback14 != null) {
                                knoxStateMonitorCallback14.onMDMWallpaperChanged();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5026:
                    KnoxStateMonitorImpl knoxStateMonitorImpl19 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl19.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateAdminLock");
                    while (true) {
                        ArrayList arrayList19 = knoxStateMonitorImpl19.mCallbacks;
                        if (i < arrayList19.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback15 = (KnoxStateMonitorCallback) ((WeakReference) arrayList19.get(i)).get();
                            if (knoxStateMonitorCallback15 != null) {
                                knoxStateMonitorCallback15.onUpdateAdminLock();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5027:
                    KnoxStateMonitorImpl knoxStateMonitorImpl20 = KnoxStateMonitorImpl.this;
                    boolean booleanValue = ((Boolean) message.obj).booleanValue();
                    knoxStateMonitorImpl20.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleSetHardKeyIntentState");
                    while (true) {
                        ArrayList arrayList20 = knoxStateMonitorImpl20.mCallbacks;
                        if (i < arrayList20.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback16 = (KnoxStateMonitorCallback) ((WeakReference) arrayList20.get(i)).get();
                            if (knoxStateMonitorCallback16 != null) {
                                knoxStateMonitorCallback16.onSetHardKeyIntentState(booleanValue);
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5028:
                    KnoxStateMonitorImpl knoxStateMonitorImpl21 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl21.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleUpdateQuickPanelUnavailableButtons");
                    while (true) {
                        ArrayList arrayList21 = knoxStateMonitorImpl21.mCallbacks;
                        if (i < arrayList21.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback17 = (KnoxStateMonitorCallback) ((WeakReference) arrayList21.get(i)).get();
                            if (knoxStateMonitorCallback17 != null) {
                                knoxStateMonitorCallback17.onUpdateQuickPanelUnavailableButtons();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                case 5029:
                    KnoxStateMonitorImpl knoxStateMonitorImpl22 = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl22.getClass();
                    Log.d("KnoxStateMonitorImpl", "handleDisableProfileWhenReachMaxFailed");
                    while (true) {
                        ArrayList arrayList22 = knoxStateMonitorImpl22.mCallbacks;
                        if (i < arrayList22.size()) {
                            KnoxStateMonitorCallback knoxStateMonitorCallback18 = (KnoxStateMonitorCallback) ((WeakReference) arrayList22.get(i)).get();
                            if (knoxStateMonitorCallback18 != null) {
                                knoxStateMonitorCallback18.onDisableProfileWhenReachMaxFailed();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
            }
        }
    };
    public CustomSdkMonitor mCustomSdkMonitor = new CustomSdkMonitor(this);
    public ContainerMonitor mContainerMonitor = new ContainerMonitor(this);
    public DualDarMonitor mDualDarMonitor = new DualDarMonitor(this);
    public EdmMonitor mEdmMonitor = new EdmMonitor(this);
    public SdpMonitor mSdpMonitor = new SdpMonitor();
    public UcmMonitor mUcmMonitor = new UcmMonitor();

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.knox.KnoxStateMonitorImpl$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.knox.KnoxStateMonitorImpl$2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.knox.KnoxStateMonitorImpl$3] */
    public KnoxStateMonitorImpl(Context context, DumpManager dumpManager) {
        this.mContext = context;
        if (DeviceState.isTesting()) {
            initKnoxClass();
        } else {
            Thread thread = new Thread(new Runnable() { // from class: com.android.systemui.knox.KnoxStateMonitorImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    KnoxStateMonitorImpl knoxStateMonitorImpl = KnoxStateMonitorImpl.this;
                    knoxStateMonitorImpl.initKnoxClass();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("com.sec.knox.keyguard.show");
                    intentFilter.addAction("com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL");
                    intentFilter.addAction("com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED");
                    ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, knoxStateMonitorImpl.mBroadCastReceiver);
                    try {
                        IntentFilter intentFilter2 = new IntentFilter();
                        intentFilter2.addAction("com.samsung.ucs.ucsservice.stateblocked");
                        knoxStateMonitorImpl.mContext.registerReceiver(knoxStateMonitorImpl.mUCMReceiver, intentFilter2, EnterpriseDeviceAdminInfo.USES_POLICY_KNOX_UCM_MGMT_TAG, null, 2);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }, "KnoxStateMonitorImpl");
            thread.setPriority(10);
            thread.start();
        }
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("KnoxStateMonitor state:");
        CustomSdkMonitor customSdkMonitor = this.mCustomSdkMonitor;
        if (customSdkMonitor != null) {
            customSdkMonitor.dump(printWriter, strArr);
        }
        ContainerMonitor containerMonitor = this.mContainerMonitor;
        if (containerMonitor != null) {
            containerMonitor.getClass();
        }
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor != null) {
            dualDarMonitor.getClass();
        }
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null) {
            edmMonitor.dump(printWriter, strArr);
        }
        UcmMonitor ucmMonitor = this.mUcmMonitor;
        if (ucmMonitor != null) {
            ucmMonitor.getClass();
        }
        SdpMonitor sdpMonitor = this.mSdpMonitor;
        if (sdpMonitor != null) {
            sdpMonitor.getClass();
        }
        printWriter.print("mCallback size=");
        ArrayList arrayList = this.mCallbacks;
        printWriter.println(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            KnoxStateMonitorCallback knoxStateMonitorCallback = (KnoxStateMonitorCallback) ((WeakReference) arrayList.get(i)).get();
            if (knoxStateMonitorCallback != null) {
                printWriter.println("   -" + i + "=" + knoxStateMonitorCallback);
            }
        }
    }

    public final List getContainerIds() {
        ContainerMonitor containerMonitor = this.mContainerMonitor;
        ArrayList arrayList = null;
        if (containerMonitor == null) {
            return null;
        }
        UserManager userManager = containerMonitor.mUserManager;
        if (userManager != null) {
            containerMonitor.mPersonas = userManager.getUsers(true);
        }
        List list = containerMonitor.mPersonas;
        if (list != null && list.size() > 0) {
            arrayList = new ArrayList();
            Iterator it = containerMonitor.mPersonas.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((UserInfo) it.next()).id));
            }
        }
        return arrayList;
    }

    public final long getDualDarInnerLockoutAttemptDeadline() {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor == null) {
            return -1L;
        }
        dualDarMonitor.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = dualDarMonitor.mLockoutAttemptDeadline;
        LockPatternUtils lockPatternUtils = dualDarMonitor.mLockPatternUtils;
        if (j < elapsedRealtime && dualDarMonitor.mLockoutAttemptTimeout != 0) {
            return lockPatternUtils.getLockoutAttemptDeadline(dualDarMonitor.getInnerAuthUserId(KeyguardUpdateMonitor.getCurrentUser()));
        }
        if (j > elapsedRealtime + dualDarMonitor.mLockoutAttemptTimeout) {
            return lockPatternUtils.getLockoutAttemptDeadline(dualDarMonitor.getInnerAuthUserId(KeyguardUpdateMonitor.getCurrentUser()));
        }
        return j;
    }

    public final int getInnerAuthUserId(int i) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor == null) {
            return i;
        }
        return dualDarMonitor.getInnerAuthUserId(i);
    }

    public final int getMainUserId(int i) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor == null) {
            return i;
        }
        int mainUserId = dualDarMonitor.mDualDarAuthUtils.getMainUserId(i);
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("getMainUserId - userId : ", i, ", ret : ", mainUserId, "DualDarMonitor");
        return mainUserId;
    }

    public final List getQuickPanelItems() {
        CustomSdkMonitor customSdkMonitor = this.mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return null;
        }
        customSdkMonitor.getClass();
        ArrayList arrayList = new ArrayList();
        String str = customSdkMonitor.mQuickPanelItems;
        if (str == null) {
            return null;
        }
        for (String str2 : str.split(",")) {
            if (str2.length() > 0) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public final List getQuickPanelUnavailableButtons() {
        CustomSdkMonitor customSdkMonitor = this.mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return null;
        }
        customSdkMonitor.getClass();
        ArrayList arrayList = new ArrayList();
        String str = customSdkMonitor.mQuickPanelUnavailableButtons;
        if (str == null) {
            return null;
        }
        for (String str2 : str.split(",")) {
            if (str2.length() > 0) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public final void initKnoxClass() {
        CustomSdkMonitor customSdkMonitor = this.mCustomSdkMonitor;
        customSdkMonitor.getClass();
        if (!DeviceState.isTesting()) {
            PrivateCustomDeviceManager privateCustomDeviceManager = PrivateCustomDeviceManager.getInstance();
            try {
                if (privateCustomDeviceManager != null) {
                    Log.d("CustomSdkMonitor", "registerCallback this = " + customSdkMonitor);
                    privateCustomDeviceManager.registerSystemUICallback(customSdkMonitor);
                } else {
                    Log.d("CustomSdkMonitor", "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null");
                }
            } catch (Exception e) {
                Log.e("CustomSdkMonitor", "registerSystemUICallback() Failed!", e);
            }
        }
        this.mContainerMonitor.getClass();
        this.mDualDarMonitor.getClass();
        EdmMonitor edmMonitor = this.mEdmMonitor;
        edmMonitor.getClass();
        if (!DeviceState.isTesting()) {
            EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance();
            try {
                if (enterpriseDeviceManager != null) {
                    enterpriseDeviceManager.registerSystemUICallback(edmMonitor);
                } else {
                    Log.d("EdmMonitor", "registerKnoxCallback() cannot reference because edm is null");
                }
            } catch (Exception e2) {
                Log.e("EdmMonitor", "registerKnoxCallback() Failed!", e2);
            }
            UserInfo userInfo = edmMonitor.mUserManager.getUserInfo(ActivityManager.getCurrentUser());
            if (userInfo != null) {
                edmMonitor.mEnableAdminLock = userInfo.isAdminLocked();
                edmMonitor.mLicenseExpired = false;
                StringBuilder sb = new StringBuilder("EdmMonitor registerCallback mEnableAdminLock:");
                sb.append(edmMonitor.mEnableAdminLock);
                sb.append("  mLicenseExpired:");
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, edmMonitor.mLicenseExpired, "EdmMonitor");
            }
        }
        this.mSdpMonitor.getClass();
        UcmMonitor ucmMonitor = this.mUcmMonitor;
        ucmMonitor.getClass();
        if (!DeviceState.isTesting()) {
            IUcmService asInterface = IUcmService.Stub.asInterface(ServiceManager.getService("com.samsung.ucs.ucsservice"));
            if (asInterface == null) {
                Log.d("SdpMonitor", "UcmMonitor failed to get UCM System service");
                return;
            }
            try {
                asInterface.registerSystemUICallback(ucmMonitor);
            } catch (Exception unused) {
                Log.d("SdpMonitor", "UcmMonitor failed to be registered");
            }
        }
    }

    public final boolean isAdminLockEnabled() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        if (!edmMonitor.mEnableAdminLock && !edmMonitor.mLicenseExpired) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isAirplaneModeTileBlocked() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        if (!(!edmMonitor.mSettingsChangesAllowed) && edmMonitor.mAirplaneModeAllowed) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isBlockedEdmSettingsChange$1() {
        if (this.mEdmMonitor != null && (!r1.mSettingsChangesAllowed)) {
            return true;
        }
        return false;
    }

    public final boolean isBluetoothTileBlocked() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        if (!(!edmMonitor.mSettingsChangesAllowed) && edmMonitor.mBluetoothAllowed) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isBrightnessBlocked() {
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null) {
            Context context = edmMonitor.knoxStateMonitor.mContext;
            if (!edmMonitor.mSettingsChangesAllowed) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDeviceDisabledForMaxFailedAttempt() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        if (edmMonitor.mIsDeviceDisableForMaxFailedAttempt) {
            if (edmMonitor.mMaxNumFailedAttemptForDisable > 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                edmMonitor.mIsDeviceDisableForMaxFailedAttempt = false;
            }
        }
        if (!edmMonitor.mIsDeviceDisableForMaxFailedAttempt) {
            return false;
        }
        return true;
    }

    public final void isDisableDeviceByMultifactor() {
        if (isMultifactorAuthEnforced()) {
            Log.d("KnoxStateMonitorImpl", "isDisableDeviceByMultifactor( = false");
        }
    }

    public final boolean isDualDarDeviceOwner(int i) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor != null) {
            dualDarMonitor.getClass();
            if (DualDarManager.isOnDeviceOwner(i)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDualDarInnerAuthRequired(int i) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor != null) {
            boolean isInnerAuthRequired = DualDarManager.getInstance(dualDarMonitor.mContext).isInnerAuthRequired(i);
            KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("isInnerAuthRequired - userId : ", i, ", ret : ", isInnerAuthRequired, "DualDarMonitor");
            if (isInnerAuthRequired) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDualDarInnerLayerUnlocked(int i) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor != null) {
            boolean isInnerLayerUnlocked = DualDarManager.getInstance(dualDarMonitor.mContext).isInnerLayerUnlocked(i);
            KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("isDualDarInnerLayerUnlocked - userId : ", i, ", ret : ", isInnerLayerUnlocked, "DualDarMonitor");
            if (isInnerLayerUnlocked) {
                return true;
            }
        }
        return false;
    }

    public final boolean isFlashlightTileBlocked() {
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null) {
            Context context = edmMonitor.knoxStateMonitor.mContext;
            if (!edmMonitor.mSettingsChangesAllowed) {
                return true;
            }
        }
        return false;
    }

    public final boolean isLocationTileBlocked() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        boolean z6 = !edmMonitor.mSettingsChangesAllowed;
        if (edmMonitor.mLocationProviderAllowed.get("gps") != null) {
            z = ((Boolean) edmMonitor.mLocationProviderAllowed.get("gps")).booleanValue();
        } else {
            z = true;
        }
        boolean z7 = !z;
        if (edmMonitor.mLocationProviderAllowed.get("network") != null) {
            z2 = ((Boolean) edmMonitor.mLocationProviderAllowed.get("network")).booleanValue();
        } else {
            z2 = true;
        }
        boolean z8 = !z2;
        boolean z9 = edmMonitor.mGPSStateChangeAllowed;
        boolean isLocationProviderEnabled = Settings.Secure.isLocationProviderEnabled(edmMonitor.knoxStateMonitor.mContext.getContentResolver(), "gps");
        if (!z7 && (isLocationProviderEnabled || z9)) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (isLocationProviderEnabled && !z9) {
            z4 = true;
        } else {
            z4 = false;
        }
        if ((!z3 || !z8) && !z6 && z9) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (z4) {
            z5 = true;
        }
        if (!z5) {
            return false;
        }
        return true;
    }

    public final boolean isLockScreenDisabledbyKNOX() {
        boolean z;
        if (((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isForcedLock()) {
            return false;
        }
        if ((this.mCustomSdkMonitor.mKnoxCustomLockScreenOverrideMode & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isMobileDataTileBlocked() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        if (!(!edmMonitor.mSettingsChangesAllowed) && edmMonitor.mCellularDataAllowed) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isMultifactorAuthEnforced() {
        if (!this.mEdmMonitor.mMultiFactorAuthEnabled || ((SettingsHelper) Dependency.get(SettingsHelper.class)).mItemLists.get("knox_finger_print_plus").getIntValue() != 1) {
            return false;
        }
        return true;
    }

    public final boolean isPersona(int i) {
        if (DeviceState.isTesting()) {
            return false;
        }
        ContainerMonitor containerMonitor = this.mContainerMonitor;
        if (i == 0) {
            if (!containerMonitor.KNOX_DEBUG) {
                return false;
            }
            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("isPersona for user ", i, " is false", "ContainerMonitor");
            return false;
        }
        containerMonitor.getClass();
        return SemPersonaManager.isKnoxId(i);
    }

    public final boolean isRotationLockTileBlocked() {
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null) {
            Context context = edmMonitor.knoxStateMonitor.mContext;
            if (!edmMonitor.mSettingsChangesAllowed) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSoundModeTileBlocked() {
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null) {
            Context context = edmMonitor.knoxStateMonitor.mContext;
            if (!edmMonitor.mSettingsChangesAllowed) {
                return true;
            }
        }
        return false;
    }

    public final boolean isStatusBarHidden() {
        CustomSdkMonitor customSdkMonitor = this.mCustomSdkMonitor;
        if (customSdkMonitor != null && (customSdkMonitor.mIsCustomSdkStatusBarHidden || this.mEdmMonitor.mIsStatusBarHidden)) {
            return true;
        }
        return false;
    }

    public final boolean isUserMobileDataRestricted() {
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor != null && edmMonitor.mUserManager.hasUserRestriction("no_config_mobile_networks", UserHandle.of(KeyguardUpdateMonitor.getCurrentUser()))) {
            return true;
        }
        return false;
    }

    public final boolean isWifiHotspotTileBlocked() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        if (!(!edmMonitor.mSettingsChangesAllowed) && edmMonitor.mWifiTetheringAllowed) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isWifiTileBlocked() {
        boolean z;
        EdmMonitor edmMonitor = this.mEdmMonitor;
        if (edmMonitor == null) {
            return false;
        }
        Context context = edmMonitor.knoxStateMonitor.mContext;
        if (!(!edmMonitor.mSettingsChangesAllowed) && edmMonitor.mWifiAllowed && edmMonitor.mWifiStateChangeAllowed) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final synchronized void registerCallback(KnoxStateMonitorCallback knoxStateMonitorCallback) {
        Log.d("KnoxStateMonitorImpl", "registerCallback() callback=" + knoxStateMonitorCallback);
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            if (((WeakReference) this.mCallbacks.get(i)).get() == knoxStateMonitorCallback) {
                Log.d("KnoxStateMonitorImpl", "removeCallback() mCallbacks has same callback");
                return;
            }
        }
        this.mCallbacks.add(new WeakReference(knoxStateMonitorCallback));
        removeCallback(null);
    }

    public final synchronized void removeCallback(KnoxStateMonitorCallback knoxStateMonitorCallback) {
        Log.d("KnoxStateMonitorImpl", "removeCallback() callback=" + knoxStateMonitorCallback);
        for (int size = this.mCallbacks.size() + (-1); size >= 0; size--) {
            if (((WeakReference) this.mCallbacks.get(size)).get() == knoxStateMonitorCallback) {
                Log.d("KnoxStateMonitorImpl", "removeCallback() mCallbacks has same callback");
                this.mCallbacks.remove(size);
            }
        }
    }

    public final long setLockoutAttemptDeadline(int i, int i2) {
        DualDarMonitor dualDarMonitor = this.mDualDarMonitor;
        if (dualDarMonitor == null) {
            return -1L;
        }
        long lockoutAttemptDeadline = dualDarMonitor.mLockPatternUtils.setLockoutAttemptDeadline(i, i2);
        if (lockoutAttemptDeadline != dualDarMonitor.mLockoutAttemptDeadline || i2 != dualDarMonitor.mLockoutAttemptTimeout) {
            dualDarMonitor.mLockoutAttemptDeadline = lockoutAttemptDeadline;
            dualDarMonitor.mLockoutAttemptTimeout = i2;
        }
        return dualDarMonitor.mLockoutAttemptDeadline;
    }
}
