package com.android.systemui.complication.dagger;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.internal.util.Preconditions;
import com.android.systemui.R;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationHostViewModule_ProvidesComplicationHostViewFactory implements Provider {
    public final Provider layoutInflaterProvider;

    public ComplicationHostViewModule_ProvidesComplicationHostViewFactory(Provider provider) {
        this.layoutInflaterProvider = provider;
    }

    public static ConstraintLayout providesComplicationHostView(LayoutInflater layoutInflater) {
        ConstraintLayout constraintLayout = (ConstraintLayout) Preconditions.checkNotNull((ConstraintLayout) layoutInflater.inflate(R.layout.dream_overlay_complications_layer, (ViewGroup) null), "R.layout.dream_overlay_complications_layer did not properly inflated");
        dagger.internal.Preconditions.checkNotNullFromProvides(constraintLayout);
        return constraintLayout;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesComplicationHostView((LayoutInflater) this.layoutInflaterProvider.get());
    }
}
