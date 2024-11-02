package com.android.systemui.media.controls.models;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.R;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GutsViewHolder {
    public final View cancel;
    public final ViewGroup dismiss;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        SetsKt__SetsKt.setOf(Integer.valueOf(R.id.remove_text), Integer.valueOf(R.id.cancel), Integer.valueOf(R.id.dismiss), Integer.valueOf(R.id.settings));
    }

    public GutsViewHolder(View view) {
        this.cancel = view.requireViewById(R.id.cancel);
        this.dismiss = (ViewGroup) view.requireViewById(R.id.dismiss);
    }
}
