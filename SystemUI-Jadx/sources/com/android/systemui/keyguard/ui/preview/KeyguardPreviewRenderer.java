package com.android.systemui.keyguard.ui.preview;

import android.app.WallpaperColors;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.android.keyguard.ClockEventController;
import com.android.systemui.biometrics.domain.interactor.UdfpsOverlayInteractor;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewClockViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel;
import com.android.systemui.shared.clocks.ClockRegistry;
import com.android.systemui.statusbar.lockscreen.LockscreenSmartspaceController;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardPreviewRenderer {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final KeyguardBottomAreaViewModel bottomAreaViewModel;
    public final BroadcastDispatcher broadcastDispatcher;
    public final ClockEventController clockController;
    public final ClockRegistry clockRegistry;
    public final KeyguardPreviewClockViewModel clockViewModel;
    public final Context context;
    public final Set disposables;
    public final int height;
    public SurfaceControlViewHost host;
    public final IBinder hostToken;
    public boolean isDestroyed;
    public FrameLayout largeClockHostView;
    public final LockscreenSmartspaceController lockscreenSmartspaceController;
    public final Handler mainHandler;
    public final boolean shouldHideClock;
    public final boolean shouldHighlightSelectedAffordance;
    public FrameLayout smallClockHostView;
    public View smartSpaceView;
    public final KeyguardPreviewSmartspaceViewModel smartspaceViewModel;
    public final UdfpsOverlayInteractor udfpsOverlayInteractor;
    public final WallpaperColors wallpaperColors;
    public final int width;
    public final WindowManager windowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.keyguard.ui.preview.KeyguardPreviewRenderer$1", f = "KeyguardPreviewRenderer.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.keyguard.ui.preview.KeyguardPreviewRenderer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Bundle $bundle;
        final /* synthetic */ DisplayManager $displayManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DisplayManager displayManager, Bundle bundle, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$displayManager = displayManager;
            this.$bundle = bundle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$displayManager, this.$bundle, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                KeyguardPreviewRenderer.this.host = new SurfaceControlViewHost(KeyguardPreviewRenderer.this.context, this.$displayManager.getDisplay(this.$bundle.getInt("display_id")), KeyguardPreviewRenderer.this.hostToken, "KeyguardPreviewRenderer");
                final KeyguardPreviewRenderer keyguardPreviewRenderer = KeyguardPreviewRenderer.this;
                return Boolean.valueOf(keyguardPreviewRenderer.disposables.add(new DisposableHandle() { // from class: com.android.systemui.keyguard.ui.preview.KeyguardPreviewRenderer.1.1
                    @Override // kotlinx.coroutines.DisposableHandle
                    public final void dispose() {
                        KeyguardPreviewRenderer.this.host.release();
                    }
                }));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

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

    public KeyguardPreviewRenderer(Context context, CoroutineDispatcher coroutineDispatcher, Handler handler, KeyguardPreviewClockViewModel keyguardPreviewClockViewModel, KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, DisplayManager displayManager, WindowManager windowManager, ClockEventController clockEventController, ClockRegistry clockRegistry, BroadcastDispatcher broadcastDispatcher, LockscreenSmartspaceController lockscreenSmartspaceController, UdfpsOverlayInteractor udfpsOverlayInteractor, Bundle bundle) {
        this.context = context;
        this.mainHandler = handler;
        this.clockViewModel = keyguardPreviewClockViewModel;
        this.smartspaceViewModel = keyguardPreviewSmartspaceViewModel;
        this.bottomAreaViewModel = keyguardBottomAreaViewModel;
        this.windowManager = windowManager;
        this.clockController = clockEventController;
        this.clockRegistry = clockRegistry;
        this.broadcastDispatcher = broadcastDispatcher;
        this.lockscreenSmartspaceController = lockscreenSmartspaceController;
        this.udfpsOverlayInteractor = udfpsOverlayInteractor;
        this.hostToken = bundle.getBinder("host_token");
        this.width = bundle.getInt("width");
        this.height = bundle.getInt("height");
        boolean z = bundle.getBoolean("highlight_quick_affordances", false);
        this.shouldHighlightSelectedAffordance = z;
        this.shouldHideClock = bundle.getBoolean("hide_clock", false);
        this.wallpaperColors = (WallpaperColors) bundle.getParcelable("wallpaper_colors");
        this.disposables = new LinkedHashSet();
        String string = bundle.getString("initially_selected_slot_id");
        keyguardBottomAreaViewModel.previewMode.setValue(new KeyguardBottomAreaViewModel.PreviewMode(true, z));
        keyguardBottomAreaViewModel.selectedPreviewSlotId.setValue(string == null ? "bottom_start" : string);
        BuildersKt.runBlocking(coroutineDispatcher, new AnonymousClass1(displayManager, bundle, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        if ((r0.getColorHints() & 1) == 0) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onClockChanged() {
        /*
            r10 = this;
            com.android.systemui.shared.clocks.ClockRegistry r0 = r10.clockRegistry
            com.android.systemui.plugins.ClockController r1 = r0.createCurrentClock()
            com.android.keyguard.ClockEventController r2 = r10.clockController
            r2.setClock(r1)
            com.android.systemui.plugins.ClockSettings r0 = r0.settings
            r2 = 0
            if (r0 == 0) goto L15
            java.lang.Integer r0 = r0.getSeedColor()
            goto L16
        L15:
            r0 = r2
        L16:
            if (r0 != 0) goto L6b
            android.app.WallpaperColors r0 = r10.wallpaperColors
            if (r0 == 0) goto L28
            com.android.systemui.monet.ColorScheme r9 = new com.android.systemui.monet.ColorScheme
            r5 = 0
            r6 = 0
            r7 = 4
            r8 = 0
            r3 = r9
            r4 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            goto L29
        L28:
            r9 = r2
        L29:
            if (r9 == 0) goto L38
            com.android.systemui.monet.TonalPalette r3 = r9.accent1
            if (r3 == 0) goto L38
            int r3 = r3.getS100()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            goto L39
        L38:
            r3 = r2
        L39:
            if (r9 == 0) goto L53
            com.android.systemui.monet.TonalPalette r4 = r9.accent2
            if (r4 == 0) goto L53
            java.util.List r4 = r4.allShades
            r5 = 7
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            java.lang.Object r4 = r4.get(r5)
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            goto L54
        L53:
            r4 = r2
        L54:
            if (r0 == 0) goto L5f
            int r0 = r0.getColorHints()
            r5 = 1
            r0 = r0 & r5
            if (r0 != 0) goto L5f
            goto L60
        L5f:
            r5 = 0
        L60:
            com.android.systemui.plugins.ClockEvents r0 = r1.getEvents()
            if (r5 == 0) goto L67
            goto L68
        L67:
            r3 = r4
        L68:
            r0.onSeedColorChanged(r3)
        L6b:
            com.android.systemui.plugins.ClockFaceController r0 = r1.getLargeClock()
            com.android.systemui.plugins.ClockFaceEvents r0 = r0.getEvents()
            android.widget.FrameLayout r3 = r10.largeClockHostView
            if (r3 != 0) goto L78
            r3 = r2
        L78:
            android.graphics.Rect r3 = com.android.keyguard.KeyguardClockSwitch.getLargeClockRegion(r3)
            r0.onTargetRegionChanged(r3)
            r0 = 1050253722(0x3e99999a, float:0.3)
            boolean r3 = r10.shouldHighlightSelectedAffordance
            if (r3 == 0) goto L91
            com.android.systemui.plugins.ClockFaceController r4 = r1.getLargeClock()
            android.view.View r4 = r4.getView()
            r4.setAlpha(r0)
        L91:
            android.widget.FrameLayout r4 = r10.largeClockHostView
            if (r4 != 0) goto L96
            r4 = r2
        L96:
            r4.removeAllViews()
            android.widget.FrameLayout r4 = r10.largeClockHostView
            if (r4 != 0) goto L9e
            r4 = r2
        L9e:
            com.android.systemui.plugins.ClockFaceController r5 = r1.getLargeClock()
            android.view.View r5 = r5.getView()
            r4.addView(r5)
            com.android.systemui.plugins.ClockFaceController r4 = r1.getSmallClock()
            com.android.systemui.plugins.ClockFaceEvents r4 = r4.getEvents()
            android.widget.FrameLayout r5 = r10.smallClockHostView
            if (r5 != 0) goto Lb6
            r5 = r2
        Lb6:
            android.graphics.Rect r5 = com.android.keyguard.KeyguardClockSwitch.getSmallClockRegion(r5)
            r4.onTargetRegionChanged(r5)
            if (r3 == 0) goto Lca
            com.android.systemui.plugins.ClockFaceController r3 = r1.getSmallClock()
            android.view.View r3 = r3.getView()
            r3.setAlpha(r0)
        Lca:
            android.widget.FrameLayout r0 = r10.smallClockHostView
            if (r0 != 0) goto Lcf
            r0 = r2
        Lcf:
            r0.removeAllViews()
            android.widget.FrameLayout r10 = r10.smallClockHostView
            if (r10 != 0) goto Ld7
            goto Ld8
        Ld7:
            r2 = r10
        Ld8:
            com.android.systemui.plugins.ClockFaceController r10 = r1.getSmallClock()
            android.view.View r10 = r10.getView()
            r2.addView(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.preview.KeyguardPreviewRenderer.onClockChanged():void");
    }
}
