package com.android.systemui.appops;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioRecordingConfiguration;
import android.os.Handler;
import android.os.Looper;
import android.permission.PermissionManager;
import android.util.ArraySet;
import android.util.SparseArray;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.appops.AppOpsController;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyController;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyControllerImpl;
import com.android.systemui.util.Assert;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppOpsControllerImpl extends BroadcastReceiver implements AppOpsController, AppOpsManager.OnOpActiveChangedListener, AppOpsManager.OnOpNotedInternalListener, IndividualSensorPrivacyController.Callback, Dumpable {
    public static final int[] OPS = {42, 26, 101, 24, 27, 120, 121, 100, 0, 1};
    public final AppOpsManager mAppOps;
    public final AudioManager mAudioManager;
    public H mBGHandler;
    public boolean mCameraDisabled;
    public final SystemClock mClock;
    public final Context mContext;
    public final BroadcastDispatcher mDispatcher;
    public boolean mListening;
    public boolean mMicMuted;
    public final IndividualSensorPrivacyController mSensorPrivacyController;
    public final List mCallbacks = new ArrayList();
    public final SparseArray mCallbacksByCode = new SparseArray();
    public final List mActiveItems = new ArrayList();
    public final List mNotedItems = new ArrayList();
    public final SparseArray mRecordingsByUid = new SparseArray();
    public final AnonymousClass1 mAudioRecordingCallback = new AnonymousClass1();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.appops.AppOpsControllerImpl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends AudioManager.AudioRecordingCallback {
        public AnonymousClass1() {
        }

        @Override // android.media.AudioManager.AudioRecordingCallback
        public final void onRecordingConfigChanged(List list) {
            synchronized (AppOpsControllerImpl.this.mActiveItems) {
                AppOpsControllerImpl.this.mRecordingsByUid.clear();
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    AudioRecordingConfiguration audioRecordingConfiguration = (AudioRecordingConfiguration) list.get(i);
                    ArrayList arrayList = (ArrayList) AppOpsControllerImpl.this.mRecordingsByUid.get(audioRecordingConfiguration.getClientUid());
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        AppOpsControllerImpl.this.mRecordingsByUid.put(audioRecordingConfiguration.getClientUid(), arrayList);
                    }
                    arrayList.add(audioRecordingConfiguration);
                }
            }
            AppOpsControllerImpl.this.updateSensorDisabledStatus();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class H extends Handler {
        public H(Looper looper) {
            super(looper);
        }
    }

    public AppOpsControllerImpl(Context context, Looper looper, DumpManager dumpManager, AudioManager audioManager, IndividualSensorPrivacyController individualSensorPrivacyController, BroadcastDispatcher broadcastDispatcher, SystemClock systemClock) {
        this.mDispatcher = broadcastDispatcher;
        this.mAppOps = (AppOpsManager) context.getSystemService("appops");
        this.mBGHandler = new H(looper);
        for (int i = 0; i < 10; i++) {
            this.mCallbacksByCode.put(OPS[i], new ArraySet());
        }
        this.mAudioManager = audioManager;
        this.mSensorPrivacyController = individualSensorPrivacyController;
        this.mMicMuted = audioManager.isMicrophoneMute() || ((IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController).isSensorBlocked(1);
        this.mCameraDisabled = ((IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController).isSensorBlocked(2);
        this.mContext = context;
        this.mClock = systemClock;
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "AppOpsControllerImpl", this);
    }

    public static AppOpItem getAppOpItemLocked(int i, int i2, String str, List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            AppOpItem appOpItem = (AppOpItem) arrayList.get(i3);
            if (appOpItem.mCode == i && appOpItem.mUid == i2 && appOpItem.mPackageName.equals(str)) {
                return appOpItem;
            }
        }
        return null;
    }

    public final void addCallback(int[] iArr, AppOpsController.Callback callback) {
        int length = iArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            if (this.mCallbacksByCode.contains(iArr[i])) {
                ((Set) this.mCallbacksByCode.get(iArr[i])).add(callback);
                z = true;
            }
        }
        if (z) {
            ((ArrayList) this.mCallbacks).add(callback);
        }
        if (!((ArrayList) this.mCallbacks).isEmpty()) {
            setListening(true);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "AppOpsController state:", "  Listening: ");
        m.append(this.mListening);
        printWriter.println(m.toString());
        printWriter.println("  Active Items:");
        for (int i = 0; i < ((ArrayList) this.mActiveItems).size(); i++) {
            AppOpItem appOpItem = (AppOpItem) ((ArrayList) this.mActiveItems).get(i);
            printWriter.print("    ");
            printWriter.println(appOpItem.toString());
        }
        printWriter.println("  Noted Items:");
        for (int i2 = 0; i2 < ((ArrayList) this.mNotedItems).size(); i2++) {
            AppOpItem appOpItem2 = (AppOpItem) ((ArrayList) this.mNotedItems).get(i2);
            printWriter.print("    ");
            printWriter.println(appOpItem2.toString());
        }
    }

    public final List getActiveAppOps(boolean z) {
        int i;
        Assert.isNotMainThread();
        ArrayList arrayList = new ArrayList();
        synchronized (this.mActiveItems) {
            int size = ((ArrayList) this.mActiveItems).size();
            for (int i2 = 0; i2 < size; i2++) {
                AppOpItem appOpItem = (AppOpItem) ((ArrayList) this.mActiveItems).get(i2);
                if (isUserVisible(appOpItem.mPackageName, appOpItem.mAttributionTag) && (z || !appOpItem.mIsDisabled)) {
                    arrayList.add(appOpItem);
                }
            }
        }
        synchronized (this.mNotedItems) {
            int size2 = ((ArrayList) this.mNotedItems).size();
            for (i = 0; i < size2; i++) {
                AppOpItem appOpItem2 = (AppOpItem) ((ArrayList) this.mNotedItems).get(i);
                if (isUserVisible(appOpItem2.mPackageName, appOpItem2.mAttributionTag)) {
                    arrayList.add(appOpItem2);
                }
            }
        }
        return arrayList;
    }

    public final boolean isAnyRecordingPausedLocked(int i) {
        if (this.mMicMuted) {
            return true;
        }
        List list = (List) this.mRecordingsByUid.get(i);
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((AudioRecordingConfiguration) list.get(i2)).isClientSilenced()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isUserVisible(String str, String str2) {
        if (!PermissionManager.shouldShowPackageForIndicatorCached(this.mContext, str) && !"SLocationService".equals(str2) && !"Biometrics_FaceService".equals(str2)) {
            return false;
        }
        return true;
    }

    public final void notifySuscribers(final int i, final String str, final String str2, final int i2, final boolean z) {
        this.mBGHandler.post(new Runnable() { // from class: com.android.systemui.appops.AppOpsControllerImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppOpsControllerImpl appOpsControllerImpl = AppOpsControllerImpl.this;
                int i3 = i;
                int i4 = i2;
                appOpsControllerImpl.notifySuscribersWorker(i3, str, str2, i4, z);
            }
        });
    }

    public final void notifySuscribersWorker(int i, String str, String str2, int i2, boolean z) {
        if (this.mCallbacksByCode.contains(i) && isUserVisible(str, str2)) {
            Iterator it = ((Set) this.mCallbacksByCode.get(i)).iterator();
            while (it.hasNext()) {
                ((AppOpsController.Callback) it.next()).onActiveStateChanged(z, str, i, i2);
            }
        }
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        onOpActiveChanged(str, i, str2, null, z, 0, -1);
    }

    public final void onOpNoted(int i, int i2, String str, String str2, int i3, int i4) {
        final AppOpItem appOpItemLocked;
        boolean z;
        boolean z2;
        if (i4 != 0) {
            return;
        }
        synchronized (this.mNotedItems) {
            appOpItemLocked = getAppOpItemLocked(i, i2, str, this.mNotedItems);
            z = true;
            if (appOpItemLocked == null) {
                ((SystemClockImpl) this.mClock).getClass();
                appOpItemLocked = new AppOpItem(i, i2, str, android.os.SystemClock.elapsedRealtime(), str2);
                ((ArrayList) this.mNotedItems).add(appOpItemLocked);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        this.mBGHandler.removeCallbacksAndMessages(appOpItemLocked);
        final H h = this.mBGHandler;
        h.removeCallbacksAndMessages(appOpItemLocked);
        h.postDelayed(new Runnable() { // from class: com.android.systemui.appops.AppOpsControllerImpl.H.1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z3;
                AppOpsControllerImpl appOpsControllerImpl = AppOpsControllerImpl.this;
                AppOpItem appOpItem = appOpItemLocked;
                int i5 = appOpItem.mCode;
                int i6 = appOpItem.mUid;
                String str3 = appOpItem.mPackageName;
                String str4 = appOpItem.mAttributionTag;
                synchronized (appOpsControllerImpl.mNotedItems) {
                    AppOpItem appOpItemLocked2 = AppOpsControllerImpl.getAppOpItemLocked(i5, i6, str3, appOpsControllerImpl.mNotedItems);
                    if (appOpItemLocked2 != null) {
                        ((ArrayList) appOpsControllerImpl.mNotedItems).remove(appOpItemLocked2);
                        synchronized (appOpsControllerImpl.mActiveItems) {
                            if (AppOpsControllerImpl.getAppOpItemLocked(i5, i6, str3, appOpsControllerImpl.mActiveItems) != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                        if (!z3) {
                            appOpsControllerImpl.notifySuscribersWorker(i5, str3, str4, i6, false);
                        }
                    }
                }
            }
        }, appOpItemLocked, 5000L);
        if (!z2) {
            return;
        }
        synchronized (this.mActiveItems) {
            if (getAppOpItemLocked(i, i2, str, this.mActiveItems) == null) {
                z = false;
            }
        }
        if (!z) {
            notifySuscribers(i, str, str2, i2, true);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z = true;
        if (!this.mAudioManager.isMicrophoneMute() && !((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).isSensorBlocked(1)) {
            z = false;
        }
        this.mMicMuted = z;
        updateSensorDisabledStatus();
    }

    @Override // com.android.systemui.statusbar.policy.IndividualSensorPrivacyController.Callback
    public final void onSensorBlockedChanged(final int i, final boolean z) {
        this.mBGHandler.post(new Runnable() { // from class: com.android.systemui.appops.AppOpsControllerImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AppOpsControllerImpl appOpsControllerImpl = AppOpsControllerImpl.this;
                int i2 = i;
                boolean z2 = z;
                if (i2 == 2) {
                    appOpsControllerImpl.mCameraDisabled = z2;
                } else {
                    boolean z3 = true;
                    if (i2 == 1) {
                        if (!appOpsControllerImpl.mAudioManager.isMicrophoneMute() && !z2) {
                            z3 = false;
                        }
                        appOpsControllerImpl.mMicMuted = z3;
                    }
                }
                appOpsControllerImpl.updateSensorDisabledStatus();
            }
        });
    }

    public void setBGHandler(H h) {
        this.mBGHandler = h;
    }

    public void setListening(boolean z) {
        this.mListening = z;
        if (z) {
            for (AppOpsManager.PackageOps packageOps : this.mAppOps.getPackagesForOps(OPS)) {
                for (AppOpsManager.OpEntry opEntry : packageOps.getOps()) {
                    for (Map.Entry entry : opEntry.getAttributedOpEntries().entrySet()) {
                        if (((AppOpsManager.AttributedOpEntry) entry.getValue()).isRunning()) {
                            onOpActiveChanged(opEntry.getOpStr(), packageOps.getUid(), packageOps.getPackageName(), (String) entry.getKey(), true, 0, -1);
                        }
                    }
                }
            }
            AppOpsManager appOpsManager = this.mAppOps;
            int[] iArr = OPS;
            appOpsManager.startWatchingActive(iArr, this);
            this.mAppOps.startWatchingNoted(iArr, this);
            this.mAudioManager.registerAudioRecordingCallback(this.mAudioRecordingCallback, this.mBGHandler);
            ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).addCallback(this);
            boolean z2 = true;
            if (!this.mAudioManager.isMicrophoneMute() && !((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).isSensorBlocked(1)) {
                z2 = false;
            }
            this.mMicMuted = z2;
            this.mCameraDisabled = ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).isSensorBlocked(2);
            this.mBGHandler.post(new Runnable() { // from class: com.android.systemui.appops.AppOpsControllerImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AppOpsControllerImpl appOpsControllerImpl = AppOpsControllerImpl.this;
                    appOpsControllerImpl.mAudioRecordingCallback.onRecordingConfigChanged(appOpsControllerImpl.mAudioManager.getActiveRecordingConfigurations());
                }
            });
            this.mDispatcher.registerReceiverWithHandler(this, new IntentFilter("android.media.action.MICROPHONE_MUTE_CHANGED"), this.mBGHandler);
            return;
        }
        this.mAppOps.stopWatchingActive(this);
        this.mAppOps.stopWatchingNoted(this);
        this.mAudioManager.unregisterAudioRecordingCallback(this.mAudioRecordingCallback);
        ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).removeCallback(this);
        this.mBGHandler.removeCallbacksAndMessages(null);
        this.mDispatcher.unregisterReceiver(this);
        synchronized (this.mActiveItems) {
            ((ArrayList) this.mActiveItems).clear();
            this.mRecordingsByUid.clear();
        }
        synchronized (this.mNotedItems) {
            ((ArrayList) this.mNotedItems).clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e A[Catch: all -> 0x0063, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:15:0x002e, B:16:0x0047, B:18:0x004b, B:21:0x0058, B:23:0x005e, B:33:0x0043, B:38:0x0061), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b A[Catch: all -> 0x0063, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:15:0x002e, B:16:0x0047, B:18:0x004b, B:21:0x0058, B:23:0x005e, B:33:0x0043, B:38:0x0061), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0043 A[Catch: all -> 0x0063, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:15:0x002e, B:16:0x0047, B:18:0x004b, B:21:0x0058, B:23:0x005e, B:33:0x0043, B:38:0x0061), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSensorDisabledStatus() {
        /*
            r14 = this;
            java.util.List r0 = r14.mActiveItems
            monitor-enter(r0)
            java.util.List r1 = r14.mActiveItems     // Catch: java.lang.Throwable -> L63
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch: java.lang.Throwable -> L63
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L63
            r2 = 0
            r3 = r2
        Ld:
            if (r3 >= r1) goto L61
            java.util.List r4 = r14.mActiveItems     // Catch: java.lang.Throwable -> L63
            java.util.ArrayList r4 = (java.util.ArrayList) r4     // Catch: java.lang.Throwable -> L63
            java.lang.Object r4 = r4.get(r3)     // Catch: java.lang.Throwable -> L63
            com.android.systemui.appops.AppOpItem r4 = (com.android.systemui.appops.AppOpItem) r4     // Catch: java.lang.Throwable -> L63
            int r5 = r4.mCode     // Catch: java.lang.Throwable -> L63
            r6 = 27
            r7 = 1
            if (r5 == r6) goto L2b
            r6 = 100
            if (r5 == r6) goto L2b
            r6 = 120(0x78, float:1.68E-43)
            if (r5 != r6) goto L29
            goto L2b
        L29:
            r6 = r2
            goto L2c
        L2b:
            r6 = r7
        L2c:
            if (r6 == 0) goto L35
            int r5 = r4.mUid     // Catch: java.lang.Throwable -> L63
            boolean r5 = r14.isAnyRecordingPausedLocked(r5)     // Catch: java.lang.Throwable -> L63
            goto L47
        L35:
            r6 = 26
            if (r5 == r6) goto L40
            r6 = 101(0x65, float:1.42E-43)
            if (r5 != r6) goto L3e
            goto L40
        L3e:
            r5 = r2
            goto L41
        L40:
            r5 = r7
        L41:
            if (r5 == 0) goto L46
            boolean r5 = r14.mCameraDisabled     // Catch: java.lang.Throwable -> L63
            goto L47
        L46:
            r5 = r2
        L47:
            boolean r6 = r4.mIsDisabled     // Catch: java.lang.Throwable -> L63
            if (r6 == r5) goto L5e
            r4.mIsDisabled = r5     // Catch: java.lang.Throwable -> L63
            int r9 = r4.mCode     // Catch: java.lang.Throwable -> L63
            int r12 = r4.mUid     // Catch: java.lang.Throwable -> L63
            java.lang.String r10 = r4.mPackageName     // Catch: java.lang.Throwable -> L63
            if (r5 != 0) goto L57
            r13 = r7
            goto L58
        L57:
            r13 = r2
        L58:
            java.lang.String r11 = r4.mAttributionTag     // Catch: java.lang.Throwable -> L63
            r8 = r14
            r8.notifySuscribers(r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L63
        L5e:
            int r3 = r3 + 1
            goto Ld
        L61:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L63
            return
        L63:
            r14 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L63
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.appops.AppOpsControllerImpl.updateSensorDisabledStatus():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0054 A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:15:0x001e, B:18:0x002a, B:27:0x0054, B:28:0x006d, B:31:0x007b, B:58:0x0069, B:63:0x0081, B:64:0x0088, B:66:0x008b), top: B:14:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0069 A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:15:0x001e, B:18:0x002a, B:27:0x0054, B:28:0x006d, B:31:0x007b, B:58:0x0069, B:63:0x0081, B:64:0x0088, B:66:0x008b), top: B:14:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onOpActiveChanged(java.lang.String r16, int r17, java.lang.String r18, java.lang.String r19, boolean r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 179
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.appops.AppOpsControllerImpl.onOpActiveChanged(java.lang.String, int, java.lang.String, java.lang.String, boolean, int, int):void");
    }
}
