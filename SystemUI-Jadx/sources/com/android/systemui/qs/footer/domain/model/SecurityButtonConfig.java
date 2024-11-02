package com.android.systemui.qs.footer.domain.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.systemui.common.shared.model.Icon;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecurityButtonConfig {
    public final Icon icon;
    public final boolean isClickable;
    public final String text;

    public SecurityButtonConfig(Icon icon, String str, boolean z) {
        this.icon = icon;
        this.text = str;
        this.isClickable = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SecurityButtonConfig)) {
            return false;
        }
        SecurityButtonConfig securityButtonConfig = (SecurityButtonConfig) obj;
        if (Intrinsics.areEqual(this.icon, securityButtonConfig.icon) && Intrinsics.areEqual(this.text, securityButtonConfig.text) && this.isClickable == securityButtonConfig.isClickable) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.text, this.icon.hashCode() * 31, 31);
        boolean z = this.isClickable;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SecurityButtonConfig(icon=");
        sb.append(this.icon);
        sb.append(", text=");
        sb.append(this.text);
        sb.append(", isClickable=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isClickable, ")");
    }
}
