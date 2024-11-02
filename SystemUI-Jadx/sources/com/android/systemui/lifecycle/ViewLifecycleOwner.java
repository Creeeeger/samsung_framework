package com.android.systemui.lifecycle;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewLifecycleOwner implements LifecycleOwner {
    public final View view;
    public final ViewLifecycleOwner$windowVisibleListener$1 windowVisibleListener = new ViewTreeObserver.OnWindowVisibilityChangeListener() { // from class: com.android.systemui.lifecycle.ViewLifecycleOwner$windowVisibleListener$1
        @Override // android.view.ViewTreeObserver.OnWindowVisibilityChangeListener
        public final void onWindowVisibilityChanged(int i) {
            ViewLifecycleOwner.this.updateState();
        }
    };
    public final ViewLifecycleOwner$windowFocusListener$1 windowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.android.systemui.lifecycle.ViewLifecycleOwner$windowFocusListener$1
        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public final void onWindowFocusChanged(boolean z) {
            ViewLifecycleOwner.this.updateState();
        }
    };
    public final LifecycleRegistry registry = new LifecycleRegistry(this);

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.lifecycle.ViewLifecycleOwner$windowVisibleListener$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.lifecycle.ViewLifecycleOwner$windowFocusListener$1] */
    public ViewLifecycleOwner(View view) {
        this.view = view;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.registry;
    }

    public final void onDestroy() {
        View view = this.view;
        view.getViewTreeObserver().removeOnWindowVisibilityChangeListener(this.windowVisibleListener);
        view.getViewTreeObserver().removeOnWindowFocusChangeListener(this.windowFocusListener);
        this.registry.setCurrentState(Lifecycle.State.DESTROYED);
    }

    public final void updateState() {
        Lifecycle.State state;
        LifecycleRegistry lifecycleRegistry = this.registry;
        View view = this.view;
        if (view.getWindowVisibility() != 0) {
            state = Lifecycle.State.CREATED;
        } else if (!view.hasWindowFocus()) {
            state = Lifecycle.State.STARTED;
        } else {
            state = Lifecycle.State.RESUMED;
        }
        lifecycleRegistry.setCurrentState(state);
    }
}
