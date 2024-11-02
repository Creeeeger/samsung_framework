package com.android.systemui.media;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.media.controls.models.player.MediaData;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDataFormat {
    public final MediaData data;
    public final boolean isImmediately;
    public final boolean isSsReactivated;
    public final String key;
    public final String oldKey;
    public final int receivedSmartspaceCardLatency;

    public MediaDataFormat(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        this.key = str;
        this.oldKey = str2;
        this.data = mediaData;
        this.isImmediately = z;
        this.receivedSmartspaceCardLatency = i;
        this.isSsReactivated = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaDataFormat)) {
            return false;
        }
        MediaDataFormat mediaDataFormat = (MediaDataFormat) obj;
        if (Intrinsics.areEqual(this.key, mediaDataFormat.key) && Intrinsics.areEqual(this.oldKey, mediaDataFormat.oldKey) && Intrinsics.areEqual(this.data, mediaDataFormat.data) && this.isImmediately == mediaDataFormat.isImmediately && this.receivedSmartspaceCardLatency == mediaDataFormat.receivedSmartspaceCardLatency && this.isSsReactivated == mediaDataFormat.isSsReactivated) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.key.hashCode() * 31;
        String str = this.oldKey;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (this.data.hashCode() + ((hashCode2 + hashCode) * 31)) * 31;
        int i = 1;
        boolean z = this.isImmediately;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.receivedSmartspaceCardLatency, (hashCode3 + i2) * 31, 31);
        boolean z2 = this.isSsReactivated;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaDataFormat(key=");
        sb.append(this.key);
        sb.append(", oldKey=");
        sb.append(this.oldKey);
        sb.append(", data=");
        sb.append(this.data);
        sb.append(", isImmediately=");
        sb.append(this.isImmediately);
        sb.append(", receivedSmartspaceCardLatency=");
        sb.append(this.receivedSmartspaceCardLatency);
        sb.append(", isSsReactivated=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isSsReactivated, ")");
    }
}
