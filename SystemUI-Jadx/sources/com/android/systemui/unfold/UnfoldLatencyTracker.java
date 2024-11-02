package com.android.systemui.unfold;

import android.content.ContentResolver;
import android.content.Context;
import android.hardware.devicestate.DeviceStateManager;
import com.android.internal.util.LatencyTracker;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import com.android.systemui.unfold.util.ScaleAwareTransitionProgressProvider;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldLatencyTracker implements ScreenLifecycle.Observer, UnfoldTransitionProgressProvider.TransitionProgressListener {
    public final ContentResolver contentResolver;
    public final Context context;
    public final DeviceStateManager deviceStateManager;
    public final FoldStateListener foldStateListener;
    public Boolean folded;
    public Boolean isTransitionEnabled;
    public final LatencyTracker latencyTracker;
    public final ScreenLifecycle screenLifecycle;
    public final Optional transitionProgressProvider;
    public final Executor uiBgExecutor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FoldStateListener extends DeviceStateManager.FoldStateListener {
        public FoldStateListener(final UnfoldLatencyTracker unfoldLatencyTracker, Context context) {
            super(context, new Consumer() { // from class: com.android.systemui.unfold.UnfoldLatencyTracker.FoldStateListener.1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    boolean z;
                    UnfoldLatencyTracker unfoldLatencyTracker2 = UnfoldLatencyTracker.this;
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    Boolean bool = unfoldLatencyTracker2.folded;
                    if (!Intrinsics.areEqual(bool, Boolean.valueOf(booleanValue))) {
                        unfoldLatencyTracker2.folded = Boolean.valueOf(booleanValue);
                        if (bool != null && !booleanValue) {
                            unfoldLatencyTracker2.latencyTracker.onActionStart(13);
                            if (unfoldLatencyTracker2.transitionProgressProvider.isPresent()) {
                                ScaleAwareTransitionProgressProvider.Companion.getClass();
                                if (ScaleAwareTransitionProgressProvider.Companion.areAnimationsEnabled(unfoldLatencyTracker2.contentResolver)) {
                                    z = true;
                                    unfoldLatencyTracker2.isTransitionEnabled = Boolean.valueOf(z);
                                }
                            }
                            z = false;
                            unfoldLatencyTracker2.isTransitionEnabled = Boolean.valueOf(z);
                        }
                    }
                }
            });
        }
    }

    public UnfoldLatencyTracker(LatencyTracker latencyTracker, DeviceStateManager deviceStateManager, Optional<UnfoldTransitionProgressProvider> optional, Executor executor, Context context, ContentResolver contentResolver, ScreenLifecycle screenLifecycle) {
        this.latencyTracker = latencyTracker;
        this.deviceStateManager = deviceStateManager;
        this.transitionProgressProvider = optional;
        this.uiBgExecutor = executor;
        this.context = context;
        this.contentResolver = contentResolver;
        this.screenLifecycle = screenLifecycle;
        this.foldStateListener = new FoldStateListener(this, context);
    }

    @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
    public final void onScreenTurnedOn() {
        Boolean bool = this.folded;
        Boolean bool2 = Boolean.FALSE;
        if (Intrinsics.areEqual(bool, bool2) && Intrinsics.areEqual(this.isTransitionEnabled, bool2)) {
            this.latencyTracker.onActionEnd(13);
        }
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionStarted() {
        if (Intrinsics.areEqual(this.folded, Boolean.FALSE) && Intrinsics.areEqual(this.isTransitionEnabled, Boolean.TRUE)) {
            this.latencyTracker.onActionEnd(13);
        }
    }
}
