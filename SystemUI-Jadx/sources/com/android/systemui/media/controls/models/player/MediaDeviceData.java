package com.android.systemui.media.controls.models.player;

import android.app.PendingIntent;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDeviceData {
    public final SecMediaDeviceDataImpl customMediaDeviceData;
    public final boolean enabled;
    public final Drawable icon;
    public final String id;
    public final PendingIntent intent;
    public final CharSequence name;
    public final boolean showBroadcastButton;

    public MediaDeviceData(boolean z, Drawable drawable, CharSequence charSequence, PendingIntent pendingIntent, String str, boolean z2) {
        this(z, drawable, charSequence, pendingIntent, str, z2, null, 64, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaDeviceData)) {
            return false;
        }
        MediaDeviceData mediaDeviceData = (MediaDeviceData) obj;
        if (this.enabled == mediaDeviceData.enabled && Intrinsics.areEqual(this.icon, mediaDeviceData.icon) && Intrinsics.areEqual(this.name, mediaDeviceData.name) && Intrinsics.areEqual(this.intent, mediaDeviceData.intent) && Intrinsics.areEqual(this.id, mediaDeviceData.id) && this.showBroadcastButton == mediaDeviceData.showBroadcastButton && Intrinsics.areEqual(this.customMediaDeviceData, mediaDeviceData.customMediaDeviceData)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 1;
        boolean z = this.enabled;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        int i4 = 0;
        Drawable drawable = this.icon;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        CharSequence charSequence = this.name;
        if (charSequence == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = charSequence.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        PendingIntent pendingIntent = this.intent;
        if (pendingIntent == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = pendingIntent.hashCode();
        }
        int i7 = (i6 + hashCode3) * 31;
        String str = this.id;
        if (str != null) {
            i4 = str.hashCode();
        }
        int i8 = (i7 + i4) * 31;
        boolean z2 = this.showBroadcastButton;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return this.customMediaDeviceData.hashCode() + ((i8 + i) * 31);
    }

    public final String toString() {
        return "MediaDeviceData(enabled=" + this.enabled + ", icon=" + this.icon + ", name=" + ((Object) this.name) + ", intent=" + this.intent + ", id=" + this.id + ", showBroadcastButton=" + this.showBroadcastButton + ", customMediaDeviceData=" + this.customMediaDeviceData + ")";
    }

    public MediaDeviceData(boolean z, Drawable drawable, CharSequence charSequence, PendingIntent pendingIntent, boolean z2) {
        this(z, drawable, charSequence, pendingIntent, null, z2, null, 80, null);
    }

    public MediaDeviceData(boolean z, Drawable drawable, CharSequence charSequence, boolean z2) {
        this(z, drawable, charSequence, null, null, z2, null, 88, null);
    }

    public MediaDeviceData(boolean z, Drawable drawable, CharSequence charSequence, PendingIntent pendingIntent, String str, boolean z2, SecMediaDeviceDataImpl secMediaDeviceDataImpl) {
        this.enabled = z;
        this.icon = drawable;
        this.name = charSequence;
        this.intent = pendingIntent;
        this.id = str;
        this.showBroadcastButton = z2;
        this.customMediaDeviceData = secMediaDeviceDataImpl;
    }

    public /* synthetic */ MediaDeviceData(boolean z, Drawable drawable, CharSequence charSequence, PendingIntent pendingIntent, String str, boolean z2, SecMediaDeviceDataImpl secMediaDeviceDataImpl, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, drawable, charSequence, (i & 8) != 0 ? null : pendingIntent, (i & 16) != 0 ? null : str, z2, (i & 64) != 0 ? new SecMediaDeviceDataImpl(0) : secMediaDeviceDataImpl);
    }
}
