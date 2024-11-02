package com.android.systemui.volume.util;

import android.content.Context;
import android.view.SemBlurInfo;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.VolumeDependencyBase;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BlurEffect {
    public final Context context;
    public final SemWindowManagerWrapper semWindowManagerWrapper;
    public final StatusBarWrapper statusBarWrapper;

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
        new Companion(null);
    }

    public BlurEffect(Context context, VolumeDependencyBase volumeDependencyBase) {
        this.context = context;
        VolumeDependency volumeDependency = (VolumeDependency) volumeDependencyBase;
        this.statusBarWrapper = (StatusBarWrapper) volumeDependency.get(StatusBarWrapper.class);
        this.semWindowManagerWrapper = (SemWindowManagerWrapper) volumeDependency.get(SemWindowManagerWrapper.class);
    }

    public static void setRealTimeBlur(float f, int i, View view) {
        if (BasicRune.VOLUME_PARTIAL_BLUR && !((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
            SemBlurInfo build = new SemBlurInfo.Builder(0).setRadius(256).setBackgroundColor(i).setBackgroundCornerRadius(f).build();
            ViewVisibilityUtil.INSTANCE.getClass();
            view.setVisibility(0);
            view.getForeground().setAlpha(30);
            view.semSetBlurInfo(build);
            return;
        }
        ViewVisibilityUtil.INSTANCE.getClass();
        view.setVisibility(4);
        view.semSetBlurInfo(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setCapturedBlur(android.widget.ImageView r33, java.util.function.Supplier r34) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.util.BlurEffect.setCapturedBlur(android.widget.ImageView, java.util.function.Supplier):void");
    }
}
