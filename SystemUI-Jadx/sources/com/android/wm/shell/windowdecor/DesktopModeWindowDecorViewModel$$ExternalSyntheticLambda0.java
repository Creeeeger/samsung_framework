package com.android.wm.shell.windowdecor;

import android.provider.Settings;
import com.android.wm.shell.desktopmode.DesktopModeController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Settings.System.putInt(((DesktopModeController) obj).mContext.getContentResolver(), "desktop_mode", 1);
                return;
            case 1:
                Settings.System.putInt(((DesktopModeController) obj).mContext.getContentResolver(), "desktop_mode", 1);
                return;
            default:
                Settings.System.putInt(((DesktopModeController) obj).mContext.getContentResolver(), "desktop_mode", 0);
                return;
        }
    }
}
