package com.android.systemui.biometrics;

import android.app.ActivityTaskManager;
import android.content.Context;
import android.graphics.Rect;
import android.hardware.biometrics.SensorLocationInternal;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.hardware.fingerprint.ISidefpsController;
import android.os.Handler;
import android.os.Trace;
import android.util.RotationUtils;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieOnCompositionLoadedListener;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.biometrics.domain.interactor.DisplayStateInteractor;
import com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.data.repository.KeyguardBouncerRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.util.ConvenienceExtensionsKt;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SideFpsController implements Dumpable {
    public final ActivityTaskManager activityTaskManager;
    public final AlternateBouncerInteractor alternateBouncerInteractor;
    public final Context context;
    public final DisplayInfo displayInfo;
    public final DisplayStateInteractor displayStateInteractor;
    public final Handler handler;
    public final boolean isReverseDefaultRotation;
    public final LayoutInflater layoutInflater;
    public final DelayableExecutor mainExecutor;
    public final BiometricDisplayListener orientationListener;
    public final OrientationReasonListener orientationReasonListener;
    public SensorLocationInternal overlayOffsets;
    public View overlayView;
    public final WindowManager.LayoutParams overlayViewParams;
    public final HashSet requests = new HashSet();
    public final CoroutineScope scope;
    public final FingerprintSensorPropertiesInternal sensorProps;
    public final WindowManager windowManager;

    public SideFpsController(Context context, LayoutInflater layoutInflater, FingerprintManager fingerprintManager, WindowManager windowManager, ActivityTaskManager activityTaskManager, DisplayManager displayManager, DisplayStateInteractor displayStateInteractor, DelayableExecutor delayableExecutor, Handler handler, AlternateBouncerInteractor alternateBouncerInteractor, CoroutineScope coroutineScope, DumpManager dumpManager) {
        FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal;
        Object obj;
        this.context = context;
        this.layoutInflater = layoutInflater;
        this.windowManager = windowManager;
        this.activityTaskManager = activityTaskManager;
        this.displayStateInteractor = displayStateInteractor;
        this.mainExecutor = delayableExecutor;
        this.handler = handler;
        this.alternateBouncerInteractor = alternateBouncerInteractor;
        this.scope = coroutineScope;
        if (fingerprintManager != null) {
            List sensorPropertiesInternal = fingerprintManager.getSensorPropertiesInternal();
            if (sensorPropertiesInternal != null) {
                Iterator it = sensorPropertiesInternal.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((FingerprintSensorPropertiesInternal) obj).isAnySidefpsType()) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                fingerprintSensorPropertiesInternal = (FingerprintSensorPropertiesInternal) obj;
            } else {
                fingerprintSensorPropertiesInternal = null;
            }
            if (fingerprintSensorPropertiesInternal != null) {
                this.sensorProps = fingerprintSensorPropertiesInternal;
                OrientationReasonListener orientationReasonListener = new OrientationReasonListener(this.context, displayManager, this.handler, fingerprintSensorPropertiesInternal, new Function1() { // from class: com.android.systemui.biometrics.SideFpsController$orientationReasonListener$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int intValue = ((Number) obj2).intValue();
                        SideFpsController sideFpsController = SideFpsController.this;
                        if (sideFpsController.overlayView != null) {
                            sideFpsController.createOverlayForDisplay(intValue);
                        }
                        return Unit.INSTANCE;
                    }
                }, 0);
                this.orientationReasonListener = orientationReasonListener;
                this.orientationListener = orientationReasonListener.orientationListener;
                this.isReverseDefaultRotation = this.context.getResources().getBoolean(17891810);
                this.overlayOffsets = SensorLocationInternal.DEFAULT;
                this.displayInfo = new DisplayInfo();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2024, 16777512, -3);
                layoutParams.setTitle("SideFpsController");
                layoutParams.setFitInsetsTypes(0);
                layoutParams.gravity = 51;
                layoutParams.layoutInDisplayCutoutMode = 3;
                layoutParams.privateFlags = 536870976;
                this.overlayViewParams = layoutParams;
                fingerprintManager.setSidefpsController(new ISidefpsController.Stub() { // from class: com.android.systemui.biometrics.SideFpsController.1
                    public final void hide(int i) {
                        SideFpsController.this.hide(SideFpsUiRequestSource.AUTO_SHOW);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
                    
                        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, "com.android.settings.biometrics.fingerprint.FingerprintSettings") != false) goto L17;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
                    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void show(int r3, int r4) {
                        /*
                            r2 = this;
                            com.android.systemui.biometrics.SideFpsController r3 = com.android.systemui.biometrics.SideFpsController.this
                            android.app.ActivityTaskManager r3 = r3.activityTaskManager
                            r0 = 4
                            if (r4 == r0) goto L2e
                            r0 = 6
                            r1 = 1
                            if (r4 == r0) goto Lc
                            goto L2f
                        Lc:
                            java.util.List r3 = r3.getTasks(r1)
                            java.lang.Object r3 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r3)
                            android.app.ActivityManager$RunningTaskInfo r3 = (android.app.ActivityManager.RunningTaskInfo) r3
                            if (r3 == 0) goto L21
                            android.content.ComponentName r3 = r3.topActivity
                            if (r3 == 0) goto L21
                            java.lang.String r3 = r3.getClassName()
                            goto L22
                        L21:
                            r3 = 0
                        L22:
                            if (r3 != 0) goto L26
                            java.lang.String r3 = ""
                        L26:
                            java.lang.String r0 = "com.android.settings.biometrics.fingerprint.FingerprintSettings"
                            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)
                            if (r3 == 0) goto L2f
                        L2e:
                            r1 = 0
                        L2f:
                            if (r1 == 0) goto L39
                            com.android.systemui.biometrics.SideFpsController r2 = com.android.systemui.biometrics.SideFpsController.this
                            com.android.systemui.biometrics.SideFpsUiRequestSource r3 = com.android.systemui.biometrics.SideFpsUiRequestSource.AUTO_SHOW
                            r2.show(r3, r4)
                            goto L40
                        L39:
                            com.android.systemui.biometrics.SideFpsController r2 = com.android.systemui.biometrics.SideFpsController.this
                            com.android.systemui.biometrics.SideFpsUiRequestSource r3 = com.android.systemui.biometrics.SideFpsUiRequestSource.AUTO_SHOW
                            r2.hide(r3)
                        L40:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.SideFpsController.AnonymousClass1.show(int, int):void");
                    }
                });
                ((KeyguardBouncerRepositoryImpl) this.alternateBouncerInteractor.bouncerRepository)._alternateBouncerUIAvailable.setValue(Boolean.TRUE);
                BuildersKt.launch$default(this.scope, null, null, new SideFpsController$listenForAlternateBouncerVisibility$1(this, null), 3);
                dumpManager.registerDumpable(this);
                return;
            }
        }
        throw new IllegalStateException("no side fingerprint sensor");
    }

    public final void createOverlayForDisplay(final int i) {
        boolean z;
        float f;
        int i2;
        boolean z2 = false;
        final View inflate = this.layoutInflater.inflate(R.layout.sidefps_view, (ViewGroup) null, false);
        setOverlayView(inflate);
        final Context context = this.context;
        final Display display = context.getDisplay();
        Intrinsics.checkNotNull(display);
        DisplayInfo displayInfo = this.displayInfo;
        display.getDisplayInfo(displayInfo);
        String uniqueId = display.getUniqueId();
        FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal = this.sensorProps;
        SensorLocationInternal location = fingerprintSensorPropertiesInternal.getLocation(uniqueId);
        if (location == null) {
            MotionLayout$$ExternalSyntheticOutline0.m("No location specified for display: ", display.getUniqueId(), "SideFpsController");
        }
        if (location == null) {
            location = fingerprintSensorPropertiesInternal.getLocation();
        }
        this.overlayOffsets = location;
        final LottieAnimationView lottieAnimationView = (LottieAnimationView) inflate.findViewById(R.id.sidefps_animation);
        if (location.sensorLocationY != 0) {
            z = true;
        } else {
            z = false;
        }
        int i3 = displayInfo.rotation;
        boolean z3 = this.isReverseDefaultRotation;
        if (z3) {
            i3 = (i3 + 1) % 4;
        }
        if (i3 == 1 ? z : !(i3 == 2 || (i3 == 3 && z))) {
            f = 0.0f;
        } else {
            f = 180.0f;
        }
        inflate.setRotation(f);
        if (location.sensorLocationY != 0) {
            z2 = true;
        }
        int i4 = displayInfo.rotation;
        if (z3) {
            i4 = (i4 + 1) % 4;
        }
        if (i4 == 0 ? z2 : !(i4 == 2 ? !z2 : z2)) {
            i2 = R.raw.sfps_pulse;
        } else {
            i2 = R.raw.sfps_pulse_landscape;
        }
        lottieAnimationView.setAnimation(i2);
        LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener = new LottieOnCompositionLoadedListener() { // from class: com.android.systemui.biometrics.SideFpsController$createOverlayForDisplay$1
            @Override // com.airbnb.lottie.LottieOnCompositionLoadedListener
            public final void onCompositionLoaded(LottieComposition lottieComposition) {
                SideFpsController sideFpsController = SideFpsController.this;
                View view = sideFpsController.overlayView;
                if (view != null && Intrinsics.areEqual(view, inflate)) {
                    sideFpsController.updateOverlayParams(display, lottieComposition.bounds);
                }
            }
        };
        LottieComposition lottieComposition = lottieAnimationView.composition;
        if (lottieComposition != null) {
            lottieOnCompositionLoadedListener.onCompositionLoaded(lottieComposition);
        }
        ((HashSet) lottieAnimationView.lottieOnCompositionLoadedListeners).add(lottieOnCompositionLoadedListener);
        this.orientationReasonListener.reason = i;
        if (lottieAnimationView.composition != null) {
            SideFpsControllerKt.addOverlayDynamicColor$update(i, context, lottieAnimationView);
        } else {
            LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener2 = new LottieOnCompositionLoadedListener() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$1
                @Override // com.airbnb.lottie.LottieOnCompositionLoadedListener
                public final void onCompositionLoaded(LottieComposition lottieComposition2) {
                    SideFpsControllerKt.addOverlayDynamicColor$update(i, context, lottieAnimationView);
                }
            };
            LottieComposition lottieComposition2 = lottieAnimationView.composition;
            if (lottieComposition2 != null) {
                lottieOnCompositionLoadedListener2.onCompositionLoaded(lottieComposition2);
            }
            ((HashSet) lottieAnimationView.lottieOnCompositionLoadedListeners).add(lottieOnCompositionLoadedListener2);
        }
        inflate.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.systemui.biometrics.SideFpsController$createOverlayForDisplay$2
            @Override // android.view.View.AccessibilityDelegate
            public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                if (accessibilityEvent.getEventType() == 32) {
                    return true;
                }
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        });
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        Integer num;
        Integer num2;
        Rect rect;
        Boolean bool;
        Integer num3;
        ReadonlyStateFlow readonlyStateFlow;
        printWriter.println("requests:");
        Iterator it = this.requests.iterator();
        while (it.hasNext()) {
            printWriter.println("     " + ((SideFpsUiRequestSource) it.next()) + ".name");
        }
        printWriter.println("overlayView:");
        View view = this.overlayView;
        SensorLocationInternal sensorLocationInternal = null;
        if (view != null) {
            num = Integer.valueOf(view.getWidth());
        } else {
            num = null;
        }
        printWriter.println("     width=" + num);
        View view2 = this.overlayView;
        if (view2 != null) {
            num2 = Integer.valueOf(view2.getHeight());
        } else {
            num2 = null;
        }
        printWriter.println("     height=" + num2);
        View view3 = this.overlayView;
        if (view3 != null) {
            rect = ConvenienceExtensionsKt.getBoundsOnScreen(view3);
        } else {
            rect = null;
        }
        printWriter.println("     boundsOnScreen=" + rect);
        printWriter.println("displayStateInteractor:");
        DisplayStateInteractor displayStateInteractor = this.displayStateInteractor;
        if (displayStateInteractor != null && (readonlyStateFlow = ((DisplayStateInteractorImpl) displayStateInteractor).isInRearDisplayMode) != null) {
            bool = (Boolean) readonlyStateFlow.getValue();
        } else {
            bool = null;
        }
        printWriter.println("     isInRearDisplayMode=" + bool);
        printWriter.println("sensorProps:");
        DisplayInfo displayInfo = this.displayInfo;
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("     displayId=", displayInfo.uniqueId, printWriter);
        FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal = this.sensorProps;
        if (fingerprintSensorPropertiesInternal != null) {
            num3 = Integer.valueOf(fingerprintSensorPropertiesInternal.sensorType);
        } else {
            num3 = null;
        }
        printWriter.println("     sensorType=" + num3);
        if (fingerprintSensorPropertiesInternal != null) {
            sensorLocationInternal = fingerprintSensorPropertiesInternal.getLocation(displayInfo.uniqueId);
        }
        printWriter.println("     location=" + sensorLocationInternal);
        printWriter.println("overlayOffsets=" + this.overlayOffsets);
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("isReverseDefaultRotation="), this.isReverseDefaultRotation, printWriter);
        SideFpsController$$ExternalSyntheticOutline0.m("currentRotation=", displayInfo.rotation, printWriter);
    }

    public final void hide(final SideFpsUiRequestSource sideFpsUiRequestSource) {
        this.requests.remove(sideFpsUiRequestSource);
        ((ExecutorImpl) this.mainExecutor).execute(new Runnable() { // from class: com.android.systemui.biometrics.SideFpsController$hide$1
            @Override // java.lang.Runnable
            public final void run() {
                if (SideFpsController.this.requests.isEmpty()) {
                    String m = PathParser$$ExternalSyntheticOutline0.m("SideFpsController#hide(", sideFpsUiRequestSource.name(), ")");
                    SideFpsController sideFpsController = SideFpsController.this;
                    if (Trace.isTagEnabled(4096L)) {
                        Trace.traceBegin(4096L, m);
                        try {
                            sideFpsController.setOverlayView(null);
                            Unit unit = Unit.INSTANCE;
                            return;
                        } finally {
                            Trace.traceEnd(4096L);
                        }
                    }
                    sideFpsController.setOverlayView(null);
                }
            }
        });
    }

    public final void setOverlayView(View view) {
        View view2 = this.overlayView;
        BiometricDisplayListener biometricDisplayListener = this.orientationListener;
        WindowManager windowManager = this.windowManager;
        if (view2 != null) {
            ((LottieAnimationView) view2.findViewById(R.id.sidefps_animation)).pauseAnimation();
            windowManager.removeView(view2);
            biometricDisplayListener.displayManager.unregisterDisplayListener(biometricDisplayListener);
        }
        this.overlayView = view;
        if (view != null) {
            windowManager.addView(view, this.overlayViewParams);
            biometricDisplayListener.enable();
        }
    }

    public final void show(final SideFpsUiRequestSource sideFpsUiRequestSource, final int i) {
        if (!((Boolean) ((DisplayStateInteractorImpl) this.displayStateInteractor).isInRearDisplayMode.getValue()).booleanValue()) {
            this.requests.add(sideFpsUiRequestSource);
            ((ExecutorImpl) this.mainExecutor).execute(new Runnable() { // from class: com.android.systemui.biometrics.SideFpsController$show$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (SideFpsController.this.overlayView == null) {
                        String str = "SideFpsController#show(request=" + sideFpsUiRequestSource.name() + ", reason=" + i + ")";
                        SideFpsController sideFpsController = SideFpsController.this;
                        int i2 = i;
                        if (Trace.isTagEnabled(4096L)) {
                            Trace.traceBegin(4096L, str);
                            try {
                                sideFpsController.createOverlayForDisplay(i2);
                                Unit unit = Unit.INSTANCE;
                                return;
                            } finally {
                                Trace.traceEnd(4096L);
                            }
                        }
                        sideFpsController.createOverlayForDisplay(i2);
                    }
                }
            });
        }
    }

    public final void updateOverlayParams(Display display, Rect rect) {
        boolean z;
        int height;
        int width;
        int height2;
        int width2;
        Rect rect2;
        boolean z2 = true;
        if (display.getRotation() != 0 && display.getRotation() != 2) {
            z = false;
        } else {
            z = true;
        }
        boolean z3 = this.isReverseDefaultRotation;
        if (z3) {
            if (!z) {
                z = true;
            } else {
                z = false;
            }
        }
        WindowManager windowManager = this.windowManager;
        Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
        if (z) {
            height = bounds.width();
        } else {
            height = bounds.height();
        }
        if (z) {
            width = bounds.height();
        } else {
            width = bounds.width();
        }
        if (z) {
            height2 = rect.width();
        } else {
            height2 = rect.height();
        }
        if (z) {
            width2 = rect.height();
        } else {
            width2 = rect.width();
        }
        if (this.overlayOffsets.sensorLocationY == 0) {
            z2 = false;
        }
        if (z2) {
            int i = height - height2;
            int i2 = this.overlayOffsets.sensorLocationY;
            rect2 = new Rect(i, i2, height, width2 + i2);
        } else {
            int i3 = this.overlayOffsets.sensorLocationX;
            rect2 = new Rect(i3, 0, height2 + i3, width2);
        }
        Rect rect3 = new Rect(0, 0, height, width);
        int rotation = display.getRotation();
        if (z3) {
            rotation = (rotation + 1) % 4;
        }
        RotationUtils.rotateBounds(rect2, rect3, rotation);
        WindowManager.LayoutParams layoutParams = this.overlayViewParams;
        layoutParams.x = rect2.left;
        layoutParams.y = rect2.top;
        windowManager.updateViewLayout(this.overlayView, layoutParams);
    }

    public static /* synthetic */ void getOrientationListener$annotations() {
    }

    public static /* synthetic */ void getOrientationReasonListener$annotations() {
    }

    public static /* synthetic */ void getOverlayOffsets$annotations() {
    }

    public static /* synthetic */ void getSensorProps$annotations() {
    }
}
