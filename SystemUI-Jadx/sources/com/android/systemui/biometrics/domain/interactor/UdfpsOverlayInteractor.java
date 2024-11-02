package com.android.systemui.biometrics.domain.interactor;

import android.view.MotionEvent;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.udfps.UdfpsOverlayParams;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsOverlayInteractor {
    public final AuthController authController;
    public final ReadonlyStateFlow udfpsOverlayParams;

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
    }

    public UdfpsOverlayInteractor(AuthController authController, CoroutineScope coroutineScope) {
        this.authController = authController;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        UdfpsOverlayInteractor$udfpsOverlayParams$1 udfpsOverlayInteractor$udfpsOverlayParams$1 = new UdfpsOverlayInteractor$udfpsOverlayParams$1(this, null);
        conflatedCallbackFlow.getClass();
        Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(udfpsOverlayInteractor$udfpsOverlayParams$1);
        SharingStarted.Companion.getClass();
        this.udfpsOverlayParams = FlowKt.stateIn(conflatedCallbackFlow2, coroutineScope, SharingStarted.Companion.Eagerly, new UdfpsOverlayParams(null, null, 0, 0, 0.0f, 0, 63, null));
    }

    public final boolean isTouchWithinUdfpsArea(MotionEvent motionEvent) {
        boolean isUdfpsEnrolled = this.authController.isUdfpsEnrolled(KeyguardUpdateMonitor.getCurrentUser());
        boolean contains = ((UdfpsOverlayParams) this.udfpsOverlayParams.getValue()).overlayBounds.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        if (isUdfpsEnrolled && contains) {
            return true;
        }
        return false;
    }
}
