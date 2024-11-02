package com.android.systemui.common.shared.model;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class Icon {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Loaded extends Icon {
        public final ContentDescription contentDescription;
        public final Drawable drawable;

        public Loaded(Drawable drawable, ContentDescription contentDescription) {
            super(null);
            this.drawable = drawable;
            this.contentDescription = contentDescription;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Loaded)) {
                return false;
            }
            Loaded loaded = (Loaded) obj;
            if (Intrinsics.areEqual(this.drawable, loaded.drawable) && Intrinsics.areEqual(this.contentDescription, loaded.contentDescription)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.common.shared.model.Icon
        public final ContentDescription getContentDescription() {
            return this.contentDescription;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.drawable.hashCode() * 31;
            ContentDescription contentDescription = this.contentDescription;
            if (contentDescription == null) {
                hashCode = 0;
            } else {
                hashCode = contentDescription.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "Loaded(drawable=" + this.drawable + ", contentDescription=" + this.contentDescription + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Resource extends Icon {
        public final ContentDescription contentDescription;
        public final int res;

        public Resource(int i, ContentDescription contentDescription) {
            super(null);
            this.res = i;
            this.contentDescription = contentDescription;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Resource)) {
                return false;
            }
            Resource resource = (Resource) obj;
            if (this.res == resource.res && Intrinsics.areEqual(this.contentDescription, resource.contentDescription)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.common.shared.model.Icon
        public final ContentDescription getContentDescription() {
            return this.contentDescription;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.res) * 31;
            ContentDescription contentDescription = this.contentDescription;
            if (contentDescription == null) {
                hashCode = 0;
            } else {
                hashCode = contentDescription.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "Resource(res=" + this.res + ", contentDescription=" + this.contentDescription + ")";
        }
    }

    private Icon() {
    }

    public /* synthetic */ Icon(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract ContentDescription getContentDescription();
}
