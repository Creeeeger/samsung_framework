package com.android.systemui.media.controls.models.player;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaAction {
    public final Runnable action;
    public final Drawable background;
    public final CharSequence contentDescription;
    public final Drawable icon;
    public final Integer rebindId;

    public MediaAction(Drawable drawable, Runnable runnable, CharSequence charSequence, Drawable drawable2, Integer num) {
        this.icon = drawable;
        this.action = runnable;
        this.contentDescription = charSequence;
        this.background = drawable2;
        this.rebindId = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaAction)) {
            return false;
        }
        MediaAction mediaAction = (MediaAction) obj;
        if (Intrinsics.areEqual(this.icon, mediaAction.icon) && Intrinsics.areEqual(this.action, mediaAction.action) && Intrinsics.areEqual(this.contentDescription, mediaAction.contentDescription) && Intrinsics.areEqual(this.background, mediaAction.background) && Intrinsics.areEqual(this.rebindId, mediaAction.rebindId)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int i = 0;
        Drawable drawable = this.icon;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        int i2 = hashCode * 31;
        Runnable runnable = this.action;
        if (runnable == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = runnable.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        CharSequence charSequence = this.contentDescription;
        if (charSequence == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = charSequence.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Drawable drawable2 = this.background;
        if (drawable2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = drawable2.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Integer num = this.rebindId;
        if (num != null) {
            i = num.hashCode();
        }
        return i5 + i;
    }

    public final String toString() {
        return "MediaAction(icon=" + this.icon + ", action=" + this.action + ", contentDescription=" + ((Object) this.contentDescription) + ", background=" + this.background + ", rebindId=" + this.rebindId + ")";
    }

    public /* synthetic */ MediaAction(Drawable drawable, Runnable runnable, CharSequence charSequence, Drawable drawable2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawable, runnable, charSequence, drawable2, (i & 16) != 0 ? null : num);
    }
}
