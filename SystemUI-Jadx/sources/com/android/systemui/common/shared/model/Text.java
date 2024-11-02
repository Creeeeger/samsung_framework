package com.android.systemui.common.shared.model;

import android.content.Context;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class Text {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static String loadText(Text text, Context context) {
            if (text == null) {
                return null;
            }
            if (text instanceof Loaded) {
                return ((Loaded) text).text;
            }
            if (text instanceof Resource) {
                return context.getString(((Resource) text).res);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Loaded extends Text {
        public final String text;

        public Loaded(String str) {
            super(null);
            this.text = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Loaded) && Intrinsics.areEqual(this.text, ((Loaded) obj).text)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            String str = this.text;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Loaded(text="), this.text, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Resource extends Text {
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

    private Text() {
    }

    public /* synthetic */ Text(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
