package com.android.systemui.common.shared.model;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ContentDescription {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Loaded extends ContentDescription {
        public final String description;

        public Loaded(String str) {
            super(null);
            this.description = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Loaded) && Intrinsics.areEqual(this.description, ((Loaded) obj).description)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            String str = this.description;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Loaded(description="), this.description, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Resource extends ContentDescription {
        public final int res;

        public Resource(int i) {
            super(null);
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

    private ContentDescription() {
    }

    public /* synthetic */ ContentDescription(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
