package com.android.systemui.qs.footer.data.model;

import android.graphics.drawable.Drawable;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class UserSwitcherStatusModel {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Disabled extends UserSwitcherStatusModel {
        public static final Disabled INSTANCE = new Disabled();

        private Disabled() {
            super(null);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Enabled extends UserSwitcherStatusModel {
        public final Drawable currentUserImage;
        public final String currentUserName;
        public final boolean isGuestUser;

        public Enabled(String str, Drawable drawable, boolean z) {
            super(null);
            this.currentUserName = str;
            this.currentUserImage = drawable;
            this.isGuestUser = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Enabled)) {
                return false;
            }
            Enabled enabled = (Enabled) obj;
            if (Intrinsics.areEqual(this.currentUserName, enabled.currentUserName) && Intrinsics.areEqual(this.currentUserImage, enabled.currentUserImage) && this.isGuestUser == enabled.isGuestUser) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int i = 0;
            String str = this.currentUserName;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            Drawable drawable = this.currentUserImage;
            if (drawable != null) {
                i = drawable.hashCode();
            }
            int i3 = (i2 + i) * 31;
            boolean z = this.isGuestUser;
            int i4 = z;
            if (z != 0) {
                i4 = 1;
            }
            return i3 + i4;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Enabled(currentUserName=");
            sb.append(this.currentUserName);
            sb.append(", currentUserImage=");
            sb.append(this.currentUserImage);
            sb.append(", isGuestUser=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isGuestUser, ")");
        }
    }

    private UserSwitcherStatusModel() {
    }

    public /* synthetic */ UserSwitcherStatusModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
