package com.android.systemui.temporarydisplay.chipbar;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.internal.widget.CachingIconView;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.R;
import com.android.systemui.animation.ViewHierarchyAnimator;
import com.android.systemui.animation.ViewHierarchyAnimator$Companion$createListener$1;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.classifier.FalsingCollectorImpl;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Text;
import com.android.systemui.common.shared.model.TintedIcon;
import com.android.systemui.common.ui.binder.TextViewBinder;
import com.android.systemui.common.ui.binder.TintedIconViewBinder;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.temporarydisplay.TemporaryViewDisplayController;
import com.android.systemui.temporarydisplay.TemporaryViewDisplayController$removeViewFromWindow$1;
import com.android.systemui.temporarydisplay.TemporaryViewInfo;
import com.android.systemui.temporarydisplay.TemporaryViewLogger;
import com.android.systemui.temporarydisplay.TemporaryViewUiEvent;
import com.android.systemui.temporarydisplay.TemporaryViewUiEventLogger;
import com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator;
import com.android.systemui.temporarydisplay.chipbar.ChipbarEndItem;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.view.ViewUtil;
import com.android.systemui.util.wakelock.WakeLock;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChipbarCoordinator extends TemporaryViewDisplayController {
    public static final VibrationAttributes VIBRATION_ATTRIBUTES;
    public final ChipbarAnimator chipbarAnimator;
    public final FalsingCollector falsingCollector;
    public final FalsingManager falsingManager;
    public LoadingDetails loadingDetails;
    public final SwipeChipbarAwayGestureHandler swipeChipbarAwayGestureHandler;
    public final VibratorHelper vibratorHelper;
    public final ViewUtil viewUtil;
    public final WindowManager.LayoutParams windowLayoutParams;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LoadingDetails {
        public final ObjectAnimator animator;
        public final View loadingView;

        public LoadingDetails(View view, ObjectAnimator objectAnimator) {
            this.loadingView = view;
            this.animator = objectAnimator;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadingDetails)) {
                return false;
            }
            LoadingDetails loadingDetails = (LoadingDetails) obj;
            if (Intrinsics.areEqual(this.loadingView, loadingDetails.loadingView) && Intrinsics.areEqual(this.animator, loadingDetails.animator)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.animator.hashCode() + (this.loadingView.hashCode() * 31);
        }

        public final String toString() {
            return "LoadingDetails(loadingView=" + this.loadingView + ", animator=" + this.animator + ")";
        }
    }

    static {
        new Companion(null);
        VIBRATION_ATTRIBUTES = VibrationAttributes.createForUsage(50);
    }

    public ChipbarCoordinator(Context context, ChipbarLogger chipbarLogger, WindowManager windowManager, DelayableExecutor delayableExecutor, AccessibilityManager accessibilityManager, ConfigurationController configurationController, DumpManager dumpManager, PowerManager powerManager, ChipbarAnimator chipbarAnimator, FalsingManager falsingManager, FalsingCollector falsingCollector, SwipeChipbarAwayGestureHandler swipeChipbarAwayGestureHandler, ViewUtil viewUtil, VibratorHelper vibratorHelper, WakeLock.Builder builder, SystemClock systemClock, TemporaryViewUiEventLogger temporaryViewUiEventLogger) {
        super(context, chipbarLogger, windowManager, delayableExecutor, accessibilityManager, configurationController, dumpManager, powerManager, R.layout.chipbar, builder, systemClock, temporaryViewUiEventLogger);
        this.chipbarAnimator = chipbarAnimator;
        this.falsingManager = falsingManager;
        this.falsingCollector = falsingCollector;
        this.swipeChipbarAwayGestureHandler = swipeChipbarAwayGestureHandler;
        this.viewUtil = viewUtil;
        this.vibratorHelper = vibratorHelper;
        WindowManager.LayoutParams layoutParams = this.commonWindowLayoutParams;
        layoutParams.gravity = 49;
        this.windowLayoutParams = layoutParams;
    }

    public static void maybeGetAccessibilityFocus(ChipbarInfo chipbarInfo, ViewGroup viewGroup) {
        ChipbarEndItem chipbarEndItem;
        if (chipbarInfo != null) {
            chipbarEndItem = chipbarInfo.endItem;
        } else {
            chipbarEndItem = null;
        }
        if (chipbarEndItem instanceof ChipbarEndItem.Button) {
            ((ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner)).requestAccessibilityFocus();
        } else {
            ((ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner)).clearAccessibilityFocus();
        }
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewDisplayController
    public final void animateViewIn$frameworks__base__packages__SystemUI__android_common__SystemUI_core(final ViewGroup viewGroup) {
        boolean z;
        Runnable runnable = new Runnable() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$animateViewIn$onAnimationEnd$1
            @Override // java.lang.Runnable
            public final void run() {
                ChipbarCoordinator chipbarCoordinator = ChipbarCoordinator.this;
                ChipbarInfo chipbarInfo = (ChipbarInfo) viewGroup.getTag(R.id.tag_chipbar_info);
                ViewGroup viewGroup2 = viewGroup;
                VibrationAttributes vibrationAttributes = ChipbarCoordinator.VIBRATION_ATTRIBUTES;
                chipbarCoordinator.getClass();
                ChipbarCoordinator.maybeGetAccessibilityFocus(chipbarInfo, viewGroup2);
            }
        };
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner);
        this.chipbarAnimator.getClass();
        ViewHierarchyAnimator.Companion companion = ViewHierarchyAnimator.Companion;
        ViewHierarchyAnimator.Hotspot hotspot = ViewHierarchyAnimator.Hotspot.TOP;
        Interpolator interpolator = Interpolators.EMPHASIZED_DECELERATE;
        Interpolator interpolator2 = ViewHierarchyAnimator.DEFAULT_FADE_IN_INTERPOLATOR;
        companion.getClass();
        int visibility = viewGroup2.getVisibility();
        int left = viewGroup2.getLeft();
        int top = viewGroup2.getTop();
        int right = viewGroup2.getRight();
        int bottom = viewGroup2.getBottom();
        boolean z2 = false;
        boolean z3 = true;
        if (visibility != 8 && left != right && top != bottom) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            ViewHierarchyAnimator.Companion.addListener(viewGroup2, new ViewHierarchyAnimator$Companion$createListener$1(hotspot, false, interpolator, 500L, true, runnable), true);
            long j = 500 / 6;
            ViewHierarchyAnimator.Companion.createAndStartFadeInAnimator(viewGroup2, j, 0L, interpolator2);
            long j2 = 500 / 3;
            int childCount = viewGroup2.getChildCount();
            int i = 0;
            while (i < childCount) {
                ViewHierarchyAnimator.Companion.createAndStartFadeInAnimator(viewGroup2.getChildAt(i), j2, j, interpolator2);
                i++;
                z3 = z3;
            }
            z2 = z3;
        }
        if (!z2) {
            ((ChipbarLogger) this.logger).logAnimateInFailure();
            ChipbarAnimator.forceDisplayView((ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner));
            runnable.run();
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$animateViewOut$fullEndRunnable$1] */
    @Override // com.android.systemui.temporarydisplay.TemporaryViewDisplayController
    public final void animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ViewGroup viewGroup, String str, final TemporaryViewDisplayController$removeViewFromWindow$1 temporaryViewDisplayController$removeViewFromWindow$1) {
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner);
        viewGroup2.setAccessibilityLiveRegion(0);
        ?? r4 = new Runnable() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$animateViewOut$fullEndRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                ObjectAnimator objectAnimator;
                ChipbarCoordinator chipbarCoordinator = ChipbarCoordinator.this;
                VibrationAttributes vibrationAttributes = ChipbarCoordinator.VIBRATION_ATTRIBUTES;
                ChipbarCoordinator.LoadingDetails loadingDetails = chipbarCoordinator.loadingDetails;
                if (loadingDetails != null && (objectAnimator = loadingDetails.animator) != null) {
                    objectAnimator.cancel();
                }
                chipbarCoordinator.loadingDetails = null;
                temporaryViewDisplayController$removeViewFromWindow$1.run();
            }
        };
        this.chipbarAnimator.getClass();
        ViewHierarchyAnimator.Companion companion = ViewHierarchyAnimator.Companion;
        ViewHierarchyAnimator.Hotspot hotspot = ViewHierarchyAnimator.Hotspot.TOP;
        Interpolator interpolator = Interpolators.EMPHASIZED_ACCELERATE;
        companion.getClass();
        if (!ViewHierarchyAnimator.Companion.animateRemoval(viewGroup2, hotspot, interpolator, r4)) {
            ((ChipbarLogger) this.logger).logAnimateOutFailure();
            r4.run();
        }
        updateGestureListening();
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewDisplayController
    public final void getTouchableRegion(Rect rect, View view) {
        this.viewUtil.getClass();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        rect.set(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewDisplayController
    public final WindowManager.LayoutParams getWindowLayoutParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        return this.windowLayoutParams;
    }

    public final void updateGestureListening() {
        SwipeChipbarAwayGestureHandler swipeChipbarAwayGestureHandler = this.swipeChipbarAwayGestureHandler;
        if (swipeChipbarAwayGestureHandler == null) {
            return;
        }
        final TemporaryViewDisplayController.DisplayInfo displayInfo = (TemporaryViewDisplayController.DisplayInfo) CollectionsKt___CollectionsKt.getOrNull(0, this.activeViews);
        if (displayInfo != null && ((ChipbarInfo) displayInfo.info).allowSwipeToDismiss) {
            swipeChipbarAwayGestureHandler.viewFetcher = new Function0() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$updateGestureListening$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TemporaryViewDisplayController.DisplayInfo.this.view;
                }
            };
            Function1 function1 = new Function1() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$updateGestureListening$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ChipbarCoordinator chipbarCoordinator = ChipbarCoordinator.this;
                    VibrationAttributes vibrationAttributes = ChipbarCoordinator.VIBRATION_ATTRIBUTES;
                    TemporaryViewDisplayController.DisplayInfo displayInfo2 = (TemporaryViewDisplayController.DisplayInfo) CollectionsKt___CollectionsKt.getOrNull(0, chipbarCoordinator.activeViews);
                    TemporaryViewLogger temporaryViewLogger = chipbarCoordinator.logger;
                    if (displayInfo2 == null) {
                        ChipbarLogger chipbarLogger = (ChipbarLogger) temporaryViewLogger;
                        chipbarLogger.getClass();
                        LogLevel logLevel = LogLevel.WARNING;
                        ChipbarLogger$logSwipeGestureError$2 chipbarLogger$logSwipeGestureError$2 = new Function1() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarLogger$logSwipeGestureError$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                LogMessage logMessage = (LogMessage) obj2;
                                return FontProvider$$ExternalSyntheticOutline0.m("Chipbar swipe gesture detected for incorrect state. id=", logMessage.getStr1(), " error=", logMessage.getStr2());
                            }
                        };
                        LogBuffer logBuffer = chipbarLogger.buffer;
                        LogMessage obtain = logBuffer.obtain(chipbarLogger.tag, logLevel, chipbarLogger$logSwipeGestureError$2, null);
                        CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, null, "No info is being displayed", logBuffer, obtain);
                    } else {
                        ChipbarInfo chipbarInfo = (ChipbarInfo) displayInfo2.info;
                        if (!chipbarInfo.allowSwipeToDismiss) {
                            ChipbarLogger chipbarLogger2 = (ChipbarLogger) temporaryViewLogger;
                            chipbarLogger2.getClass();
                            LogLevel logLevel2 = LogLevel.WARNING;
                            ChipbarLogger$logSwipeGestureError$2 chipbarLogger$logSwipeGestureError$22 = new Function1() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarLogger$logSwipeGestureError$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    LogMessage logMessage = (LogMessage) obj2;
                                    return FontProvider$$ExternalSyntheticOutline0.m("Chipbar swipe gesture detected for incorrect state. id=", logMessage.getStr1(), " error=", logMessage.getStr2());
                                }
                            };
                            LogBuffer logBuffer2 = chipbarLogger2.buffer;
                            LogMessage obtain2 = logBuffer2.obtain(chipbarLogger2.tag, logLevel2, chipbarLogger$logSwipeGestureError$22, null);
                            CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain2, chipbarInfo.id, "This view prohibits swipe-to-dismiss", logBuffer2, obtain2);
                        } else {
                            chipbarCoordinator.tempViewUiEventLogger.logger.log(TemporaryViewUiEvent.TEMPORARY_VIEW_MANUALLY_DISMISSED, chipbarInfo.instanceId);
                            chipbarCoordinator.removeView(((ChipbarInfo) displayInfo2.info).id, "SWIPE_UP_GESTURE_DETECTED");
                            chipbarCoordinator.updateGestureListening();
                        }
                    }
                    return Unit.INSTANCE;
                }
            };
            Map map = swipeChipbarAwayGestureHandler.callbacks;
            boolean isEmpty = map.isEmpty();
            map.put("ChipbarCoordinator", function1);
            if (isEmpty) {
                swipeChipbarAwayGestureHandler.startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
                return;
            }
            return;
        }
        swipeChipbarAwayGestureHandler.viewFetcher = new Function0() { // from class: com.android.systemui.temporarydisplay.chipbar.SwipeChipbarAwayGestureHandler$resetViewFetcher$1
            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ Object invoke() {
                return null;
            }
        };
        swipeChipbarAwayGestureHandler.removeOnGestureDetectedCallback("ChipbarCoordinator");
    }

    @Override // com.android.systemui.temporarydisplay.TemporaryViewDisplayController
    public final void updateView(TemporaryViewInfo temporaryViewInfo, ViewGroup viewGroup) {
        String m;
        int i;
        ObjectAnimator objectAnimator;
        int i2;
        int i3;
        String str;
        String string;
        ObjectAnimator objectAnimator2;
        final ChipbarInfo chipbarInfo = (ChipbarInfo) temporaryViewInfo;
        updateGestureListening();
        ChipbarLogger chipbarLogger = (ChipbarLogger) this.logger;
        Text.Companion companion = Text.Companion;
        Text text = chipbarInfo.text;
        companion.getClass();
        Context context = this.context;
        String loadText = Text.Companion.loadText(text, context);
        ChipbarEndItem chipbarEndItem = chipbarInfo.endItem;
        if (chipbarEndItem == null) {
            m = "null";
        } else if (chipbarEndItem instanceof ChipbarEndItem.Loading) {
            m = "loading";
        } else if (chipbarEndItem instanceof ChipbarEndItem.Error) {
            m = "error";
        } else if (chipbarEndItem instanceof ChipbarEndItem.Button) {
            m = PathParser$$ExternalSyntheticOutline0.m("button(", Text.Companion.loadText(((ChipbarEndItem.Button) chipbarEndItem).text, context), ")");
        } else {
            throw new NoWhenBranchMatchedException();
        }
        chipbarLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        ChipbarLogger$logViewUpdate$2 chipbarLogger$logViewUpdate$2 = new Function1() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarLogger$logViewUpdate$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                String str3 = logMessage.getStr3();
                StringBuilder m2 = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Chipbar updated. window=", str1, " text=", str2, " endItem=");
                m2.append(str3);
                return m2.toString();
            }
        };
        LogBuffer logBuffer = chipbarLogger.buffer;
        LogMessage obtain = logBuffer.obtain(chipbarLogger.tag, logLevel, chipbarLogger$logViewUpdate$2, null);
        obtain.setStr1(chipbarInfo.windowTitle);
        obtain.setStr2(loadText);
        obtain.setStr3(m);
        logBuffer.commit(obtain);
        viewGroup.setTag(R.id.tag_chipbar_info, chipbarInfo);
        ((ChipbarRootView) viewGroup.requireViewById(R.id.chipbar_root_view)).touchHandler = new Gefingerpoken() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$updateView$1
            @Override // com.android.systemui.Gefingerpoken
            public final boolean onTouchEvent(MotionEvent motionEvent) {
                ((FalsingCollectorImpl) ChipbarCoordinator.this.falsingCollector).onTouchEvent(motionEvent);
                return false;
            }
        };
        CachingIconView requireViewById = viewGroup.requireViewById(R.id.start_icon);
        TintedIconViewBinder.INSTANCE.getClass();
        TintedIcon tintedIcon = chipbarInfo.startIcon;
        TintedIconViewBinder.bind(tintedIcon, requireViewById);
        TextView textView = (TextView) viewGroup.requireViewById(R.id.text);
        TextViewBinder.INSTANCE.getClass();
        TextViewBinder.bind(textView, text);
        textView.requestLayout();
        boolean areEqual = Intrinsics.areEqual(chipbarEndItem, ChipbarEndItem.Loading.INSTANCE);
        ImageView imageView = (ImageView) viewGroup.requireViewById(R.id.loading);
        if (areEqual) {
            i = 0;
        } else {
            i = 8;
        }
        imageView.setVisibility(i);
        if (areEqual) {
            LoadingDetails loadingDetails = this.loadingDetails;
            if (loadingDetails == null || !Intrinsics.areEqual(loadingDetails.loadingView, imageView)) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.ROTATION, 0.0f, 360.0f);
                ofFloat.setDuration(1000L);
                ofFloat.setRepeatCount(-1);
                ofFloat.setInterpolator(Interpolators.LINEAR);
                LoadingDetails loadingDetails2 = new LoadingDetails(imageView, ofFloat);
                loadingDetails2.animator.start();
                LoadingDetails loadingDetails3 = this.loadingDetails;
                if (loadingDetails3 != null && (objectAnimator2 = loadingDetails3.animator) != null) {
                    objectAnimator2.cancel();
                }
                this.loadingDetails = loadingDetails2;
            }
        } else {
            LoadingDetails loadingDetails4 = this.loadingDetails;
            if (loadingDetails4 != null && (objectAnimator = loadingDetails4.animator) != null) {
                objectAnimator.cancel();
            }
            this.loadingDetails = null;
        }
        View requireViewById2 = viewGroup.requireViewById(R.id.error);
        if (Intrinsics.areEqual(chipbarEndItem, ChipbarEndItem.Error.INSTANCE)) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        requireViewById2.setVisibility(i2);
        TextView textView2 = (TextView) viewGroup.requireViewById(R.id.end_button);
        boolean z = chipbarEndItem instanceof ChipbarEndItem.Button;
        if (z) {
            TextViewBinder.bind(textView2, ((ChipbarEndItem.Button) chipbarEndItem).text);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.temporarydisplay.chipbar.ChipbarCoordinator$updateView$onClickListener$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (ChipbarCoordinator.this.falsingManager.isFalseTap(1)) {
                        return;
                    }
                    ((ChipbarEndItem.Button) chipbarInfo.endItem).onClickListener.onClick(view);
                }
            });
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner);
        if (z) {
            i3 = R.dimen.chipbar_outer_padding_half;
        } else {
            i3 = R.dimen.chipbar_outer_padding;
        }
        viewGroup2.setPaddingRelative(viewGroup2.getPaddingStart(), viewGroup2.getPaddingTop(), viewGroup2.getContext().getResources().getDimensionPixelSize(i3), viewGroup2.getPaddingBottom());
        ContentDescription contentDescription = tintedIcon.icon.getContentDescription();
        String str2 = "";
        if (contentDescription == null) {
            str = "";
        } else {
            ContentDescription.Companion.getClass();
            if (contentDescription instanceof ContentDescription.Loaded) {
                string = ((ContentDescription.Loaded) contentDescription).description;
            } else if (contentDescription instanceof ContentDescription.Resource) {
                string = context.getString(((ContentDescription.Resource) contentDescription).res);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            str = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(string, " ");
        }
        if (chipbarEndItem instanceof ChipbarEndItem.Loading) {
            str2 = PathParser$$ExternalSyntheticOutline0.m(". ", context.getResources().getString(R.string.media_transfer_loading), ".");
        }
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.requireViewById(R.id.chipbar_inner);
        viewGroup3.setContentDescription(str + Text.Companion.loadText(text, context) + str2);
        viewGroup3.setAccessibilityLiveRegion(2);
        maybeGetAccessibilityFocus(chipbarInfo, viewGroup);
        VibrationEffect vibrationEffect = chipbarInfo.vibrationEffect;
        if (vibrationEffect != null) {
            this.vibratorHelper.vibrate(Process.myUid(), context.getApplicationContext().getPackageName(), vibrationEffect, chipbarInfo.windowTitle, VIBRATION_ATTRIBUTES);
        }
    }

    public static /* synthetic */ void getLoadingDetails$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }
}
