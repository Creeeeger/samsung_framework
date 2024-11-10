package com.android.server.power;

import android.content.Context;
import android.os.PowerManager;
import android.provider.DeviceConfig;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ScreenUndimDetector {
    static final long DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS;
    static final long DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS;
    static final int DEFAULT_UNDIMS_REQUIRED = 2;
    static final String KEY_KEEP_SCREEN_ON_FOR_MILLIS = "keep_screen_on_for_millis";
    static final String KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS = "max_duration_between_undims_millis";
    static final String KEY_UNDIMS_REQUIRED = "undims_required";
    int mCurrentScreenPolicy;
    public boolean mKeepScreenOnEnabled;
    public long mKeepScreenOnForMillis;
    public long mMaxDurationBetweenUndimsMillis;
    long mUndimCounterStartedMillis;
    public int mUndimsRequired;
    PowerManager.WakeLock mWakeLock;
    int mUndimCounter = 0;
    public long mUndimOccurredTime = -1;
    public long mInteractionAfterUndimTime = -1;
    public InternalClock mClock = new InternalClock();

    /* loaded from: classes3.dex */
    public class InternalClock {
    }

    static {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS = timeUnit.toMillis(10L);
        DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS = timeUnit.toMillis(5L);
    }

    public void systemReady(Context context) {
        readValuesFromDeviceConfig();
        DeviceConfig.addOnPropertiesChangedListener("attention_manager_service", context.getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.power.ScreenUndimDetector$$ExternalSyntheticLambda0
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                ScreenUndimDetector.this.lambda$systemReady$0(properties);
            }
        });
        this.mWakeLock = ((PowerManager) context.getSystemService(PowerManager.class)).newWakeLock(536870922, "UndimDetectorWakeLock");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$systemReady$0(DeviceConfig.Properties properties) {
        onDeviceConfigChange(properties.getKeyset());
    }

    public void reset() {
        this.mUndimCounter = 0;
        this.mUndimCounterStartedMillis = 0L;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.mWakeLock.release();
    }

    public final boolean readKeepScreenOnNotificationEnabled() {
        return DeviceConfig.getBoolean("attention_manager_service", "keep_screen_on_enabled", true);
    }

    public final long readKeepScreenOnForMillis() {
        return DeviceConfig.getLong("attention_manager_service", KEY_KEEP_SCREEN_ON_FOR_MILLIS, DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS);
    }

    public final int readUndimsRequired() {
        int i = DeviceConfig.getInt("attention_manager_service", KEY_UNDIMS_REQUIRED, 2);
        if (i >= 1 && i <= 5) {
            return i;
        }
        android.util.Slog.e("ScreenUndimDetector", "Provided undimsRequired=" + i + " is not allowed [1, 5]; using the default=2");
        return 2;
    }

    public final long readMaxDurationBetweenUndimsMillis() {
        return DeviceConfig.getLong("attention_manager_service", KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS, DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0063 A[LOOP:0: B:2:0x0004->B:19:0x0063, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDeviceConfigChange(java.util.Set r5) {
        /*
            r4 = this;
            java.util.Iterator r5 = r5.iterator()
        L4:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L7b
            java.lang.Object r0 = r5.next()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onDeviceConfigChange; key="
            r1.append(r2)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "ScreenUndimDetector"
            android.util.Slog.i(r2, r1)
            r0.hashCode()
            int r1 = r0.hashCode()
            r3 = -1
            switch(r1) {
                case -2114725254: goto L55;
                case -1871288230: goto L4a;
                case 352003779: goto L3f;
                case 1709324730: goto L33;
                default: goto L32;
            }
        L32:
            goto L60
        L33:
            java.lang.String r1 = "max_duration_between_undims_millis"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L3d
            goto L60
        L3d:
            r3 = 3
            goto L60
        L3f:
            java.lang.String r1 = "keep_screen_on_for_millis"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L48
            goto L60
        L48:
            r3 = 2
            goto L60
        L4a:
            java.lang.String r1 = "keep_screen_on_enabled"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L53
            goto L60
        L53:
            r3 = 1
            goto L60
        L55:
            java.lang.String r1 = "undims_required"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5f
            goto L60
        L5f:
            r3 = 0
        L60:
            switch(r3) {
                case 0: goto L78;
                case 1: goto L78;
                case 2: goto L78;
                case 3: goto L78;
                default: goto L63;
            }
        L63:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Ignoring change on "
            r1.append(r3)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Slog.i(r2, r0)
            goto L4
        L78:
            r4.readValuesFromDeviceConfig()
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.ScreenUndimDetector.onDeviceConfigChange(java.util.Set):void");
    }

    public void readValuesFromDeviceConfig() {
        this.mKeepScreenOnEnabled = readKeepScreenOnNotificationEnabled();
        this.mKeepScreenOnForMillis = readKeepScreenOnForMillis();
        this.mUndimsRequired = readUndimsRequired();
        this.mMaxDurationBetweenUndimsMillis = readMaxDurationBetweenUndimsMillis();
        android.util.Slog.i("ScreenUndimDetector", "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis=" + this.mKeepScreenOnForMillis + "\nmKeepScreenOnNotificationEnabled=" + this.mKeepScreenOnEnabled + "\nmUndimsRequired=" + this.mUndimsRequired);
    }
}
