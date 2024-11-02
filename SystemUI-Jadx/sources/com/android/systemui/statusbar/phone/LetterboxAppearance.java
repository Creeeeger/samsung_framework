package com.android.systemui.statusbar.phone;

import android.view.InsetsFlags;
import android.view.ViewDebug;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import com.android.internal.view.AppearanceRegion;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LetterboxAppearance {
    public final int appearance;
    public final AppearanceRegion[] appearanceRegions;

    public LetterboxAppearance(int i, AppearanceRegion[] appearanceRegionArr) {
        this.appearance = i;
        this.appearanceRegions = appearanceRegionArr;
    }

    public final String toString() {
        return MotionLayout$$ExternalSyntheticOutline0.m("LetterboxAppearance{", ViewDebug.flagsToString(InsetsFlags.class, "appearance", this.appearance), ", ", Arrays.toString(this.appearanceRegions), "}");
    }
}
