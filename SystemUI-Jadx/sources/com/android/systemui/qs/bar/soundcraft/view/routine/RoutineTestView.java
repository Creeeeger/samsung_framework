package com.android.systemui.qs.bar.soundcraft.view.routine;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.android.systemui.qs.bar.soundcraft.viewbinding.RoutineTestViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoutineTestView extends LinearLayout implements LifecycleOwner {
    public final LifecycleRegistry registry;
    public RoutineTestViewBinding viewBinding;
    public RoutineTestViewModel viewModel;

    public RoutineTestView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.registry = new LifecycleRegistry(this);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.registry;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.registry.setCurrentState(Lifecycle.State.RESUMED);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.registry.setCurrentState(Lifecycle.State.DESTROYED);
    }
}
