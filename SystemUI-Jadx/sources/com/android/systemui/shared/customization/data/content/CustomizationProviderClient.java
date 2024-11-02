package com.android.systemui.shared.customization.data.content;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface CustomizationProviderClient {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Selection {
        public final String affordanceId;
        public final String affordanceName;
        public final String slotId;

        public Selection(String str, String str2, String str3) {
            this.slotId = str;
            this.affordanceId = str2;
            this.affordanceName = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Selection)) {
                return false;
            }
            Selection selection = (Selection) obj;
            if (Intrinsics.areEqual(this.slotId, selection.slotId) && Intrinsics.areEqual(this.affordanceId, selection.affordanceId) && Intrinsics.areEqual(this.affordanceName, selection.affordanceName)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.affordanceName.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.affordanceId, this.slotId.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Selection(slotId=");
            sb.append(this.slotId);
            sb.append(", affordanceId=");
            sb.append(this.affordanceId);
            sb.append(", affordanceName=");
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.affordanceName, ")");
        }
    }
}
