package com.android.wm.shell.splitscreen;

import android.util.Slog;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.InstanceIdSequence;
import com.android.internal.util.FrameworkStatsLog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitscreenEventLogger {
    public int mDragEnterPosition;
    public InstanceId mEnterSessionId;
    public InstanceId mLoggerSessionId;
    public int mLastMainStagePosition = -1;
    public int mLastMainStageUid = -1;
    public int mLastSideStagePosition = -1;
    public int mLastSideStageUid = -1;
    public float mLastSplitRatio = -1.0f;
    public int mEnterReason = 0;
    public final InstanceIdSequence mIdSequence = new InstanceIdSequence(Integer.MAX_VALUE);

    public static int getMainStagePositionFromSplitPosition(int i, boolean z) {
        if (i == -1) {
            return 0;
        }
        if (z) {
            if (i == 0) {
                return 1;
            }
            return 2;
        }
        if (i == 0) {
            return 3;
        }
        return 4;
    }

    public static int getSideStagePositionFromSplitPosition(int i, boolean z) {
        if (i == -1) {
            return 0;
        }
        if (z) {
            if (i == 0) {
                return 1;
            }
            return 2;
        }
        if (i == 0) {
            return 3;
        }
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void logEnter(float r14, int r15, int r16, int r17, int r18, boolean r19) {
        /*
            r13 = this;
            r0 = r13
            r4 = r14
            r1 = r19
            com.android.internal.logging.InstanceIdSequence r2 = r0.mIdSequence
            com.android.internal.logging.InstanceId r2 = r2.newInstanceId()
            r0.mLoggerSessionId = r2
            int r2 = r0.mEnterReason
            r3 = 1
            r5 = 0
            if (r2 == r3) goto L2e
            r6 = 3
            r7 = 2
            if (r2 == r7) goto L1d
            if (r2 == r6) goto L1b
            r6 = r15
            r2 = r5
            goto L30
        L1b:
            r2 = 6
            goto L2f
        L1d:
            int r2 = r0.mDragEnterPosition
            if (r1 == 0) goto L26
            if (r2 != 0) goto L24
            goto L2b
        L24:
            r7 = 4
            goto L2b
        L26:
            if (r2 != 0) goto L29
            goto L2a
        L29:
            r6 = 5
        L2a:
            r7 = r6
        L2b:
            r6 = r15
            r2 = r7
            goto L30
        L2e:
            r2 = 7
        L2f:
            r6 = r15
        L30:
            int r6 = getMainStagePositionFromSplitPosition(r15, r1)
            r7 = r16
            r13.updateMainStageState(r6, r7)
            r6 = r17
            int r1 = getSideStagePositionFromSplitPosition(r6, r1)
            r6 = r18
            r13.updateSideStageState(r1, r6)
            float r1 = r0.mLastSplitRatio
            int r1 = java.lang.Float.compare(r1, r14)
            if (r1 == 0) goto L4d
            goto L4e
        L4d:
            r3 = r5
        L4e:
            if (r3 != 0) goto L51
            goto L53
        L51:
            r0.mLastSplitRatio = r4
        L53:
            r1 = 388(0x184, float:5.44E-43)
            r3 = 1
            r6 = 0
            int r7 = r0.mLastMainStagePosition
            int r8 = r0.mLastMainStageUid
            int r9 = r0.mLastSideStagePosition
            int r10 = r0.mLastSideStageUid
            com.android.internal.logging.InstanceId r11 = r0.mEnterSessionId
            if (r11 == 0) goto L67
            int r5 = r11.getId()
        L67:
            r11 = r5
            com.android.internal.logging.InstanceId r0 = r0.mLoggerSessionId
            int r12 = r0.getId()
            r0 = r1
            r1 = r3
            r3 = r6
            r4 = r14
            r5 = r7
            r6 = r8
            r7 = r9
            r8 = r10
            r9 = r11
            r10 = r12
            com.android.internal.util.FrameworkStatsLog.write(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitscreenEventLogger.logEnter(float, int, int, int, int, boolean):void");
    }

    public final void logExit(int i, int i2, int i3, int i4, int i5, boolean z) {
        int i6;
        int i7;
        if (this.mLoggerSessionId == null) {
            return;
        }
        if ((i2 != -1 && i4 != -1) || (i3 != 0 && i5 != 0)) {
            throw new IllegalArgumentException("Only main or side stage should be set");
        }
        switch (i) {
            case 1:
                i6 = 8;
                i7 = i6;
                break;
            case 2:
                i6 = 7;
                i7 = i6;
                break;
            case 3:
                i6 = 5;
                i7 = i6;
                break;
            case 4:
                i6 = 1;
                i7 = i6;
                break;
            case 5:
                i6 = 2;
                i7 = i6;
                break;
            case 6:
                i6 = 6;
                i7 = i6;
                break;
            case 7:
                i6 = 3;
                i7 = i6;
                break;
            case 8:
                i6 = 4;
                i7 = i6;
                break;
            case 9:
                i6 = 9;
                i7 = i6;
                break;
            case 10:
                i6 = 10;
                i7 = i6;
                break;
            case 11:
                i6 = 11;
                i7 = i6;
                break;
            default:
                Slog.e("SplitscreenEventLogger", "Unknown exit reason: " + i);
                i7 = 0;
                break;
        }
        FrameworkStatsLog.write(388, 2, 0, i7, 0.0f, getMainStagePositionFromSplitPosition(i2, z), i3, getSideStagePositionFromSplitPosition(i4, z), i5, 0, this.mLoggerSessionId.getId());
        this.mLoggerSessionId = null;
        this.mDragEnterPosition = -1;
        this.mEnterSessionId = null;
        this.mLastMainStagePosition = -1;
        this.mLastMainStageUid = -1;
        this.mLastSideStagePosition = -1;
        this.mLastSideStageUid = -1;
        this.mEnterReason = 0;
    }

    public final boolean updateMainStageState(int i, int i2) {
        boolean z;
        if (this.mLastMainStagePosition == i && this.mLastMainStageUid == i2) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        this.mLastMainStagePosition = i;
        this.mLastMainStageUid = i2;
        return true;
    }

    public final boolean updateSideStageState(int i, int i2) {
        boolean z;
        if (this.mLastSideStagePosition == i && this.mLastSideStageUid == i2) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        this.mLastSideStagePosition = i;
        this.mLastSideStageUid = i2;
        return true;
    }
}
