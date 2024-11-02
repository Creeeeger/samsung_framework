package com.android.systemui.tuner;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.android.systemui.tuner.TunerService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TunablePadding implements TunerService.Tunable {
    public final int mDefaultSize;
    public final float mDensity;
    public final int mFlags;
    public final View mView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class TunablePaddingService {
        public TunablePaddingService(TunerService tunerService) {
        }
    }

    private TunablePadding(String str, int i, int i2, View view, TunerService tunerService) {
        this.mDefaultSize = i;
        this.mFlags = i2;
        this.mView = view;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) view.getContext().getSystemService(WindowManager.class)).getDefaultDisplay().getMetrics(displayMetrics);
        this.mDensity = displayMetrics.density;
        tunerService.addTunable(this, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // com.android.systemui.tuner.TunerService.Tunable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTuningChanged(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            if (r6 == 0) goto Lc
            int r5 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.NumberFormatException -> Lc
            float r5 = (float) r5     // Catch: java.lang.NumberFormatException -> Lc
            float r6 = r4.mDensity     // Catch: java.lang.NumberFormatException -> Lc
            float r5 = r5 * r6
            int r5 = (int) r5
            goto Le
        Lc:
            int r5 = r4.mDefaultSize
        Le:
            android.view.View r6 = r4.mView
            boolean r0 = r6.isLayoutRtl()
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L1a
            r0 = r1
            goto L1b
        L1a:
            r0 = r2
        L1b:
            boolean r3 = r6.isLayoutRtl()
            if (r3 == 0) goto L22
            r1 = r2
        L22:
            int r4 = r4.mFlags
            r0 = r0 & r4
            r2 = 0
            if (r0 == 0) goto L2a
            r0 = r5
            goto L2b
        L2a:
            r0 = r2
        L2b:
            r3 = r4 & 4
            if (r3 == 0) goto L31
            r3 = r5
            goto L32
        L31:
            r3 = r2
        L32:
            r1 = r1 & r4
            if (r1 == 0) goto L37
            r1 = r5
            goto L38
        L37:
            r1 = r2
        L38:
            r4 = r4 & 8
            if (r4 == 0) goto L3d
            goto L3e
        L3d:
            r5 = r2
        L3e:
            r6.setPadding(r0, r3, r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.tuner.TunablePadding.onTuningChanged(java.lang.String, java.lang.String):void");
    }
}
