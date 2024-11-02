package com.android.systemui.statusbar.phone;

import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.events.SystemStatusAnimationScheduler;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemBarAttributesListener implements Dumpable {
    public final CentralSurfaces centralSurfaces;
    public LetterboxAppearance lastLetterboxAppearance;
    public SystemBarAttributesParams lastSystemBarAttributesParams;
    public final LetterboxAppearanceCalculator letterboxAppearanceCalculator;
    public final LightBarController lightBarController;
    public final SysuiStatusBarStateController statusBarStateController;
    public final SystemStatusAnimationScheduler systemStatusAnimationScheduler;

    public SystemBarAttributesListener(CentralSurfaces centralSurfaces, LetterboxAppearanceCalculator letterboxAppearanceCalculator, SysuiStatusBarStateController sysuiStatusBarStateController, LightBarController lightBarController, DumpManager dumpManager, SystemStatusAnimationScheduler systemStatusAnimationScheduler) {
        this.centralSurfaces = centralSurfaces;
        this.letterboxAppearanceCalculator = letterboxAppearanceCalculator;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.lightBarController = lightBarController;
        this.systemStatusAnimationScheduler = systemStatusAnimationScheduler;
        dumpManager.getClass();
        dumpManager.registerCriticalDumpable("SystemBarAttributesListener", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("lastSystemBarAttributesParams: " + this.lastSystemBarAttributesParams);
        printWriter.println("lastLetterboxAppearance: " + this.lastLetterboxAppearance);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0 A[LOOP:0: B:9:0x0042->B:30:0x00b0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onSystemBarAttributesChanged(int r17, int r18, com.android.internal.view.AppearanceRegion[] r19, boolean r20, int r21, int r22, java.lang.String r23, com.android.internal.statusbar.LetterboxDetails[] r24) {
        /*
            Method dump skipped, instructions count: 801
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.SystemBarAttributesListener.onSystemBarAttributesChanged(int, int, com.android.internal.view.AppearanceRegion[], boolean, int, int, java.lang.String, com.android.internal.statusbar.LetterboxDetails[]):void");
    }
}
