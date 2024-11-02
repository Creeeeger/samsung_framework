package com.android.systemui.keyguardimage;

import android.content.Context;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.cover.CoverScreenManager;
import com.android.systemui.facewidget.plugin.ExternalClockProvider;
import com.android.systemui.facewidget.plugin.PluginFaceWidgetManager;
import com.android.systemui.subscreen.SubScreenManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ClockImageCreator implements ImageCreator {
    public final Context mContext;
    public final CoverScreenManager mCoverScreenManager;
    public final SubScreenManager mSubScreenManager;
    public final ExternalClockProvider mClockProvider = (ExternalClockProvider) Dependency.get(ExternalClockProvider.class);
    public final PluginFaceWidgetManager mPluginFaceWidget = (PluginFaceWidgetManager) Dependency.get(PluginFaceWidgetManager.class);

    public ClockImageCreator(Context context) {
        SubScreenManager subScreenManager;
        this.mContext = context;
        if (LsRune.SUBSCREEN_UI) {
            subScreenManager = (SubScreenManager) Dependency.get(SubScreenManager.class);
        } else {
            subScreenManager = null;
        }
        this.mSubScreenManager = subScreenManager;
        this.mCoverScreenManager = LsRune.COVER_SUPPORTED ? (CoverScreenManager) Dependency.get(CoverScreenManager.class) : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    @Override // com.android.systemui.keyguardimage.ImageCreator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap createImage(com.android.systemui.keyguardimage.ImageOptionCreator.ImageOption r14, android.graphics.Point r15) {
        /*
            Method dump skipped, instructions count: 827
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguardimage.ClockImageCreator.createImage(com.android.systemui.keyguardimage.ImageOptionCreator$ImageOption, android.graphics.Point):android.graphics.Bitmap");
    }
}
