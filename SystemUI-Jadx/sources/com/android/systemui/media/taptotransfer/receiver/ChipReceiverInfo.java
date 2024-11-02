package com.android.systemui.media.taptotransfer.receiver;

import android.graphics.drawable.Drawable;
import android.media.MediaRoute2Info;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.temporarydisplay.TemporaryViewInfo;
import com.android.systemui.temporarydisplay.ViewPriority;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ChipReceiverInfo extends TemporaryViewInfo {
    public final Drawable appIconDrawableOverride;
    public final CharSequence appNameOverride;
    public final String id;
    public final InstanceId instanceId;
    public final ViewPriority priority;
    public final MediaRoute2Info routeInfo;
    public final String wakeReason;
    public final String windowTitle;

    public /* synthetic */ ChipReceiverInfo(MediaRoute2Info mediaRoute2Info, Drawable drawable, CharSequence charSequence, String str, String str2, String str3, ViewPriority viewPriority, InstanceId instanceId, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mediaRoute2Info, drawable, charSequence, (i & 8) != 0 ? "Media Transfer Chip View (Receiver)" : str, (i & 16) != 0 ? "MEDIA_TRANSFER_ACTIVATED_RECEIVER" : str2, str3, (i & 64) != 0 ? ViewPriority.NORMAL : viewPriority, instanceId);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChipReceiverInfo)) {
            return false;
        }
        ChipReceiverInfo chipReceiverInfo = (ChipReceiverInfo) obj;
        if (Intrinsics.areEqual(this.routeInfo, chipReceiverInfo.routeInfo) && Intrinsics.areEqual(this.appIconDrawableOverride, chipReceiverInfo.appIconDrawableOverride) && Intrinsics.areEqual(this.appNameOverride, chipReceiverInfo.appNameOverride) && Intrinsics.areEqual(this.windowTitle, chipReceiverInfo.windowTitle) && Intrinsics.areEqual(this.wakeReason, chipReceiverInfo.wakeReason) && Intrinsics.areEqual(this.id, chipReceiverInfo.id) && this.priority == chipReceiverInfo.priority && Intrinsics.areEqual(this.instanceId, chipReceiverInfo.instanceId)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final String getId() {
        return this.id;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final InstanceId getInstanceId() {
        return this.instanceId;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final ViewPriority getPriority() {
        return this.priority;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final String getWakeReason() {
        return this.wakeReason;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final String getWindowTitle() {
        return this.windowTitle;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.routeInfo.hashCode() * 31;
        int i = 0;
        Drawable drawable = this.appIconDrawableOverride;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        int i2 = (hashCode2 + hashCode) * 31;
        CharSequence charSequence = this.appNameOverride;
        if (charSequence != null) {
            i = charSequence.hashCode();
        }
        return this.instanceId.hashCode() + ((this.priority.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.id, AppInfo$$ExternalSyntheticOutline0.m(this.wakeReason, AppInfo$$ExternalSyntheticOutline0.m(this.windowTitle, (i2 + i) * 31, 31), 31), 31)) * 31);
    }

    public final String toString() {
        return "ChipReceiverInfo(routeInfo=" + this.routeInfo + ", appIconDrawableOverride=" + this.appIconDrawableOverride + ", appNameOverride=" + ((Object) this.appNameOverride) + ", windowTitle=" + this.windowTitle + ", wakeReason=" + this.wakeReason + ", id=" + this.id + ", priority=" + this.priority + ", instanceId=" + this.instanceId + ")";
    }

    public ChipReceiverInfo(MediaRoute2Info mediaRoute2Info, Drawable drawable, CharSequence charSequence, String str, String str2, String str3, ViewPriority viewPriority, InstanceId instanceId) {
        this.routeInfo = mediaRoute2Info;
        this.appIconDrawableOverride = drawable;
        this.appNameOverride = charSequence;
        this.windowTitle = str;
        this.wakeReason = str2;
        this.id = str3;
        this.priority = viewPriority;
        this.instanceId = instanceId;
    }
}
