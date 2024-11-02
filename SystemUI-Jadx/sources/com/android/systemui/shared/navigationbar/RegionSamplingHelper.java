package com.android.systemui.shared.navigationbar;

import android.graphics.Rect;
import android.os.Handler;
import android.view.CompositionSamplingListener;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.systemui.navigationbar.BasicRuneWrapper;
import com.android.systemui.navigationbar.SamsungNavigationBarProxy;
import com.android.systemui.navigationbar.store.SystemBarProxy;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RegionSamplingHelper implements View.OnAttachStateChangeListener, View.OnLayoutChangeListener {
    public final Executor mBackgroundExecutor;
    public SystemBarProxy mBarProxy;
    public final SamplingCallback mCallback;
    public final SysuiCompositionSamplingListener mCompositionSamplingListener;
    public float mCurrentMedianLuma;
    public boolean mFirstSamplingAfterStart;
    public final Handler mHandler;
    public boolean mIsDestroyed;
    public boolean mIsWindowGone;
    public float mLastMedianLuma;
    public final Rect mRegisteredSamplingBounds;
    public SurfaceControl mRegisteredStopLayer;
    public final AnonymousClass2 mRemoveDrawRunnable;
    public final View mSampledView;
    public boolean mSamplingEnabled;
    public final AnonymousClass3 mSamplingListener;
    public boolean mSamplingListenerRegistered;
    public final Rect mSamplingRequestBounds;
    public final AnonymousClass1 mUpdateOnDraw;
    public boolean mWaitingOnDraw;
    public boolean mWindowVisible;
    public SurfaceControl mWrappedStopLayer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class SysuiCompositionSamplingListener {
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor) {
        this(view, samplingCallback, view.getContext().getMainExecutor(), executor);
    }

    public final void dump(PrintWriter printWriter) {
        Object obj;
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "RegionSamplingHelper:", "\tsampleView isAttached: ");
        m.append(this.mSampledView.isAttachedToWindow());
        printWriter.println(m.toString());
        StringBuilder sb = new StringBuilder("\tsampleView isScValid: ");
        if (this.mSampledView.isAttachedToWindow()) {
            obj = Boolean.valueOf(this.mSampledView.getViewRootImpl().getSurfaceControl().isValid());
        } else {
            obj = "notAttached";
        }
        sb.append(obj);
        printWriter.println(sb.toString());
        StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("\tmSamplingEnabled: "), this.mSamplingEnabled, printWriter, "\tmSamplingListenerRegistered: "), this.mSamplingListenerRegistered, printWriter, "\tmSamplingRequestBounds: ");
        m2.append(this.mSamplingRequestBounds);
        printWriter.println(m2.toString());
        printWriter.println("\tmRegisteredSamplingBounds: " + this.mRegisteredSamplingBounds);
        StringBuilder m3 = LockIconView$$ExternalSyntheticOutline0.m(LockIconView$$ExternalSyntheticOutline0.m(new StringBuilder("\tmLastMedianLuma: "), this.mLastMedianLuma, printWriter, "\tmCurrentMedianLuma: "), this.mCurrentMedianLuma, printWriter, "\tmWindowVisible: ");
        m3.append(this.mWindowVisible);
        printWriter.println(m3.toString());
        printWriter.println("\tmWindowHasBlurs: false");
        StringBuilder m4 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("\tmWaitingOnDraw: "), this.mWaitingOnDraw, printWriter, "\tmRegisteredStopLayer: ");
        m4.append(this.mRegisteredStopLayer);
        printWriter.println(m4.toString());
        printWriter.println("\tmWrappedStopLayer: " + this.mWrappedStopLayer);
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("\tmIsDestroyed: "), this.mIsDestroyed, printWriter);
        if (BasicRuneWrapper.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("\tmIsWindowGone: "), this.mIsWindowGone, printWriter);
        }
    }

    public SamplingCallback getCallback() {
        return this.mCallback;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        updateSamplingRect();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        updateSamplingListener();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        stop();
        Executor executor = this.mBackgroundExecutor;
        final AnonymousClass3 anonymousClass3 = this.mSamplingListener;
        Objects.requireNonNull(anonymousClass3);
        executor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                anonymousClass3.destroy();
            }
        });
        this.mIsDestroyed = true;
        this.mSampledView.removeOnAttachStateChangeListener(this);
        this.mSampledView.removeOnLayoutChangeListener(this);
        this.mSampledView.getViewTreeObserver().removeOnDrawListener(this.mUpdateOnDraw);
    }

    public final void start(Rect rect) {
        boolean z;
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            int i = ((SamsungNavigationBarProxy) this.mBarProxy).navbarTransitionMode;
            if (i != 4 && i != 3) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                return;
            }
        }
        if (!this.mCallback.isSamplingEnabled()) {
            return;
        }
        if (rect != null) {
            this.mSamplingRequestBounds.set(rect);
        }
        this.mSamplingEnabled = true;
        this.mLastMedianLuma = -1.0f;
        this.mFirstSamplingAfterStart = true;
        updateSamplingListener();
    }

    public final void stop() {
        this.mSamplingEnabled = false;
        updateSamplingListener();
    }

    public final void unregisterSamplingListener() {
        if (this.mSamplingListenerRegistered) {
            this.mSamplingListenerRegistered = false;
            final SurfaceControl surfaceControl = this.mWrappedStopLayer;
            this.mRegisteredStopLayer = null;
            this.mWrappedStopLayer = null;
            this.mRegisteredSamplingBounds.setEmpty();
            this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    RegionSamplingHelper regionSamplingHelper = RegionSamplingHelper.this;
                    SurfaceControl surfaceControl2 = surfaceControl;
                    RegionSamplingHelper.SysuiCompositionSamplingListener sysuiCompositionSamplingListener = regionSamplingHelper.mCompositionSamplingListener;
                    RegionSamplingHelper.AnonymousClass3 anonymousClass3 = regionSamplingHelper.mSamplingListener;
                    sysuiCompositionSamplingListener.getClass();
                    CompositionSamplingListener.unregister(anonymousClass3);
                    if (surfaceControl2 != null && surfaceControl2.isValid()) {
                        surfaceControl2.release();
                    }
                    if (BasicRuneWrapper.NAVBAR_ENABLED) {
                        regionSamplingHelper.mLastMedianLuma = -1.0f;
                    }
                }
            });
        }
    }

    public final void updateSamplingListener() {
        boolean z;
        SurfaceControl surfaceControl;
        if (this.mSamplingEnabled && !this.mSamplingRequestBounds.isEmpty() && this.mWindowVisible && ((this.mSampledView.isAttachedToWindow() || this.mFirstSamplingAfterStart) && (!BasicRuneWrapper.NAVBAR_SUPPORT_LARGE_COVER_SCREEN || !this.mIsWindowGone))) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            ViewRootImpl viewRootImpl = this.mSampledView.getViewRootImpl();
            SurfaceControl surfaceControl2 = null;
            if (viewRootImpl != null) {
                surfaceControl = viewRootImpl.getSurfaceControl();
            } else {
                surfaceControl = null;
            }
            if (surfaceControl != null && surfaceControl.isValid()) {
                surfaceControl2 = surfaceControl;
            } else if (!this.mWaitingOnDraw) {
                this.mWaitingOnDraw = true;
                if (this.mHandler.hasCallbacks(this.mRemoveDrawRunnable)) {
                    this.mHandler.removeCallbacks(this.mRemoveDrawRunnable);
                } else {
                    this.mSampledView.getViewTreeObserver().addOnDrawListener(this.mUpdateOnDraw);
                }
            }
            if (!this.mSamplingRequestBounds.equals(this.mRegisteredSamplingBounds) || this.mRegisteredStopLayer != surfaceControl2) {
                unregisterSamplingListener();
                this.mSamplingListenerRegistered = true;
                final SurfaceControl wrap = wrap(surfaceControl2);
                final Rect rect = new Rect(this.mSamplingRequestBounds);
                this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionSamplingHelper regionSamplingHelper = RegionSamplingHelper.this;
                        SurfaceControl surfaceControl3 = wrap;
                        Rect rect2 = rect;
                        if (surfaceControl3 != null) {
                            regionSamplingHelper.getClass();
                            if (!surfaceControl3.isValid()) {
                                return;
                            }
                        }
                        RegionSamplingHelper.SysuiCompositionSamplingListener sysuiCompositionSamplingListener = regionSamplingHelper.mCompositionSamplingListener;
                        RegionSamplingHelper.AnonymousClass3 anonymousClass3 = regionSamplingHelper.mSamplingListener;
                        sysuiCompositionSamplingListener.getClass();
                        CompositionSamplingListener.register(anonymousClass3, 0, surfaceControl3, rect2);
                    }
                });
                this.mRegisteredSamplingBounds.set(this.mSamplingRequestBounds);
                this.mRegisteredStopLayer = surfaceControl2;
                this.mWrappedStopLayer = wrap;
            }
            this.mFirstSamplingAfterStart = false;
        } else {
            unregisterSamplingListener();
        }
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            this.mCallback.onUpdateSamplingListener(this.mSamplingListenerRegistered);
        }
    }

    public final void updateSamplingRect() {
        Rect sampledRegion = this.mCallback.getSampledRegion();
        if (!this.mSamplingRequestBounds.equals(sampledRegion)) {
            this.mSamplingRequestBounds.set(sampledRegion);
            updateSamplingListener();
        }
    }

    public SurfaceControl wrap(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            return null;
        }
        return new SurfaceControl(surfaceControl, "regionSampling");
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor, Executor executor2) {
        this(view, samplingCallback, executor, executor2, new SysuiCompositionSamplingListener());
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.shared.navigationbar.RegionSamplingHelper$1] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.shared.navigationbar.RegionSamplingHelper$2] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.systemui.shared.navigationbar.RegionSamplingHelper$3] */
    public RegionSamplingHelper(View view, SamplingCallback samplingCallback, Executor executor, Executor executor2, SysuiCompositionSamplingListener sysuiCompositionSamplingListener) {
        this.mHandler = new Handler();
        this.mSamplingRequestBounds = new Rect();
        this.mRegisteredSamplingBounds = new Rect();
        this.mSamplingEnabled = false;
        this.mSamplingListenerRegistered = false;
        this.mIsWindowGone = false;
        this.mRegisteredStopLayer = null;
        this.mWrappedStopLayer = null;
        this.mUpdateOnDraw = new ViewTreeObserver.OnDrawListener() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.1
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                RegionSamplingHelper regionSamplingHelper = RegionSamplingHelper.this;
                regionSamplingHelper.mHandler.post(regionSamplingHelper.mRemoveDrawRunnable);
                RegionSamplingHelper regionSamplingHelper2 = RegionSamplingHelper.this;
                if (regionSamplingHelper2.mWaitingOnDraw) {
                    regionSamplingHelper2.mWaitingOnDraw = false;
                    regionSamplingHelper2.updateSamplingListener();
                }
            }
        };
        this.mRemoveDrawRunnable = new Runnable() { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.2
            @Override // java.lang.Runnable
            public final void run() {
                RegionSamplingHelper.this.mSampledView.getViewTreeObserver().removeOnDrawListener(RegionSamplingHelper.this.mUpdateOnDraw);
            }
        };
        this.mBackgroundExecutor = executor2;
        this.mCompositionSamplingListener = sysuiCompositionSamplingListener;
        this.mSamplingListener = new CompositionSamplingListener(executor) { // from class: com.android.systemui.shared.navigationbar.RegionSamplingHelper.3
            public final void onSampleCollected(float f) {
                boolean z;
                RegionSamplingHelper regionSamplingHelper = RegionSamplingHelper.this;
                if (regionSamplingHelper.mSamplingEnabled) {
                    if (!BasicRuneWrapper.NAVBAR_ENABLED || regionSamplingHelper.mSamplingListenerRegistered) {
                        regionSamplingHelper.mCurrentMedianLuma = f;
                        if (Math.abs(f - regionSamplingHelper.mLastMedianLuma) > 0.05f) {
                            SamplingCallback samplingCallback2 = regionSamplingHelper.mCallback;
                            if (f < 0.5f) {
                                z = true;
                            } else {
                                z = false;
                            }
                            samplingCallback2.onRegionDarknessChanged(z);
                            regionSamplingHelper.mLastMedianLuma = f;
                        }
                    }
                }
            }
        };
        this.mSampledView = view;
        view.addOnAttachStateChangeListener(this);
        view.addOnLayoutChangeListener(this);
        this.mCallback = samplingCallback;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SamplingCallback {
        Rect getSampledRegion();

        boolean isSamplingEnabled();

        void onRegionDarknessChanged(boolean z);

        default void onUpdateSamplingListener(boolean z) {
        }
    }
}
