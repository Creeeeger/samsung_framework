package com.android.systemui.privacy;

import android.content.Context;
import android.content.pm.UserInfo;
import android.util.IndentingPrintWriter;
import com.android.systemui.appops.AppOpItem;
import com.android.systemui.appops.AppOpsController;
import com.android.systemui.appops.AppOpsControllerImpl;
import com.android.systemui.privacy.AppOpsPrivacyItemMonitor;
import com.android.systemui.privacy.PrivacyConfig;
import com.android.systemui.privacy.PrivacyItemMonitor;
import com.android.systemui.privacy.logging.PrivacyLogger;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppOpsPrivacyItemMonitor implements PrivacyItemMonitor {
    public static final Companion Companion = new Companion(null);
    public static final int[] OPS;
    public static final int[] OPS_LOCATION;
    public static final int[] OPS_MIC_CAMERA;
    public static final int[] USER_INDEPENDENT_OPS;
    public final AppOpsController appOpsController;
    public final DelayableExecutor bgExecutor;
    public PrivacyItemMonitor.Callback callback;
    public final AppOpsPrivacyItemMonitor$configCallback$1 configCallback;
    public boolean listening;
    public boolean locationAvailable;
    public final PrivacyLogger logger;
    public boolean micCameraAvailable;
    public final PrivacyConfig privacyConfig;
    public final UserTracker userTracker;
    public final Object lock = new Object();
    public final AppOpsPrivacyItemMonitor$appOpsCallback$1 appOpsCallback = new AppOpsController.Callback() { // from class: com.android.systemui.privacy.AppOpsPrivacyItemMonitor$appOpsCallback$1
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        
            if (kotlin.collections.ArraysKt___ArraysKt.contains(r9, com.android.systemui.privacy.AppOpsPrivacyItemMonitor.USER_INDEPENDENT_OPS) != false) goto L33;
         */
        @Override // com.android.systemui.appops.AppOpsController.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onActiveStateChanged(boolean r7, java.lang.String r8, int r9, int r10) {
            /*
                r6 = this;
                com.android.systemui.privacy.AppOpsPrivacyItemMonitor r6 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.this
                java.lang.Object r0 = r6.lock
                monitor-enter(r0)
                com.android.systemui.privacy.AppOpsPrivacyItemMonitor$Companion r1 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.Companion     // Catch: java.lang.Throwable -> L74
                r1.getClass()     // Catch: java.lang.Throwable -> L74
                int[] r1 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.OPS_MIC_CAMERA     // Catch: java.lang.Throwable -> L74
                boolean r1 = kotlin.collections.ArraysKt___ArraysKt.contains(r9, r1)     // Catch: java.lang.Throwable -> L74
                if (r1 == 0) goto L18
                boolean r1 = r6.micCameraAvailable     // Catch: java.lang.Throwable -> L74
                if (r1 != 0) goto L18
                monitor-exit(r0)
                return
            L18:
                int[] r1 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.OPS_LOCATION     // Catch: java.lang.Throwable -> L74
                boolean r1 = kotlin.collections.ArraysKt___ArraysKt.contains(r9, r1)     // Catch: java.lang.Throwable -> L74
                if (r1 == 0) goto L26
                boolean r1 = r6.locationAvailable     // Catch: java.lang.Throwable -> L74
                if (r1 != 0) goto L26
                monitor-exit(r0)
                return
            L26:
                com.android.systemui.settings.UserTracker r1 = r6.userTracker     // Catch: java.lang.Throwable -> L74
                com.android.systemui.settings.UserTrackerImpl r1 = (com.android.systemui.settings.UserTrackerImpl) r1     // Catch: java.lang.Throwable -> L74
                java.util.List r1 = r1.getUserProfiles()     // Catch: java.lang.Throwable -> L74
                boolean r2 = r1 instanceof java.util.Collection     // Catch: java.lang.Throwable -> L74
                r3 = 0
                if (r2 == 0) goto L3a
                boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L74
                if (r2 == 0) goto L3a
                goto L59
            L3a:
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L74
            L3e:
                boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L74
                if (r2 == 0) goto L59
                java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L74
                android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2     // Catch: java.lang.Throwable -> L74
                int r2 = r2.id     // Catch: java.lang.Throwable -> L74
                int r4 = android.os.UserHandle.getUserId(r10)     // Catch: java.lang.Throwable -> L74
                r5 = 1
                if (r2 != r4) goto L55
                r2 = r5
                goto L56
            L55:
                r2 = r3
            L56:
                if (r2 == 0) goto L3e
                r3 = r5
            L59:
                if (r3 != 0) goto L68
                com.android.systemui.privacy.AppOpsPrivacyItemMonitor$Companion r1 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.Companion     // Catch: java.lang.Throwable -> L74
                r1.getClass()     // Catch: java.lang.Throwable -> L74
                int[] r1 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.USER_INDEPENDENT_OPS     // Catch: java.lang.Throwable -> L74
                boolean r1 = kotlin.collections.ArraysKt___ArraysKt.contains(r9, r1)     // Catch: java.lang.Throwable -> L74
                if (r1 == 0) goto L70
            L68:
                com.android.systemui.privacy.logging.PrivacyLogger r1 = r6.logger     // Catch: java.lang.Throwable -> L74
                r1.logUpdatedItemFromAppOps(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L74
                r6.dispatchOnPrivacyItemsChanged()     // Catch: java.lang.Throwable -> L74
            L70:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L74
                monitor-exit(r0)
                return
            L74:
                r6 = move-exception
                monitor-exit(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.privacy.AppOpsPrivacyItemMonitor$appOpsCallback$1.onActiveStateChanged(boolean, java.lang.String, int, int):void");
        }
    };
    public final UserTracker.Callback userTrackerCallback = new UserTracker.Callback() { // from class: com.android.systemui.privacy.AppOpsPrivacyItemMonitor$userTrackerCallback$1
        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onProfilesChanged(List list) {
            AppOpsPrivacyItemMonitor.Companion companion = AppOpsPrivacyItemMonitor.Companion;
            AppOpsPrivacyItemMonitor.this.onCurrentProfilesChanged();
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            AppOpsPrivacyItemMonitor.Companion companion = AppOpsPrivacyItemMonitor.Companion;
            AppOpsPrivacyItemMonitor.this.onCurrentProfilesChanged();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        int[] iArr = {26, 101, 27, 100, 120, 121};
        OPS_MIC_CAMERA = iArr;
        int[] iArr2 = {0, 1};
        OPS_LOCATION = iArr2;
        int length = iArr.length;
        int length2 = iArr2.length;
        int[] copyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(iArr2, 0, copyOf, length, length2);
        OPS = copyOf;
        USER_INDEPENDENT_OPS = new int[]{101, 100};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.privacy.AppOpsPrivacyItemMonitor$appOpsCallback$1] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.systemui.privacy.AppOpsPrivacyItemMonitor$configCallback$1, com.android.systemui.privacy.PrivacyConfig$Callback] */
    public AppOpsPrivacyItemMonitor(AppOpsController appOpsController, UserTracker userTracker, PrivacyConfig privacyConfig, DelayableExecutor delayableExecutor, PrivacyLogger privacyLogger) {
        this.appOpsController = appOpsController;
        this.userTracker = userTracker;
        this.privacyConfig = privacyConfig;
        this.bgExecutor = delayableExecutor;
        this.logger = privacyLogger;
        this.micCameraAvailable = privacyConfig.micCameraAvailable;
        this.locationAvailable = privacyConfig.locationAvailable;
        ?? r1 = new PrivacyConfig.Callback() { // from class: com.android.systemui.privacy.AppOpsPrivacyItemMonitor$configCallback$1
            public final void onFlagChanged() {
                AppOpsPrivacyItemMonitor appOpsPrivacyItemMonitor = AppOpsPrivacyItemMonitor.this;
                synchronized (appOpsPrivacyItemMonitor.lock) {
                    PrivacyConfig privacyConfig2 = appOpsPrivacyItemMonitor.privacyConfig;
                    appOpsPrivacyItemMonitor.micCameraAvailable = privacyConfig2.micCameraAvailable;
                    appOpsPrivacyItemMonitor.locationAvailable = privacyConfig2.locationAvailable;
                    appOpsPrivacyItemMonitor.setListeningStateLocked();
                    Unit unit = Unit.INSTANCE;
                }
                AppOpsPrivacyItemMonitor.this.dispatchOnPrivacyItemsChanged();
            }

            @Override // com.android.systemui.privacy.PrivacyConfig.Callback
            public final void onFlagLocationChanged(boolean z) {
                onFlagChanged();
            }

            @Override // com.android.systemui.privacy.PrivacyConfig.Callback
            public final void onFlagMicCameraChanged(boolean z) {
                onFlagChanged();
            }
        };
        this.configCallback = r1;
        privacyConfig.addCallback(r1);
    }

    public final void dispatchOnPrivacyItemsChanged() {
        final PrivacyItemMonitor.Callback callback;
        synchronized (this.lock) {
            callback = this.callback;
        }
        if (callback != null) {
            ((ExecutorImpl) this.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.privacy.AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacyItemController$privacyItemMonitorCallback$1 privacyItemController$privacyItemMonitorCallback$1 = (PrivacyItemController$privacyItemMonitorCallback$1) PrivacyItemMonitor.Callback.this;
                    privacyItemController$privacyItemMonitorCallback$1.getClass();
                    int i = PrivacyItemController.$r8$clinit;
                    PrivacyItemController privacyItemController = privacyItemController$privacyItemMonitorCallback$1.this$0;
                    privacyItemController.getClass();
                    ((ExecutorImpl) privacyItemController.bgExecutor).execute(new PrivacyItemController$update$1(privacyItemController));
                }
            });
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.println("AppOpsPrivacyItemMonitor:");
        asIndenting.increaseIndent();
        try {
            synchronized (this.lock) {
                asIndenting.println("Listening: " + this.listening);
                asIndenting.println("micCameraAvailable: " + this.micCameraAvailable);
                asIndenting.println("locationAvailable: " + this.locationAvailable);
                asIndenting.println("Callback: " + this.callback);
                Unit unit = Unit.INSTANCE;
            }
            List userProfiles = ((UserTrackerImpl) this.userTracker).getUserProfiles();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(userProfiles, 10));
            Iterator it = userProfiles.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((UserInfo) it.next()).id));
            }
            asIndenting.println("Current user ids: " + arrayList);
            asIndenting.decreaseIndent();
            asIndenting.flush();
        } catch (Throwable th) {
            asIndenting.decreaseIndent();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
    
        if (kotlin.collections.ArraysKt___ArraysKt.contains(r6.mCode, com.android.systemui.privacy.AppOpsPrivacyItemMonitor.USER_INDEPENDENT_OPS) != false) goto L25;
     */
    @Override // com.android.systemui.privacy.PrivacyItemMonitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List getActivePrivacyItems() {
        /*
            r11 = this;
            com.android.systemui.appops.AppOpsController r0 = r11.appOpsController
            com.android.systemui.appops.AppOpsControllerImpl r0 = (com.android.systemui.appops.AppOpsControllerImpl) r0
            r1 = 1
            java.util.List r0 = r0.getActiveAppOps(r1)
            com.android.systemui.settings.UserTracker r2 = r11.userTracker
            com.android.systemui.settings.UserTrackerImpl r2 = (com.android.systemui.settings.UserTrackerImpl) r2
            java.util.List r2 = r2.getUserProfiles()
            java.lang.Object r3 = r11.lock
            monitor-enter(r3)
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L92
            r4.<init>()     // Catch: java.lang.Throwable -> L92
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch: java.lang.Throwable -> L92
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L92
        L1f:
            boolean r5 = r0.hasNext()     // Catch: java.lang.Throwable -> L92
            if (r5 == 0) goto L6d
            java.lang.Object r5 = r0.next()     // Catch: java.lang.Throwable -> L92
            r6 = r5
            com.android.systemui.appops.AppOpItem r6 = (com.android.systemui.appops.AppOpItem) r6     // Catch: java.lang.Throwable -> L92
            boolean r7 = r2 instanceof java.util.Collection     // Catch: java.lang.Throwable -> L92
            r8 = 0
            if (r7 == 0) goto L38
            boolean r7 = r2.isEmpty()     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L38
            goto L59
        L38:
            java.util.Iterator r7 = r2.iterator()     // Catch: java.lang.Throwable -> L92
        L3c:
            boolean r9 = r7.hasNext()     // Catch: java.lang.Throwable -> L92
            if (r9 == 0) goto L59
            java.lang.Object r9 = r7.next()     // Catch: java.lang.Throwable -> L92
            android.content.pm.UserInfo r9 = (android.content.pm.UserInfo) r9     // Catch: java.lang.Throwable -> L92
            int r9 = r9.id     // Catch: java.lang.Throwable -> L92
            int r10 = r6.mUid     // Catch: java.lang.Throwable -> L92
            int r10 = android.os.UserHandle.getUserId(r10)     // Catch: java.lang.Throwable -> L92
            if (r9 != r10) goto L54
            r9 = r1
            goto L55
        L54:
            r9 = r8
        L55:
            if (r9 == 0) goto L3c
            r7 = r1
            goto L5a
        L59:
            r7 = r8
        L5a:
            if (r7 != 0) goto L66
            int[] r7 = com.android.systemui.privacy.AppOpsPrivacyItemMonitor.USER_INDEPENDENT_OPS     // Catch: java.lang.Throwable -> L92
            int r6 = r6.mCode     // Catch: java.lang.Throwable -> L92
            boolean r6 = kotlin.collections.ArraysKt___ArraysKt.contains(r6, r7)     // Catch: java.lang.Throwable -> L92
            if (r6 == 0) goto L67
        L66:
            r8 = r1
        L67:
            if (r8 == 0) goto L1f
            r4.add(r5)     // Catch: java.lang.Throwable -> L92
            goto L1f
        L6d:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L92
            r0.<init>()     // Catch: java.lang.Throwable -> L92
            java.util.Iterator r1 = r4.iterator()     // Catch: java.lang.Throwable -> L92
        L76:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L92
            if (r2 == 0) goto L8c
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L92
            com.android.systemui.appops.AppOpItem r2 = (com.android.systemui.appops.AppOpItem) r2     // Catch: java.lang.Throwable -> L92
            com.android.systemui.privacy.PrivacyItem r2 = r11.toPrivacyItemLocked(r2)     // Catch: java.lang.Throwable -> L92
            if (r2 == 0) goto L76
            r0.add(r2)     // Catch: java.lang.Throwable -> L92
            goto L76
        L8c:
            monitor-exit(r3)
            java.util.List r11 = kotlin.collections.CollectionsKt___CollectionsKt.distinct(r0)
            return r11
        L92:
            r11 = move-exception
            monitor-exit(r3)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.privacy.AppOpsPrivacyItemMonitor.getActivePrivacyItems():java.util.List");
    }

    public final void onCurrentProfilesChanged() {
        List userProfiles = ((UserTrackerImpl) this.userTracker).getUserProfiles();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(userProfiles, 10));
        Iterator it = userProfiles.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((UserInfo) it.next()).id));
        }
        this.logger.logCurrentProfilesChanged(arrayList);
        dispatchOnPrivacyItemsChanged();
    }

    public final void setListeningStateLocked() {
        boolean z;
        if (this.callback != null && (this.micCameraAvailable || this.locationAvailable)) {
            z = true;
        } else {
            z = false;
        }
        if (this.listening == z) {
            return;
        }
        this.listening = z;
        UserTracker userTracker = this.userTracker;
        AppOpsPrivacyItemMonitor$appOpsCallback$1 appOpsPrivacyItemMonitor$appOpsCallback$1 = this.appOpsCallback;
        int[] iArr = OPS;
        AppOpsController appOpsController = this.appOpsController;
        if (z) {
            ((AppOpsControllerImpl) appOpsController).addCallback(iArr, appOpsPrivacyItemMonitor$appOpsCallback$1);
            ((UserTrackerImpl) userTracker).addCallback(this.userTrackerCallback, this.bgExecutor);
            onCurrentProfilesChanged();
            return;
        }
        AppOpsControllerImpl appOpsControllerImpl = (AppOpsControllerImpl) appOpsController;
        appOpsControllerImpl.getClass();
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (appOpsControllerImpl.mCallbacksByCode.contains(iArr[i])) {
                ((Set) appOpsControllerImpl.mCallbacksByCode.get(iArr[i])).remove(appOpsPrivacyItemMonitor$appOpsCallback$1);
            }
        }
        ((ArrayList) appOpsControllerImpl.mCallbacks).remove(appOpsPrivacyItemMonitor$appOpsCallback$1);
        if (((ArrayList) appOpsControllerImpl.mCallbacks).isEmpty()) {
            appOpsControllerImpl.setListening(false);
        }
        ((UserTrackerImpl) userTracker).removeCallback(this.userTrackerCallback);
    }

    @Override // com.android.systemui.privacy.PrivacyItemMonitor
    public final void startListening(PrivacyItemController$privacyItemMonitorCallback$1 privacyItemController$privacyItemMonitorCallback$1) {
        synchronized (this.lock) {
            this.callback = privacyItemController$privacyItemMonitorCallback$1;
            setListeningStateLocked();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.android.systemui.privacy.PrivacyItemMonitor
    public final void stopListening() {
        synchronized (this.lock) {
            this.callback = null;
            setListeningStateLocked();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final PrivacyItem toPrivacyItemLocked(AppOpItem appOpItem) {
        boolean z;
        PrivacyType privacyType;
        int[] iArr = OPS_LOCATION;
        int i = appOpItem.mCode;
        if (ArraysKt___ArraysKt.contains(i, iArr)) {
            z = this.locationAvailable;
        } else if (ArraysKt___ArraysKt.contains(i, OPS_MIC_CAMERA)) {
            z = this.micCameraAvailable;
        } else {
            z = false;
        }
        if (!z) {
            return null;
        }
        if (i != 0 && i != 1) {
            if (i != 26) {
                if (i != 27 && i != 100) {
                    if (i != 101) {
                        if (i != 120 && i != 121) {
                            return null;
                        }
                    }
                }
                privacyType = PrivacyType.TYPE_MICROPHONE;
            }
            privacyType = PrivacyType.TYPE_CAMERA;
        } else {
            privacyType = PrivacyType.TYPE_LOCATION;
        }
        return new PrivacyItem(privacyType, new PrivacyApplication(appOpItem.mPackageName, appOpItem.mUid), appOpItem.mTimeStartedElapsed, appOpItem.mIsDisabled);
    }

    public static /* synthetic */ void getUserTrackerCallback$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }
}
