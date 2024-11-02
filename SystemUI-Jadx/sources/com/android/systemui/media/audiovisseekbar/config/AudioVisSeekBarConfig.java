package com.android.systemui.media.audiovisseekbar.config;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AudioVisSeekBarConfig {
    public int primaryColor;
    public final int progressColor;
    public final int remainTrackBorderColor;
    public final int remainTrackColor;
    public int secondaryColor;

    public AudioVisSeekBarConfig() {
        this(0, 0, 0, 0, 0, 31, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioVisSeekBarConfig)) {
            return false;
        }
        AudioVisSeekBarConfig audioVisSeekBarConfig = (AudioVisSeekBarConfig) obj;
        if (this.primaryColor == audioVisSeekBarConfig.primaryColor && this.secondaryColor == audioVisSeekBarConfig.secondaryColor && this.progressColor == audioVisSeekBarConfig.progressColor && this.remainTrackColor == audioVisSeekBarConfig.remainTrackColor && this.remainTrackBorderColor == audioVisSeekBarConfig.remainTrackBorderColor) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.remainTrackBorderColor) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.remainTrackColor, AppInfoViewData$$ExternalSyntheticOutline0.m(this.progressColor, AppInfoViewData$$ExternalSyntheticOutline0.m(this.secondaryColor, Integer.hashCode(this.primaryColor) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("AudioVisSeekBarConfig(primaryColor=", this.primaryColor, ", secondaryColor=", this.secondaryColor, ", progressColor=");
        m.append(this.progressColor);
        m.append(", remainTrackColor=");
        m.append(this.remainTrackColor);
        m.append(", remainTrackBorderColor=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(m, this.remainTrackBorderColor, ")");
    }

    public AudioVisSeekBarConfig(int i, int i2, int i3, int i4, int i5) {
        this.primaryColor = i;
        this.secondaryColor = i2;
        this.progressColor = i3;
        this.remainTrackColor = i4;
        this.remainTrackBorderColor = i5;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AudioVisSeekBarConfig(int r4, int r5, int r6, int r7, int r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
        /*
            r3 = this;
            r10 = r9 & 1
            if (r10 == 0) goto Lb
            com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider r4 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.INSTANCE
            r4.getClass()
            int r4 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.uxPrimaryColor
        Lb:
            r10 = r9 & 2
            if (r10 == 0) goto L16
            com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider r5 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.INSTANCE
            r5.getClass()
            int r5 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.uxSecondaryColor
        L16:
            r10 = r5
            r5 = r9 & 4
            if (r5 == 0) goto L22
            com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider r5 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.INSTANCE
            r5.getClass()
            int r6 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.progressTrackColor
        L22:
            r0 = r6
            r5 = r9 & 8
            if (r5 == 0) goto L2e
            com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider r5 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.INSTANCE
            r5.getClass()
            int r7 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.remainTrackColor
        L2e:
            r1 = r7
            r5 = r9 & 16
            if (r5 == 0) goto L3a
            com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider r5 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.INSTANCE
            r5.getClass()
            int r8 = com.android.systemui.media.audiovisseekbar.utils.color.ColorPresetProvider.remainTrackBorderColor
        L3a:
            r2 = r8
            r5 = r3
            r6 = r4
            r7 = r10
            r8 = r0
            r9 = r1
            r10 = r2
            r5.<init>(r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.audiovisseekbar.config.AudioVisSeekBarConfig.<init>(int, int, int, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
