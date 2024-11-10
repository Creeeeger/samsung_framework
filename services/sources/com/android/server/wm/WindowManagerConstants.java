package com.android.server.wm;

import android.provider.DeviceConfig;
import android.provider.DeviceConfigInterface;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class WindowManagerConstants {
    public final DeviceConfigInterface mDeviceConfig;
    public final WindowManagerGlobalLock mGlobalLock;
    public final DeviceConfig.OnPropertiesChangedListener mListenerAndroid;
    public final DeviceConfig.OnPropertiesChangedListener mListenerWindowManager;
    public boolean mSystemGestureExcludedByPreQStickyImmersive;
    public int mSystemGestureExclusionLimitDp;
    public long mSystemGestureExclusionLogDebounceTimeoutMillis;
    public final Runnable mUpdateSystemGestureExclusionCallback;

    public WindowManagerConstants(final WindowManagerService windowManagerService, DeviceConfigInterface deviceConfigInterface) {
        this(windowManagerService.mGlobalLock, new Runnable() { // from class: com.android.server.wm.WindowManagerConstants$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WindowManagerConstants.lambda$new$0(WindowManagerService.this);
            }
        }, deviceConfigInterface);
    }

    public static /* synthetic */ void lambda$new$0(WindowManagerService windowManagerService) {
        windowManagerService.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.WindowManagerConstants$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((DisplayContent) obj).updateSystemGestureExclusionLimit();
            }
        });
    }

    public WindowManagerConstants(WindowManagerGlobalLock windowManagerGlobalLock, Runnable runnable, DeviceConfigInterface deviceConfigInterface) {
        Objects.requireNonNull(windowManagerGlobalLock);
        this.mGlobalLock = windowManagerGlobalLock;
        Objects.requireNonNull(runnable);
        this.mUpdateSystemGestureExclusionCallback = runnable;
        this.mDeviceConfig = deviceConfigInterface;
        this.mListenerAndroid = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.wm.WindowManagerConstants$$ExternalSyntheticLambda0
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                WindowManagerConstants.this.onAndroidPropertiesChanged(properties);
            }
        };
        this.mListenerWindowManager = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.wm.WindowManagerConstants$$ExternalSyntheticLambda1
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                WindowManagerConstants.this.onWindowPropertiesChanged(properties);
            }
        };
    }

    public void start(Executor executor) {
        this.mDeviceConfig.addOnPropertiesChangedListener("android", executor, this.mListenerAndroid);
        this.mDeviceConfig.addOnPropertiesChangedListener("window_manager", executor, this.mListenerWindowManager);
        updateSystemGestureExclusionLogDebounceMillis();
        updateSystemGestureExclusionLimitDp();
        updateSystemGestureExcludedByPreQStickyImmersive();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onAndroidPropertiesChanged(android.provider.DeviceConfig.Properties r8) {
        /*
            r7 = this;
            com.android.server.wm.WindowManagerGlobalLock r0 = r7.mGlobalLock
            com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()
            monitor-enter(r0)
            java.util.Set r8 = r8.getKeyset()     // Catch: java.lang.Throwable -> L64
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L64
            r1 = 0
            r2 = r1
        L10:
            boolean r3 = r8.hasNext()     // Catch: java.lang.Throwable -> L64
            if (r3 == 0) goto L58
            java.lang.Object r3 = r8.next()     // Catch: java.lang.Throwable -> L64
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L64
            if (r3 != 0) goto L23
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L64
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return
        L23:
            int r4 = r3.hashCode()     // Catch: java.lang.Throwable -> L64
            r5 = -1271675449(0xffffffffb433c5c7, float:-1.6742625E-7)
            r6 = 1
            if (r4 == r5) goto L3e
            r5 = 316878247(0x12e32da7, float:1.4336968E-27)
            if (r4 == r5) goto L33
            goto L49
        L33:
            java.lang.String r4 = "system_gesture_exclusion_limit_dp"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L64
            if (r3 == 0) goto L49
            r3 = r1
            goto L4a
        L3e:
            java.lang.String r4 = "system_gestures_excluded_by_pre_q_sticky_immersive"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L64
            if (r3 == 0) goto L49
            r3 = r6
            goto L4a
        L49:
            r3 = -1
        L4a:
            if (r3 == 0) goto L53
            if (r3 == r6) goto L4f
            goto L10
        L4f:
            r7.updateSystemGestureExcludedByPreQStickyImmersive()     // Catch: java.lang.Throwable -> L64
            goto L56
        L53:
            r7.updateSystemGestureExclusionLimitDp()     // Catch: java.lang.Throwable -> L64
        L56:
            r2 = r6
            goto L10
        L58:
            if (r2 == 0) goto L5f
            java.lang.Runnable r7 = r7.mUpdateSystemGestureExclusionCallback     // Catch: java.lang.Throwable -> L64
            r7.run()     // Catch: java.lang.Throwable -> L64
        L5f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L64
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return
        L64:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L64
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.WindowManagerConstants.onAndroidPropertiesChanged(android.provider.DeviceConfig$Properties):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onWindowPropertiesChanged(android.provider.DeviceConfig.Properties r5) {
        /*
            r4 = this;
            com.android.server.wm.WindowManagerGlobalLock r0 = r4.mGlobalLock
            com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()
            monitor-enter(r0)
            java.util.Set r5 = r5.getKeyset()     // Catch: java.lang.Throwable -> L43
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L43
        Le:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Throwable -> L43
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L21
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return
        L21:
            int r2 = r1.hashCode()     // Catch: java.lang.Throwable -> L43
            r3 = -125834358(0xfffffffff87feb8a, float:-2.0762703E34)
            if (r2 == r3) goto L2b
            goto L36
        L2b:
            java.lang.String r2 = "system_gesture_exclusion_log_debounce_millis"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L36
            r1 = 0
            goto L37
        L36:
            r1 = -1
        L37:
            if (r1 == 0) goto L3a
            goto Le
        L3a:
            r4.updateSystemGestureExclusionLogDebounceMillis()     // Catch: java.lang.Throwable -> L43
            goto Le
        L3e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return
        L43:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.WindowManagerConstants.onWindowPropertiesChanged(android.provider.DeviceConfig$Properties):void");
    }

    public final void updateSystemGestureExclusionLogDebounceMillis() {
        this.mSystemGestureExclusionLogDebounceTimeoutMillis = this.mDeviceConfig.getLong("window_manager", "system_gesture_exclusion_log_debounce_millis", 0L);
    }

    public final void updateSystemGestureExclusionLimitDp() {
        this.mSystemGestureExclusionLimitDp = Math.max(200, this.mDeviceConfig.getInt("android", "system_gesture_exclusion_limit_dp", 0));
    }

    public final void updateSystemGestureExcludedByPreQStickyImmersive() {
        this.mSystemGestureExcludedByPreQStickyImmersive = this.mDeviceConfig.getBoolean("android", "system_gestures_excluded_by_pre_q_sticky_immersive", false);
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("WINDOW MANAGER CONSTANTS (dumpsys window constants):");
        printWriter.print("  ");
        printWriter.print("system_gesture_exclusion_log_debounce_millis");
        printWriter.print("=");
        printWriter.println(this.mSystemGestureExclusionLogDebounceTimeoutMillis);
        printWriter.print("  ");
        printWriter.print("system_gesture_exclusion_limit_dp");
        printWriter.print("=");
        printWriter.println(this.mSystemGestureExclusionLimitDp);
        printWriter.print("  ");
        printWriter.print("system_gestures_excluded_by_pre_q_sticky_immersive");
        printWriter.print("=");
        printWriter.println(this.mSystemGestureExcludedByPreQStickyImmersive);
        printWriter.println();
    }
}
