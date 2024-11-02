package com.android.systemui.qs.external;

import android.content.Context;
import android.graphics.drawable.Icon;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TileRequestDialog extends SystemUIDialog {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TileData {
        public final CharSequence appName;
        public final Icon icon;
        public final CharSequence label;

        public TileData(CharSequence charSequence, CharSequence charSequence2, Icon icon) {
            this.appName = charSequence;
            this.label = charSequence2;
            this.icon = icon;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TileData)) {
                return false;
            }
            TileData tileData = (TileData) obj;
            if (Intrinsics.areEqual(this.appName, tileData.appName) && Intrinsics.areEqual(this.label, tileData.label) && Intrinsics.areEqual(this.icon, tileData.icon)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (this.label.hashCode() + (this.appName.hashCode() * 31)) * 31;
            Icon icon = this.icon;
            if (icon == null) {
                hashCode = 0;
            } else {
                hashCode = icon.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "TileData(appName=" + ((Object) this.appName) + ", label=" + ((Object) this.label) + ", icon=" + this.icon + ")";
        }
    }

    static {
        new Companion(null);
    }

    public TileRequestDialog(Context context) {
        super(context, 2132018528);
    }
}
