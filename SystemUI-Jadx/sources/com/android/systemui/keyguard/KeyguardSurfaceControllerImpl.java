package com.android.systemui.keyguard;

import android.os.Debug;
import android.os.Looper;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.ViewRootImpl;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardViewController;
import com.android.systemui.util.DeviceType;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KFunction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSurfaceControllerImpl implements KeyguardSurfaceController {
    public final KeyguardViewController keyguardViewController;
    public final KeyguardVisibilityMonitor keyguardVisibilityMonitor;
    public SyncRtSurfaceTransactionApplier.SurfaceParams lastKeyguardSurfaceParams;
    public final Executor mainExecutor;
    public final KFunction isExpandedChangedListener = new KeyguardSurfaceControllerImpl$isExpandedChangedListener$1(this);
    public final Lazy viewRootImpl$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.KeyguardSurfaceControllerImpl$viewRootImpl$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KeyguardSurfaceControllerImpl.this.keyguardViewController.getViewRootImpl();
        }
    });
    public final Lazy surfaceTransactionApplier$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.KeyguardSurfaceControllerImpl$surfaceTransactionApplier$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new SyncRtSurfaceTransactionApplier(((ViewRootImpl) KeyguardSurfaceControllerImpl.this.viewRootImpl$delegate.getValue()).getView());
        }
    });

    public KeyguardSurfaceControllerImpl(KeyguardViewController keyguardViewController, KeyguardVisibilityMonitor keyguardVisibilityMonitor, dagger.Lazy lazy, Executor executor) {
        this.keyguardViewController = keyguardViewController;
        this.keyguardVisibilityMonitor = keyguardVisibilityMonitor;
        this.mainExecutor = executor;
    }

    public static boolean isValid(SurfaceControl surfaceControl, float f) {
        if (!surfaceControl.isValid()) {
            Log.w("KeyguardSurface", "invalid surface");
        } else {
            if (f >= 0.0f && f <= 1.0f) {
                return true;
            }
            Log.w("KeyguardSurface", "wrong amount " + f);
        }
        return false;
    }

    public final void internalRestoreKeyguardSurfaceIfVisible(boolean z) {
        boolean z2;
        Log.d("KeyguardSurface", "restoreKeyguardSurfaceIfVisible " + z);
        if (z) {
            SyncRtSurfaceTransactionApplier.SurfaceParams surfaceParams = this.lastKeyguardSurfaceParams;
            boolean z3 = true;
            if (surfaceParams != null) {
                SurfaceControl surfaceControl = surfaceParams.surface;
                if (surfaceControl != null) {
                    z2 = surfaceControl.isValid();
                } else {
                    z2 = false;
                }
                z3 = true ^ z2;
            }
            if (!z3) {
                restoreKeyguardSurface();
            }
            ((ArrayList) this.keyguardVisibilityMonitor.isExpandedChangedListeners).remove((Function1) this.isExpandedChangedListener);
        }
    }

    public final void restoreKeyguardSurface() {
        Boolean bool;
        boolean z;
        SyncRtSurfaceTransactionApplier.SurfaceParams surfaceParams = this.lastKeyguardSurfaceParams;
        boolean z2 = false;
        if (surfaceParams != null) {
            if (isValid(surfaceParams.surface, 1.0f)) {
                ((SyncRtSurfaceTransactionApplier) this.surfaceTransactionApplier$delegate.getValue()).scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceParams.surface).withVisibility(true).withAlpha(1.0f).build()});
                z = true;
            } else {
                z = false;
            }
            bool = Boolean.valueOf(z);
        } else {
            bool = null;
        }
        String str = "restoreKeyguardSurface surfaceParam=" + this.lastKeyguardSurfaceParams + " restored=" + bool;
        int i = DeviceType.supportTablet;
        if (Debug.semIsProductDev() || DeviceType.getDebugLevel() == 1) {
            z2 = true;
        }
        if (z2) {
            str = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "\n", Debug.getCallers(3, " "));
        }
        Log.d("KeyguardSurface", str);
        this.lastKeyguardSurfaceParams = null;
    }

    public final void setKeyguardSurfaceVisible(final SurfaceControl.Transaction transaction) {
        boolean z;
        final SurfaceControl surfaceControl = ((ViewRootImpl) this.viewRootImpl$delegate.getValue()).getSurfaceControl();
        if (!isValid(surfaceControl, 1.0f)) {
            return;
        }
        final boolean z2 = false;
        if (transaction != null) {
            z = true;
        } else {
            z = false;
        }
        Log.d("KeyguardSurface", "setKeyguardSurfaceVisible visible=false hasTransaction=" + z);
        if (transaction != null) {
            transaction.setVisibility(surfaceControl, false);
        }
        Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSurfaceControllerImpl keyguardSurfaceControllerImpl = KeyguardSurfaceControllerImpl.this;
                SyncRtSurfaceTransactionApplier.SurfaceParams build = new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceControl).withVisibility(z2).build();
                SurfaceControl.Transaction transaction2 = transaction;
                KeyguardSurfaceControllerImpl keyguardSurfaceControllerImpl2 = KeyguardSurfaceControllerImpl.this;
                if (transaction2 == null) {
                    ((SyncRtSurfaceTransactionApplier) keyguardSurfaceControllerImpl2.surfaceTransactionApplier$delegate.getValue()).scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{build});
                }
                keyguardSurfaceControllerImpl.lastKeyguardSurfaceParams = build;
                if (!z2) {
                    KeyguardSurfaceControllerImpl keyguardSurfaceControllerImpl3 = KeyguardSurfaceControllerImpl.this;
                    KeyguardVisibilityMonitor keyguardVisibilityMonitor = keyguardSurfaceControllerImpl3.keyguardVisibilityMonitor;
                    Function1 function1 = (Function1) keyguardSurfaceControllerImpl3.isExpandedChangedListener;
                    ArrayList arrayList = (ArrayList) keyguardVisibilityMonitor.isExpandedChangedListeners;
                    if (!arrayList.contains(function1)) {
                        arrayList.add(function1);
                    }
                }
                return Unit.INSTANCE;
            }
        };
        if (Looper.getMainLooper().isCurrentThread()) {
            function0.invoke();
        } else {
            this.mainExecutor.execute(new KeyguadSurfaceControllerImplKt$sam$java_lang_Runnable$0(function0));
        }
    }
}
