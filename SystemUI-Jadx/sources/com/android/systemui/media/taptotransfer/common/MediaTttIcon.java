package com.android.systemui.media.taptotransfer.common;

import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface MediaTttIcon {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Loaded implements MediaTttIcon {
        public final Drawable drawable;

        public Loaded(Drawable drawable) {
            this.drawable = drawable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Loaded) && Intrinsics.areEqual(this.drawable, ((Loaded) obj).drawable)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.drawable.hashCode();
        }

        public final String toString() {
            return "Loaded(drawable=" + this.drawable + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Resource implements MediaTttIcon {
        public final int res;

        public Resource(int i) {
            this.res = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Resource) && this.res == ((Resource) obj).res) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.res);
        }

        public final String toString() {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("Resource(res="), this.res, ")");
        }
    }
}
