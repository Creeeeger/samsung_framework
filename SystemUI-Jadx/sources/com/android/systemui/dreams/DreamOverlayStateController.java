package com.android.systemui.dreams;

import android.util.Log;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.statusbar.policy.CallbackController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamOverlayStateController implements CallbackController {
    public static final boolean DEBUG = Log.isLoggable("DreamOverlayStateCtlr", 3);
    public final ArrayList mCallbacks = new ArrayList();
    public final Collection mComplications = new HashSet();
    public final Executor mExecutor;
    public final boolean mOverlayEnabled;
    public int mState;

    public DreamOverlayStateController(Executor executor, boolean z, FeatureFlags featureFlags) {
        this.mExecutor = executor;
        this.mOverlayEnabled = z;
        ((FeatureFlagsRelease) featureFlags).isEnabled(Flags.ALWAYS_SHOW_HOME_CONTROLS_ON_DREAMS);
        if (DEBUG) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("Dream overlay enabled:", z, "DreamOverlayStateCtlr");
        }
    }

    public final boolean containsState(int i) {
        if ((this.mState & i) != 0) {
            return true;
        }
        return false;
    }

    public final Collection getComplications() {
        if (containsState(2)) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableCollection((Collection) this.mComplications.stream().filter(new Predicate() { // from class: com.android.systemui.dreams.DreamOverlayStateController$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                DreamOverlayStateController dreamOverlayStateController = DreamOverlayStateController.this;
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                dreamOverlayStateController.getClass();
                throw null;
            }
        }).collect(Collectors.toCollection(new DreamOverlayStateController$$ExternalSyntheticLambda4())));
    }

    public final boolean isOverlayActive() {
        if (this.mOverlayEnabled && containsState(1)) {
            return true;
        }
        return false;
    }

    public final void modifyState(int i, int i2) {
        int i3 = this.mState;
        if (i != 1) {
            if (i == 2) {
                this.mState = i3 | i2;
            }
        } else {
            this.mState = (~i2) & i3;
        }
        if (i3 != this.mState) {
            this.mExecutor.execute(new DreamOverlayStateController$$ExternalSyntheticLambda2(this, new DreamOverlayStateController$$ExternalSyntheticLambda0(1), 2));
        }
    }

    public final void setLowLightActive(boolean z) {
        int i;
        if (containsState(2) && !z) {
            this.mCallbacks.forEach(new DreamOverlayStateController$$ExternalSyntheticLambda0(0));
        }
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        modifyState(i, 2);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Callback callback) {
        this.mExecutor.execute(new DreamOverlayStateController$$ExternalSyntheticLambda2(this, callback, 1));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Callback callback) {
        this.mExecutor.execute(new DreamOverlayStateController$$ExternalSyntheticLambda2(this, callback, 0));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
        default void onAvailableComplicationTypesChanged() {
        }

        default void onComplicationsChanged() {
        }

        default void onExitLowLight() {
        }

        default void onStateChanged() {
        }
    }
}
