package com.android.systemui.temporarydisplay.chipbar;

import android.R;
import android.os.VibrationEffect;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.common.shared.model.Text;
import com.android.systemui.common.shared.model.TintedIcon;
import com.android.systemui.temporarydisplay.TemporaryViewInfo;
import com.android.systemui.temporarydisplay.ViewPriority;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChipbarInfo extends TemporaryViewInfo {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_ICON_TINT = R.^attr-private.pointerIconContextMenu;
    public final boolean allowSwipeToDismiss;
    public final ChipbarEndItem endItem;
    public final String id;
    public final InstanceId instanceId;
    public final ViewPriority priority;
    public final TintedIcon startIcon;
    public final Text text;
    public final int timeoutMs;
    public final VibrationEffect vibrationEffect;
    public final String wakeReason;
    public final String windowTitle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ ChipbarInfo(TintedIcon tintedIcon, Text text, ChipbarEndItem chipbarEndItem, VibrationEffect vibrationEffect, boolean z, String str, String str2, int i, String str3, ViewPriority viewPriority, InstanceId instanceId, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(tintedIcon, text, chipbarEndItem, (i2 & 8) != 0 ? null : vibrationEffect, (i2 & 16) != 0 ? false : z, str, str2, i, str3, viewPriority, instanceId);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChipbarInfo)) {
            return false;
        }
        ChipbarInfo chipbarInfo = (ChipbarInfo) obj;
        if (Intrinsics.areEqual(this.startIcon, chipbarInfo.startIcon) && Intrinsics.areEqual(this.text, chipbarInfo.text) && Intrinsics.areEqual(this.endItem, chipbarInfo.endItem) && Intrinsics.areEqual(this.vibrationEffect, chipbarInfo.vibrationEffect) && this.allowSwipeToDismiss == chipbarInfo.allowSwipeToDismiss && Intrinsics.areEqual(this.windowTitle, chipbarInfo.windowTitle) && Intrinsics.areEqual(this.wakeReason, chipbarInfo.wakeReason) && this.timeoutMs == chipbarInfo.timeoutMs && Intrinsics.areEqual(this.id, chipbarInfo.id) && this.priority == chipbarInfo.priority && Intrinsics.areEqual(this.instanceId, chipbarInfo.instanceId)) {
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
    public final int getTimeoutMs() {
        return this.timeoutMs;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final String getWakeReason() {
        return this.wakeReason;
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewInfo
    public final String getWindowTitle() {
        return this.windowTitle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.text.hashCode() + (this.startIcon.hashCode() * 31)) * 31;
        int i = 0;
        ChipbarEndItem chipbarEndItem = this.endItem;
        if (chipbarEndItem == null) {
            hashCode = 0;
        } else {
            hashCode = chipbarEndItem.hashCode();
        }
        int i2 = (hashCode3 + hashCode) * 31;
        VibrationEffect vibrationEffect = this.vibrationEffect;
        if (vibrationEffect == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = vibrationEffect.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        boolean z = this.allowSwipeToDismiss;
        int i4 = z;
        if (z != 0) {
            i4 = 1;
        }
        int hashCode4 = (this.priority.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.id, AppInfoViewData$$ExternalSyntheticOutline0.m(this.timeoutMs, AppInfo$$ExternalSyntheticOutline0.m(this.wakeReason, AppInfo$$ExternalSyntheticOutline0.m(this.windowTitle, (i3 + i4) * 31, 31), 31), 31), 31)) * 31;
        InstanceId instanceId = this.instanceId;
        if (instanceId != null) {
            i = instanceId.hashCode();
        }
        return hashCode4 + i;
    }

    public final String toString() {
        return "ChipbarInfo(startIcon=" + this.startIcon + ", text=" + this.text + ", endItem=" + this.endItem + ", vibrationEffect=" + this.vibrationEffect + ", allowSwipeToDismiss=" + this.allowSwipeToDismiss + ", windowTitle=" + this.windowTitle + ", wakeReason=" + this.wakeReason + ", timeoutMs=" + this.timeoutMs + ", id=" + this.id + ", priority=" + this.priority + ", instanceId=" + this.instanceId + ")";
    }

    public ChipbarInfo(TintedIcon tintedIcon, Text text, ChipbarEndItem chipbarEndItem, VibrationEffect vibrationEffect, boolean z, String str, String str2, int i, String str3, ViewPriority viewPriority, InstanceId instanceId) {
        this.startIcon = tintedIcon;
        this.text = text;
        this.endItem = chipbarEndItem;
        this.vibrationEffect = vibrationEffect;
        this.allowSwipeToDismiss = z;
        this.windowTitle = str;
        this.wakeReason = str2;
        this.timeoutMs = i;
        this.id = str3;
        this.priority = viewPriority;
        this.instanceId = instanceId;
    }
}
