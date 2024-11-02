package com.android.keyguard;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Trace;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.slice.Slice;
import androidx.slice.SliceConvert;
import androidx.slice.SliceViewManagerWrapper;
import com.android.app.animation.Interpolators;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.keyguard.KeyguardStatusViewController;
import com.android.keyguard.logging.KeyguardLogger;
import com.android.systemui.R;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.facewidget.plugin.FaceWidgetContainerWrapper;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardSliceProvider;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.plugins.ClockController;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;
import com.android.systemui.shade.NotificationsQuickSettingsContainer;
import com.android.systemui.statusbar.lockscreen.LockscreenSmartspaceController;
import com.android.systemui.statusbar.notification.AnimatableProperty;
import com.android.systemui.statusbar.notification.PropertyAnimator;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.DcmMascotViewContainer;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.ViewController;
import dagger.Lazy;
import java.util.Iterator;
import java.util.List;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardStatusViewController extends ViewController {
    public static final AnimationProperties CLOCK_ANIMATION_PROPERTIES;
    public final Rect mClipBounds;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass2 mConfigurationListener;
    public KeyguardUpdateMonitorCallback mInfoCallback;
    public final InteractionJankMonitor mInteractionJankMonitor;
    public Supplier mIsDLSViewEnabledSupplier;
    public final KeyguardClockSwitchController mKeyguardClockSwitchController;
    public final KeyguardSliceViewController mKeyguardSliceViewController;
    public final AnonymousClass1 mKeyguardStatusAlignmentTransitionListener;
    public FaceWidgetContainerWrapper mKeyguardStatusBase;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardVisibilityHelper mKeyguardVisibilityHelper;
    public final DcmMascotViewContainer mMascotViewContainer;
    public Lazy mPluginAODManagerLazy;
    public Boolean mStatusViewCentered;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class SplitShadeTransitionAdapter extends Transition {
        public static final String[] TRANSITION_PROPERTIES = {"splitShadeTransitionAdapter:boundsLeft", "splitShadeTransitionAdapter:boundsRight", "splitShadeTransitionAdapter:xInWindow"};
        public final KeyguardClockSwitchController mController;

        public SplitShadeTransitionAdapter(KeyguardClockSwitchController keyguardClockSwitchController) {
            this.mController = keyguardClockSwitchController;
        }

        public static void captureValues(TransitionValues transitionValues) {
            transitionValues.values.put("splitShadeTransitionAdapter:boundsLeft", Integer.valueOf(transitionValues.view.getLeft()));
            transitionValues.values.put("splitShadeTransitionAdapter:boundsRight", Integer.valueOf(transitionValues.view.getRight()));
            int[] iArr = new int[2];
            transitionValues.view.getLocationInWindow(iArr);
            transitionValues.values.put("splitShadeTransitionAdapter:xInWindow", Integer.valueOf(iArr[0]));
        }

        @Override // android.transition.Transition
        public final void captureEndValues(TransitionValues transitionValues) {
            captureValues(transitionValues);
        }

        @Override // android.transition.Transition
        public final void captureStartValues(TransitionValues transitionValues) {
            captureValues(transitionValues);
        }

        @Override // android.transition.Transition
        public final Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            final int i;
            if (transitionValues != null && transitionValues2 != null) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                final int intValue = ((Integer) transitionValues.values.get("splitShadeTransitionAdapter:boundsLeft")).intValue();
                if (((Integer) transitionValues2.values.get("splitShadeTransitionAdapter:xInWindow")).intValue() - ((Integer) transitionValues.values.get("splitShadeTransitionAdapter:xInWindow")).intValue() > 0) {
                    i = 1;
                } else {
                    i = -1;
                }
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.keyguard.KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        KeyguardStatusViewController.SplitShadeTransitionAdapter splitShadeTransitionAdapter = KeyguardStatusViewController.SplitShadeTransitionAdapter.this;
                        int i2 = intValue;
                        int i3 = i;
                        ClockController clockController = splitShadeTransitionAdapter.mController.mClockEventController.clock;
                        if (clockController != null) {
                            clockController.getLargeClock().getAnimations().onPositionUpdated(i2, i3, valueAnimator.getAnimatedFraction());
                        }
                    }
                });
                return ofFloat;
            }
            return null;
        }

        @Override // android.transition.Transition
        public final String[] getTransitionProperties() {
            return TRANSITION_PROPERTIES;
        }
    }

    static {
        AnimationProperties animationProperties = new AnimationProperties();
        animationProperties.duration = 360L;
        CLOCK_ANIMATION_PROPERTIES = animationProperties;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.keyguard.KeyguardStatusViewController$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.keyguard.KeyguardStatusViewController$2] */
    public KeyguardStatusViewController(DcmMascotViewContainer dcmMascotViewContainer, KeyguardStatusView keyguardStatusView, KeyguardSliceViewController keyguardSliceViewController, KeyguardClockSwitchController keyguardClockSwitchController, KeyguardStateController keyguardStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, ConfigurationController configurationController, DozeParameters dozeParameters, ScreenOffAnimationController screenOffAnimationController, KeyguardLogger keyguardLogger, FeatureFlags featureFlags, InteractionJankMonitor interactionJankMonitor) {
        super(keyguardStatusView);
        this.mClipBounds = new Rect();
        this.mStatusViewCentered = Boolean.TRUE;
        this.mKeyguardStatusAlignmentTransitionListener = new TransitionListenerAdapter() { // from class: com.android.keyguard.KeyguardStatusViewController.1
            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public final void onTransitionCancel(Transition transition) {
                KeyguardStatusViewController.this.mInteractionJankMonitor.cancel(70);
            }

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public final void onTransitionEnd(Transition transition) {
                KeyguardStatusViewController.this.mInteractionJankMonitor.end(70);
            }
        };
        this.mIsDLSViewEnabledSupplier = null;
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardStatusViewController.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                KeyguardClockSwitchController keyguardClockSwitchController2 = KeyguardStatusViewController.this.mKeyguardClockSwitchController;
                ((KeyguardClockSwitch) keyguardClockSwitchController2.mView).onConfigChanged();
                ((KeyguardClockSwitch) keyguardClockSwitchController2.mView).getResources().getDimensionPixelSize(R.dimen.keyguard_clock_top_margin);
                ((KeyguardClockSwitch) keyguardClockSwitchController2.mView).getResources().getDimensionPixelSize(R.dimen.keyguard_large_clock_top_margin);
                keyguardClockSwitchController2.mKeyguardDateWeatherViewInvisibility = ((KeyguardClockSwitch) keyguardClockSwitchController2.mView).getResources().getInteger(R.integer.keyguard_date_weather_view_invisibility);
                ((KeyguardClockSwitch) keyguardClockSwitchController2.mView).updateClockTargetRegions();
                keyguardClockSwitchController2.setDateWeatherVisibility();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDensityOrFontScaleChanged() {
                PluginKeyguardStatusView pluginKeyguardStatusView;
                FaceWidgetContainerWrapper faceWidgetContainerWrapper = KeyguardStatusViewController.this.mKeyguardStatusBase;
                if (faceWidgetContainerWrapper != null && (pluginKeyguardStatusView = faceWidgetContainerWrapper.mPluginKeyguardStatusView) != null) {
                    pluginKeyguardStatusView.onDensityOrFontScaleChanged();
                }
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onLocaleListChanged() {
                AnimationProperties animationProperties = KeyguardStatusViewController.CLOCK_ANIMATION_PROPERTIES;
                KeyguardStatusViewController keyguardStatusViewController = KeyguardStatusViewController.this;
                keyguardStatusViewController.mKeyguardClockSwitchController.refresh();
                KeyguardClockSwitchController keyguardClockSwitchController2 = keyguardStatusViewController.mKeyguardClockSwitchController;
                LockscreenSmartspaceController lockscreenSmartspaceController = keyguardClockSwitchController2.mSmartspaceController;
                if (lockscreenSmartspaceController.isEnabled()) {
                    if (lockscreenSmartspaceController.isDateWeatherDecoupled()) {
                        keyguardClockSwitchController2.mDateWeatherView.removeView(keyguardClockSwitchController2.mWeatherView);
                        int indexOfChild = keyguardClockSwitchController2.mStatusArea.indexOfChild(keyguardClockSwitchController2.mDateWeatherView);
                        if (indexOfChild >= 0) {
                            keyguardClockSwitchController2.mStatusArea.removeView(keyguardClockSwitchController2.mDateWeatherView);
                            keyguardClockSwitchController2.addDateWeatherView(indexOfChild);
                        }
                        keyguardClockSwitchController2.setDateWeatherVisibility();
                        keyguardClockSwitchController2.setWeatherVisibility();
                    }
                    int indexOfChild2 = keyguardClockSwitchController2.mStatusArea.indexOfChild(keyguardClockSwitchController2.mSmartspaceView);
                    if (indexOfChild2 >= 0) {
                        keyguardClockSwitchController2.mStatusArea.removeView(keyguardClockSwitchController2.mSmartspaceView);
                        keyguardClockSwitchController2.addSmartspaceView(indexOfChild2);
                    }
                }
            }
        };
        this.mInfoCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardStatusViewController.3
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z) {
                if (z) {
                    AnimationProperties animationProperties = KeyguardStatusViewController.CLOCK_ANIMATION_PROPERTIES;
                    KeyguardStatusViewController.this.mKeyguardClockSwitchController.refresh();
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTimeChanged() {
                AnimationProperties animationProperties = KeyguardStatusViewController.CLOCK_ANIMATION_PROPERTIES;
                KeyguardStatusViewController.this.mKeyguardClockSwitchController.refresh();
            }
        };
        this.mKeyguardSliceViewController = keyguardSliceViewController;
        this.mKeyguardClockSwitchController = keyguardClockSwitchController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mConfigurationController = configurationController;
        this.mKeyguardVisibilityHelper = new KeyguardVisibilityHelper(this.mView, keyguardStateController, dozeParameters, screenOffAnimationController, true, keyguardLogger.buffer);
        this.mInteractionJankMonitor = interactionJankMonitor;
        this.mMascotViewContainer = dcmMascotViewContainer;
    }

    public final void dozeTimeTick() {
        this.mKeyguardClockSwitchController.refresh();
        KeyguardSliceViewController keyguardSliceViewController = this.mKeyguardSliceViewController;
        keyguardSliceViewController.getClass();
        Trace.beginSection("KeyguardSliceViewController#refresh");
        Slice slice = null;
        if ("content://com.android.systemui.keyguard/main".equals(keyguardSliceViewController.mKeyguardSliceUri.toString())) {
            KeyguardSliceProvider keyguardSliceProvider = KeyguardSliceProvider.sInstance;
            if (keyguardSliceProvider != null) {
                if (!keyguardSliceProvider.getPinnedSlices().contains(keyguardSliceViewController.mKeyguardSliceUri)) {
                    new SliceViewManagerWrapper(keyguardSliceViewController.getContext()).pinSlice(keyguardSliceViewController.mKeyguardSliceUri);
                }
                slice = keyguardSliceProvider.onBindSlice();
            } else {
                Log.w("KeyguardSliceViewCtrl", "Keyguard slice not bound yet?");
            }
        } else {
            SliceViewManagerWrapper sliceViewManagerWrapper = new SliceViewManagerWrapper(((KeyguardSliceView) keyguardSliceViewController.mView).getContext());
            Uri uri = keyguardSliceViewController.mKeyguardSliceUri;
            if (!sliceViewManagerWrapper.isAuthoritySuspended(uri.getAuthority())) {
                slice = SliceConvert.wrap(sliceViewManagerWrapper.mManager.bindSlice(uri, sliceViewManagerWrapper.mSpecs), sliceViewManagerWrapper.mContext);
            }
        }
        keyguardSliceViewController.mObserver.onChanged(slice);
        Trace.endSection();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        this.mKeyguardClockSwitchController.init();
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View view;
        FaceWidgetContainerWrapper faceWidgetContainerWrapper = this.mKeyguardStatusBase;
        if (faceWidgetContainerWrapper == null || (view = faceWidgetContainerWrapper.mFaceWidgetContainer) == null || !(view instanceof ViewGroup)) {
            return false;
        }
        return ((ViewGroup) view).onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.mKeyguardUpdateMonitor.registerCallback(this.mInfoCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mKeyguardUpdateMonitor.removeCallback(this.mInfoCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.android.systemui.facewidget.plugin.FaceWidgetContainerWrapper$$ExternalSyntheticLambda0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setKeyguardStatusViewVisibility(int r17, int r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardStatusViewController.setKeyguardStatusViewVisibility(int, int, boolean, boolean):void");
    }

    public void setProperty(AnimatableProperty animatableProperty, float f, boolean z) {
        PropertyAnimator.setProperty((KeyguardStatusView) this.mView, animatableProperty, f, CLOCK_ANIMATION_PROPERTIES, z);
    }

    public final void setSplitShadeEnabled(boolean z) {
        LockscreenSmartspaceController lockscreenSmartspaceController = this.mKeyguardClockSwitchController.mSmartspaceController;
        lockscreenSmartspaceController.mSplitShadeEnabled = z;
        Iterator it = lockscreenSmartspaceController.smartspaceViews.iterator();
        while (it.hasNext()) {
            ((BcSmartspaceDataPlugin.SmartspaceView) it.next()).setSplitShadeEnabled(z);
        }
    }

    public final void updateAlignment(NotificationsQuickSettingsContainer notificationsQuickSettingsContainer, boolean z, boolean z2, boolean z3) {
        boolean z4;
        int i;
        boolean z5 = true;
        if (z && z2) {
            z4 = true;
        } else {
            z4 = false;
        }
        KeyguardClockSwitchController keyguardClockSwitchController = this.mKeyguardClockSwitchController;
        KeyguardClockSwitch keyguardClockSwitch = (KeyguardClockSwitch) keyguardClockSwitchController.mView;
        if (keyguardClockSwitch.mSplitShadeCentered != z4) {
            keyguardClockSwitch.mSplitShadeCentered = z4;
            keyguardClockSwitch.updateStatusArea(true);
        }
        if (this.mStatusViewCentered.booleanValue() == z2) {
            return;
        }
        this.mStatusViewCentered = Boolean.valueOf(z2);
        if (notificationsQuickSettingsContainer == null) {
            return;
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(notificationsQuickSettingsContainer);
        if (z2) {
            i = 0;
        } else {
            i = R.id.qs_edge_guideline;
        }
        constraintSet.connect(R.id.keyguard_status_view, 7, i, 7);
        if (!z3) {
            constraintSet.applyTo(notificationsQuickSettingsContainer);
            return;
        }
        this.mInteractionJankMonitor.begin(this.mView, 70);
        ChangeBounds changeBounds = new ChangeBounds();
        if (z) {
            changeBounds.excludeTarget(R.id.status_view_media_container, true);
        }
        changeBounds.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        changeBounds.setDuration(360L);
        ClockController clockController = keyguardClockSwitchController.mClockEventController.clock;
        if (clockController == null || !clockController.getLargeClock().getConfig().getHasCustomPositionUpdatedAnimation()) {
            z5 = false;
        }
        AnonymousClass1 anonymousClass1 = this.mKeyguardStatusAlignmentTransitionListener;
        if (z5) {
            FrameLayout frameLayout = (FrameLayout) ((KeyguardStatusView) this.mView).findViewById(R.id.lockscreen_clock_view_large);
            if (frameLayout != null && frameLayout.getChildCount() != 0) {
                View childAt = frameLayout.getChildAt(0);
                TransitionSet transitionSet = new TransitionSet();
                transitionSet.addTransition(changeBounds);
                SplitShadeTransitionAdapter splitShadeTransitionAdapter = new SplitShadeTransitionAdapter(keyguardClockSwitchController);
                splitShadeTransitionAdapter.setInterpolator(Interpolators.LINEAR);
                splitShadeTransitionAdapter.setDuration(1000L);
                splitShadeTransitionAdapter.addTarget(childAt);
                transitionSet.addTransition(splitShadeTransitionAdapter);
                transitionSet.addListener((Transition.TransitionListener) anonymousClass1);
                TransitionManager.beginDelayedTransition(notificationsQuickSettingsContainer, transitionSet);
            } else {
                changeBounds.addListener(anonymousClass1);
                TransitionManager.beginDelayedTransition(notificationsQuickSettingsContainer, changeBounds);
            }
        } else {
            changeBounds.addListener(anonymousClass1);
            TransitionManager.beginDelayedTransition(notificationsQuickSettingsContainer, changeBounds);
        }
        constraintSet.applyTo(notificationsQuickSettingsContainer);
    }

    public final void updatePosition(int i, int i2, boolean z, List list) {
        List list2;
        float f = i2;
        setProperty(AnimatableProperty.Y, f, z);
        FaceWidgetContainerWrapper faceWidgetContainerWrapper = this.mKeyguardStatusBase;
        if (faceWidgetContainerWrapper == null) {
            list2 = null;
        } else {
            list2 = faceWidgetContainerWrapper.mContentsContainerList;
        }
        boolean z2 = true;
        if (list2 != null && list2.size() > 1 && list != null && list2.size() == list.size()) {
            boolean z3 = false;
            for (int i3 = 0; i3 < list2.size(); i3++) {
                View view = (View) list2.get(i3);
                Point point = (Point) list.get(i3);
                if (view != null && (view.getX() != point.x || view.getY() != point.y)) {
                    view.setX(point.x);
                    view.setY(point.y);
                    z3 = true;
                }
            }
            z2 = z3;
        } else {
            FaceWidgetContainerWrapper faceWidgetContainerWrapper2 = this.mKeyguardStatusBase;
            if (faceWidgetContainerWrapper2 != null) {
                View view2 = faceWidgetContainerWrapper2.mFaceWidgetContainer;
                if (view2 == null) {
                    view2 = new View(faceWidgetContainerWrapper2.mContext);
                }
                float f2 = i;
                if (view2.getX() != f2 || view2.getY() != f) {
                    view2.setX(f2);
                    view2.setY(f);
                }
            }
            z2 = false;
        }
        if (z2) {
            PluginAODManager pluginAODManager = (PluginAODManager) this.mPluginAODManagerLazy.get();
            if (pluginAODManager.mAODPlugin != null) {
                Log.d("PluginAODManager", "onFaceWidgetPositionChanged");
                pluginAODManager.mAODPlugin.onFaceWidgetPositionChanged();
            }
        }
    }
}
