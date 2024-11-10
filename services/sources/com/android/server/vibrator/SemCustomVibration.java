package com.android.server.vibrator;

import android.content.Context;
import android.os.vibrator.SemHapticSegment;

/* loaded from: classes3.dex */
public class SemCustomVibration extends SemVibration {
    public final Context mContext;
    public final SemHapticSegment mSemHapticSegment;
    public final VibrationSettings mSettings;

    public SemCustomVibration(Context context, SemVibrationBundle semVibrationBundle, SemHapticSegment semHapticSegment, VibrationSettings vibrationSettings) {
        super(semVibrationBundle);
        this.mContext = context;
        this.mSemHapticSegment = semHapticSegment;
        this.mSettings = vibrationSettings;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0070 A[Catch: all -> 0x0080, Exception -> 0x0082, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0082, blocks: (B:7:0x0012, B:25:0x004a, B:11:0x0070, B:31:0x007f, B:36:0x007c), top: B:6:0x0012, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008b  */
    @Override // com.android.server.vibrator.SemVibration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.vibrator.HalVibration getVibration() {
        /*
            r13 = this;
            boolean r0 = r13.commonValidation()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            long r2 = android.os.Binder.clearCallingIdentity()
            android.content.Context r0 = r13.mContext
            android.content.ContentResolver r4 = r0.getContentResolver()
            android.os.vibrator.SemHapticSegment r0 = r13.mSemHapticSegment     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r0 = r0.getCategoryPath()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            android.net.Uri r5 = android.net.Uri.parse(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            r6 = 0
            java.lang.String r7 = "vibration_pattern=?"
            r0 = 1
            java.lang.String[] r8 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            int r0 = r13.mIndex     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            r9 = 0
            r8[r9] = r0     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            r9 = 0
            android.database.Cursor r0 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r0 == 0) goto L62
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L74
            if (r4 == 0) goto L62
            java.lang.String r4 = "custom_data"
            int r4 = r0.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L74
            if (r4 < 0) goto L6e
            java.lang.String r4 = r0.getString(r4)     // Catch: java.lang.Throwable -> L74
            if (r4 != 0) goto L51
            r0.close()     // Catch: java.lang.Throwable -> L74
            r0.close()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            android.os.Binder.restoreCallingIdentity(r2)
            return r1
        L51:
            long[] r5 = r13.getCustomPatternData(r4)     // Catch: java.lang.Throwable -> L74
            int r6 = r13.mMagnitude     // Catch: java.lang.Throwable -> L74
            int[] r4 = r13.getCustomAmplitudeData(r4, r6)     // Catch: java.lang.Throwable -> L74
            int r6 = r13.mRepeat     // Catch: java.lang.Throwable -> L74
            android.os.VibrationEffect r1 = android.os.VibrationEffect.createWaveform(r5, r4, r6)     // Catch: java.lang.Throwable -> L74
            goto L6e
        L62:
            android.os.vibrator.SemHapticSegment r4 = r13.mSemHapticSegment     // Catch: java.lang.Throwable -> L74
            int r4 = r4.getDefaultSepIndex()     // Catch: java.lang.Throwable -> L74
            int r5 = r13.mRepeat     // Catch: java.lang.Throwable -> L74
            android.os.VibrationEffect r1 = android.os.VibrationEffect.semCreateHaptic(r4, r5)     // Catch: java.lang.Throwable -> L74
        L6e:
            if (r0 == 0) goto L86
            r0.close()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            goto L86
        L74:
            r4 = move-exception
            if (r0 == 0) goto L7f
            r0.close()     // Catch: java.lang.Throwable -> L7b
            goto L7f
        L7b:
            r0 = move-exception
            r4.addSuppressed(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
        L7f:
            throw r4     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
        L80:
            r13 = move-exception
            goto Lb0
        L82:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L80
        L86:
            android.os.Binder.restoreCallingIdentity(r2)
            if (r1 == 0) goto L90
            int r0 = r13.mMagnitude
            r1.semSetMagnitude(r0)
        L90:
            android.os.CombinedVibration r4 = android.os.CombinedVibration.createParallel(r1)
            com.android.server.vibrator.HalVibration r0 = new com.android.server.vibrator.HalVibration
            android.os.IBinder r3 = r13.mToken
            r5 = -1
            r7 = 0
            int r8 = r13.mMagnitude
            com.samsung.android.server.vibrator.VibratorHelper r1 = r13.mVibratorHelper
            int r2 = r13.mIndex
            int r9 = r1.getPatternFrequencyByIndex(r2)
            r10 = 0
            r11 = 0
            com.android.server.vibrator.Vibration$CallerInfo r12 = r13.getCallerInfo()
            r2 = r0
            r2.<init>(r3, r4, r5, r7, r8, r9, r10, r11, r12)
            return r0
        Lb0:
            android.os.Binder.restoreCallingIdentity(r2)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.vibrator.SemCustomVibration.getVibration():com.android.server.vibrator.HalVibration");
    }

    public final long[] getCustomPatternData(String str) {
        String[] split = str.split("#");
        String[] split2 = split[0].split(" ");
        long[] jArr = new long[split2.length];
        for (int i = 0; i < split2.length; i++) {
            try {
                jArr[i] = Long.parseLong(split2[i]);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return jArr;
    }

    public final int[] getCustomAmplitudeData(String str, int i) {
        String[] split = str.split("#")[1].split(" ");
        int[] iArr = new int[split.length];
        double maxMagnitude = this.mSettings.getMaxMagnitude() / i;
        for (int i2 = 0; i2 < split.length; i2++) {
            try {
                iArr[i2] = (int) (Integer.parseInt(split[i2]) / maxMagnitude);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return iArr;
    }

    public String toString() {
        return "SemCustomVibration : " + getCommonLog();
    }
}
