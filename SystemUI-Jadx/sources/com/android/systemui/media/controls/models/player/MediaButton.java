package com.android.systemui.media.controls.models.player;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaButton {
    public final MediaAction custom0;
    public final MediaAction custom1;
    public final MediaAction nextOrCustom;
    public final MediaAction playOrPause;
    public final MediaAction prevOrCustom;
    public final boolean reserveNext;
    public final boolean reservePrev;

    public MediaButton() {
        this(null, null, null, null, null, false, false, 127, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaButton)) {
            return false;
        }
        MediaButton mediaButton = (MediaButton) obj;
        if (Intrinsics.areEqual(this.playOrPause, mediaButton.playOrPause) && Intrinsics.areEqual(this.nextOrCustom, mediaButton.nextOrCustom) && Intrinsics.areEqual(this.prevOrCustom, mediaButton.prevOrCustom) && Intrinsics.areEqual(this.custom0, mediaButton.custom0) && Intrinsics.areEqual(this.custom1, mediaButton.custom1) && this.reserveNext == mediaButton.reserveNext && this.reservePrev == mediaButton.reservePrev) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int i = 0;
        MediaAction mediaAction = this.playOrPause;
        if (mediaAction == null) {
            hashCode = 0;
        } else {
            hashCode = mediaAction.hashCode();
        }
        int i2 = hashCode * 31;
        MediaAction mediaAction2 = this.nextOrCustom;
        if (mediaAction2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = mediaAction2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        MediaAction mediaAction3 = this.prevOrCustom;
        if (mediaAction3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = mediaAction3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        MediaAction mediaAction4 = this.custom0;
        if (mediaAction4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = mediaAction4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        MediaAction mediaAction5 = this.custom1;
        if (mediaAction5 != null) {
            i = mediaAction5.hashCode();
        }
        int i6 = (i5 + i) * 31;
        int i7 = 1;
        boolean z = this.reserveNext;
        int i8 = z;
        if (z != 0) {
            i8 = 1;
        }
        int i9 = (i6 + i8) * 31;
        boolean z2 = this.reservePrev;
        if (!z2) {
            i7 = z2 ? 1 : 0;
        }
        return i9 + i7;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaButton(playOrPause=");
        sb.append(this.playOrPause);
        sb.append(", nextOrCustom=");
        sb.append(this.nextOrCustom);
        sb.append(", prevOrCustom=");
        sb.append(this.prevOrCustom);
        sb.append(", custom0=");
        sb.append(this.custom0);
        sb.append(", custom1=");
        sb.append(this.custom1);
        sb.append(", reserveNext=");
        sb.append(this.reserveNext);
        sb.append(", reservePrev=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.reservePrev, ")");
    }

    public MediaButton(MediaAction mediaAction, MediaAction mediaAction2, MediaAction mediaAction3, MediaAction mediaAction4, MediaAction mediaAction5, boolean z, boolean z2) {
        this.playOrPause = mediaAction;
        this.nextOrCustom = mediaAction2;
        this.prevOrCustom = mediaAction3;
        this.custom0 = mediaAction4;
        this.custom1 = mediaAction5;
        this.reserveNext = z;
        this.reservePrev = z2;
    }

    public /* synthetic */ MediaButton(MediaAction mediaAction, MediaAction mediaAction2, MediaAction mediaAction3, MediaAction mediaAction4, MediaAction mediaAction5, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : mediaAction, (i & 2) != 0 ? null : mediaAction2, (i & 4) != 0 ? null : mediaAction3, (i & 8) != 0 ? null : mediaAction4, (i & 16) != 0 ? null : mediaAction5, (i & 32) != 0 ? false : z, (i & 64) != 0 ? false : z2);
    }
}
