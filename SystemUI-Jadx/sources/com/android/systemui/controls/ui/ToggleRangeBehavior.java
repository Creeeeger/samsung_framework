package com.android.systemui.controls.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.service.controls.Control;
import android.service.controls.actions.FloatAction;
import android.service.controls.templates.ControlTemplate;
import android.service.controls.templates.RangeTemplate;
import android.service.controls.templates.TemperatureControlTemplate;
import android.service.controls.templates.ToggleRangeTemplate;
import android.util.Log;
import android.util.MathUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.app.animation.Interpolators;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ControlsMetricsLoggerImpl;
import com.android.systemui.controls.ui.ToggleRangeBehavior;
import com.android.systemui.controls.ui.view.ActionIconView;
import com.android.systemui.statusbar.VibratorHelper;
import java.util.Arrays;
import java.util.IllegalFormatException;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ToggleRangeBehavior implements Behavior, CustomBehavior, CustomButtonBehavior {
    public static final Companion Companion = new Companion(null);
    public static boolean inProgress;
    public Drawable clipLayer;
    public int colorOffset;
    public Context context;
    public Control control;
    public ControlViewHolder cvh;
    public boolean isChecked;
    public boolean isToggleable;
    public ValueAnimator rangeAnimator;
    public RangeTemplate rangeTemplate;
    public String templateId;
    public ToggleRangeTemplate toggleRangeTemplate;
    public CharSequence currentStatusText = "";
    public String currentRangeValue = "";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ToggleRangeGestureListener extends GestureDetector.SimpleOnGestureListener {
        public boolean isDragging;
        public final View v;

        public ToggleRangeGestureListener(View view) {
            this.v = view;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            if (this.isDragging) {
                return;
            }
            ((ControlActionCoordinatorImpl) ToggleRangeBehavior.this.getCvh().controlActionCoordinator).longPress(ToggleRangeBehavior.this.getCvh());
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!this.isDragging) {
                this.v.getParent().requestDisallowInterceptTouchEvent(true);
                ToggleRangeBehavior.this.beginUpdateRange();
                this.isDragging = true;
            }
            int width = (int) (10000 * ((-f) / this.v.getWidth()));
            ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
            toggleRangeBehavior.updateRange(toggleRangeBehavior.getClipLayer().getLevel() + width, true, true);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
            if (!toggleRangeBehavior.isToggleable) {
                return false;
            }
            ControlActionCoordinator controlActionCoordinator = toggleRangeBehavior.getCvh().controlActionCoordinator;
            ControlViewHolder cvh = ToggleRangeBehavior.this.getCvh();
            ToggleRangeBehavior toggleRangeBehavior2 = ToggleRangeBehavior.this;
            String str = toggleRangeBehavior2.templateId;
            if (str == null) {
                str = null;
            }
            ((ControlActionCoordinatorImpl) controlActionCoordinator).toggle(cvh, str, toggleRangeBehavior2.isChecked);
            return true;
        }
    }

    public final void beginUpdateRange() {
        getCvh().userInteractionInProgress = true;
        if (!BasicRune.CONTROLS_SAMSUNG_STYLE) {
            ControlViewHolder cvh = getCvh();
            Context context = this.context;
            if (context == null) {
                context = null;
            }
            cvh.status.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.control_status_expanded));
        }
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, int i) {
        ActionIconView actionIconView;
        Control control = controlWithState.control;
        Intrinsics.checkNotNull(control);
        this.control = control;
        this.colorOffset = i;
        this.currentStatusText = control.getStatusText();
        Control control2 = null;
        getCvh().layout.setOnLongClickListener(null);
        this.clipLayer = ((LayerDrawable) getCvh().layout.getBackground()).findDrawableByLayerId(R.id.clip_layer);
        Control control3 = this.control;
        if (control3 != null) {
            control2 = control3;
        }
        ControlTemplate controlTemplate = control2.getControlTemplate();
        if (!setupTemplate(controlTemplate)) {
            return;
        }
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON && this.isToggleable && (actionIconView = getCvh().getCustomControlViewHolder().actionIcon) != null) {
            actionIconView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$bind$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CustomControlActionCoordinator customControlActionCoordinator = ToggleRangeBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ControlViewHolder cvh = ToggleRangeBehavior.this.getCvh();
                        ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
                        String str = toggleRangeBehavior.templateId;
                        if (str == null) {
                            str = null;
                        }
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).toggleMainAction(cvh, str, toggleRangeBehavior.isChecked);
                    }
                }
            });
        }
        this.templateId = controlTemplate.getTemplateId();
        updateRange((int) MathUtils.constrainedMap(0.0f, 10000.0f, getRangeTemplate().getMinValue(), getRangeTemplate().getMaxValue(), getRangeTemplate().getCurrentValue()), this.isChecked, false);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, this.isChecked, true);
        getCvh().layout.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$bind$2
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
                ToggleRangeBehavior.Companion companion = ToggleRangeBehavior.Companion;
                int i2 = 0;
                float levelToRangeValue = toggleRangeBehavior.levelToRangeValue(0);
                ToggleRangeBehavior toggleRangeBehavior2 = ToggleRangeBehavior.this;
                float levelToRangeValue2 = toggleRangeBehavior2.levelToRangeValue(toggleRangeBehavior2.getClipLayer().getLevel());
                float levelToRangeValue3 = ToggleRangeBehavior.this.levelToRangeValue(10000);
                double stepValue = ToggleRangeBehavior.this.getRangeTemplate().getStepValue();
                if (stepValue == Math.floor(stepValue)) {
                    i2 = 1;
                }
                int i3 = i2 ^ 1;
                if (ToggleRangeBehavior.this.isChecked) {
                    accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(i3, levelToRangeValue, levelToRangeValue3, levelToRangeValue2));
                }
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS);
            }

            @Override // android.view.View.AccessibilityDelegate
            public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return true;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.AccessibilityDelegate
            public final boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
                byte b;
                if (i2 == 16) {
                    String str = null;
                    Control control4 = null;
                    if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
                        CustomControlActionCoordinator customControlActionCoordinator = ToggleRangeBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                        if (customControlActionCoordinator != null) {
                            ControlViewHolder cvh = ToggleRangeBehavior.this.getCvh();
                            ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
                            String str2 = toggleRangeBehavior.templateId;
                            if (str2 == null) {
                                str2 = null;
                            }
                            Control control5 = toggleRangeBehavior.control;
                            if (control5 != null) {
                                control4 = control5;
                            }
                            ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(cvh, str2, control4);
                        }
                    } else {
                        ToggleRangeBehavior toggleRangeBehavior2 = ToggleRangeBehavior.this;
                        if (toggleRangeBehavior2.isToggleable) {
                            ControlActionCoordinator controlActionCoordinator = toggleRangeBehavior2.getCvh().controlActionCoordinator;
                            ControlViewHolder cvh2 = ToggleRangeBehavior.this.getCvh();
                            ToggleRangeBehavior toggleRangeBehavior3 = ToggleRangeBehavior.this;
                            String str3 = toggleRangeBehavior3.templateId;
                            if (str3 != null) {
                                str = str3;
                            }
                            ((ControlActionCoordinatorImpl) controlActionCoordinator).toggle(cvh2, str, toggleRangeBehavior3.isChecked);
                        }
                        b = false;
                    }
                    b = true;
                } else if (i2 == 32) {
                    if (!BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
                        ((ControlActionCoordinatorImpl) ToggleRangeBehavior.this.getCvh().controlActionCoordinator).longPress(ToggleRangeBehavior.this.getCvh());
                        b = true;
                    }
                    b = false;
                } else {
                    if (i2 == AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS.getId() && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                        float f = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
                        ToggleRangeBehavior toggleRangeBehavior4 = ToggleRangeBehavior.this;
                        ToggleRangeBehavior.Companion companion = ToggleRangeBehavior.Companion;
                        int constrainedMap = (int) MathUtils.constrainedMap(0.0f, 10000.0f, toggleRangeBehavior4.getRangeTemplate().getMinValue(), toggleRangeBehavior4.getRangeTemplate().getMaxValue(), f);
                        ToggleRangeBehavior toggleRangeBehavior5 = ToggleRangeBehavior.this;
                        toggleRangeBehavior5.updateRange(constrainedMap, toggleRangeBehavior5.isChecked, true);
                        ToggleRangeBehavior.this.endUpdateRange();
                        b = true;
                    }
                    b = false;
                }
                if (b == false && !super.performAccessibilityAction(view, i2, bundle)) {
                    return false;
                }
                return true;
            }
        });
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        ActionIconView actionIconView;
        getCvh().layout.setOnTouchListener(null);
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON && (actionIconView = getCvh().getCustomControlViewHolder().actionIcon) != null) {
            actionIconView.setOnClickListener(null);
        }
        ValueAnimator valueAnimator = this.rangeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public final void endUpdateRange() {
        boolean z = BasicRune.CONTROLS_SAMSUNG_STYLE;
        if (!z) {
            ControlViewHolder cvh = getCvh();
            Context context = this.context;
            if (context == null) {
                context = null;
            }
            cvh.status.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.control_status_normal));
        }
        ControlViewHolder cvh2 = getCvh();
        CharSequence charSequence = this.currentStatusText;
        boolean z2 = true;
        cvh2.setStatusText(((Object) charSequence) + " " + this.currentRangeValue, true);
        ControlActionCoordinator controlActionCoordinator = getCvh().controlActionCoordinator;
        final ControlViewHolder cvh3 = getCvh();
        final String templateId = getRangeTemplate().getTemplateId();
        final float findNearestStep = findNearestStep(levelToRangeValue(getClipLayer().getLevel()));
        ControlActionCoordinatorImpl controlActionCoordinatorImpl = (ControlActionCoordinatorImpl) controlActionCoordinator;
        controlActionCoordinatorImpl.getClass();
        if (z) {
            Log.d("ControlsUiController", "setValue: [" + templateId + "]: " + findNearestStep);
        }
        ((ControlsMetricsLoggerImpl) controlActionCoordinatorImpl.controlsMetricsLogger).drag(cvh3, controlActionCoordinatorImpl.isLocked());
        String str = cvh3.getCws().ci.controlId;
        Function0 function0 = new Function0() { // from class: com.android.systemui.controls.ui.ControlActionCoordinatorImpl$setValue$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ControlViewHolder.this.action(new FloatAction(templateId, findNearestStep));
                return Unit.INSTANCE;
            }
        };
        Control control = cvh3.getCws().control;
        if (control != null) {
            z2 = control.isAuthRequired();
        }
        controlActionCoordinatorImpl.bouncerOrRun(controlActionCoordinatorImpl.createAction(str, function0, false, z2));
        getCvh().userInteractionInProgress = false;
    }

    public final float findNearestStep(float f) {
        float minValue = getRangeTemplate().getMinValue();
        float f2 = Float.MAX_VALUE;
        while (minValue <= getRangeTemplate().getMaxValue()) {
            float abs = Math.abs(f - minValue);
            if (abs < f2) {
                minValue += getRangeTemplate().getStepValue();
                f2 = abs;
            } else {
                return minValue - getRangeTemplate().getStepValue();
            }
        }
        return getRangeTemplate().getMaxValue();
    }

    public final String format(String str, String str2, float f) {
        try {
            int i = StringCompanionObject.$r8$clinit;
            return String.format(str, Arrays.copyOf(new Object[]{Float.valueOf(findNearestStep(f))}, 1));
        } catch (IllegalFormatException e) {
            Log.w("ControlsUiController", "Illegal format in range template", e);
            if (Intrinsics.areEqual(str2, "")) {
                return "";
            }
            return this.format(str2, "", f);
        }
    }

    public final Drawable getClipLayer() {
        Drawable drawable = this.clipLayer;
        if (drawable != null) {
            return drawable;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.CustomButtonBehavior
    public final CharSequence getContentDescription() {
        CharSequence charSequence;
        ToggleRangeTemplate toggleRangeTemplate = this.toggleRangeTemplate;
        if (toggleRangeTemplate != null) {
            charSequence = toggleRangeTemplate.getActionDescription();
        } else {
            charSequence = null;
        }
        if (charSequence == null) {
            return "";
        }
        return charSequence;
    }

    public final ControlViewHolder getCvh() {
        ControlViewHolder controlViewHolder = this.cvh;
        if (controlViewHolder != null) {
            return controlViewHolder;
        }
        return null;
    }

    public final RangeTemplate getRangeTemplate() {
        RangeTemplate rangeTemplate = this.rangeTemplate;
        if (rangeTemplate != null) {
            return rangeTemplate;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void initialize(ControlViewHolder controlViewHolder) {
        this.cvh = controlViewHolder;
        this.context = controlViewHolder.context;
        boolean z = BasicRune.CONTROLS_SAMSUNG_STYLE;
        Context context = null;
        ViewGroup viewGroup = controlViewHolder.layout;
        if (z) {
            final CustomToggleRangeGestureListener customToggleRangeGestureListener = new CustomToggleRangeGestureListener(viewGroup);
            Context context2 = this.context;
            if (context2 != null) {
                context = context2;
            }
            final GestureDetector gestureDetector = new GestureDetector(context, customToggleRangeGestureListener);
            viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$initialize$1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean z2;
                    ToggleRangeBehavior.Companion companion = ToggleRangeBehavior.Companion;
                    if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    ToggleRangeBehavior.inProgress = z2;
                    try {
                        if (!gestureDetector.onTouchEvent(motionEvent) && motionEvent.getAction() == 1 && customToggleRangeGestureListener.isDragging) {
                            view.getParent().requestDisallowInterceptTouchEvent(false);
                            customToggleRangeGestureListener.isDragging = false;
                            this.endUpdateRange();
                            return false;
                        }
                    } catch (IllegalArgumentException unused) {
                        Log.w("ControlsUiController", "Touch action occurred during view updating.");
                    }
                    return false;
                }
            });
            return;
        }
        final ToggleRangeGestureListener toggleRangeGestureListener = new ToggleRangeGestureListener(viewGroup);
        Context context3 = this.context;
        if (context3 != null) {
            context = context3;
        }
        final GestureDetector gestureDetector2 = new GestureDetector(context, toggleRangeGestureListener);
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$initialize$2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (!gestureDetector2.onTouchEvent(motionEvent) && motionEvent.getAction() == 1 && toggleRangeGestureListener.isDragging) {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    toggleRangeGestureListener.isDragging = false;
                    this.endUpdateRange();
                }
                return false;
            }
        });
    }

    public final float levelToRangeValue(int i) {
        return MathUtils.constrainedMap(getRangeTemplate().getMinValue(), getRangeTemplate().getMaxValue(), 0.0f, 10000.0f, i);
    }

    public final boolean setupTemplate(ControlTemplate controlTemplate) {
        if (controlTemplate instanceof ToggleRangeTemplate) {
            ToggleRangeTemplate toggleRangeTemplate = (ToggleRangeTemplate) controlTemplate;
            if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                this.toggleRangeTemplate = toggleRangeTemplate;
            }
            this.rangeTemplate = toggleRangeTemplate.getRange();
            this.isToggleable = true;
            this.isChecked = toggleRangeTemplate.isChecked();
            return true;
        }
        boolean z = false;
        if (controlTemplate instanceof RangeTemplate) {
            this.rangeTemplate = (RangeTemplate) controlTemplate;
            if (getRangeTemplate().getCurrentValue() == getRangeTemplate().getMinValue()) {
                z = true;
            }
            this.isChecked = !z;
            return true;
        }
        if (controlTemplate instanceof TemperatureControlTemplate) {
            return setupTemplate(((TemperatureControlTemplate) controlTemplate).getTemplate());
        }
        Log.e("ControlsUiController", "Unsupported template type: " + controlTemplate);
        return false;
    }

    public final void updateRange(int i, boolean z, boolean z2) {
        boolean z3;
        int max = Math.max(0, Math.min(10000, i));
        if (getClipLayer().getLevel() == 0 && max > 0) {
            getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(this.colorOffset, z, false);
        }
        ValueAnimator valueAnimator = this.rangeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z2) {
            if (max != 0 && max != 10000) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (getClipLayer().getLevel() != max) {
                ControlActionCoordinatorImpl controlActionCoordinatorImpl = (ControlActionCoordinatorImpl) getCvh().controlActionCoordinator;
                controlActionCoordinatorImpl.getClass();
                VibratorHelper vibratorHelper = controlActionCoordinatorImpl.vibrator;
                if (z3) {
                    Vibrations.INSTANCE.getClass();
                    vibratorHelper.vibrate(Vibrations.rangeEdgeEffect);
                } else {
                    Vibrations.INSTANCE.getClass();
                    vibratorHelper.vibrate(Vibrations.rangeMiddleEffect);
                }
                getClipLayer().setLevel(max);
            }
        } else if (max != getClipLayer().getLevel()) {
            ValueAnimator ofInt = ValueAnimator.ofInt(getCvh().clipLayer.getLevel(), max);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$updateRange$1$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ToggleRangeBehavior.this.getCvh().clipLayer.setLevel(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.controls.ui.ToggleRangeBehavior$updateRange$1$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    ToggleRangeBehavior.this.rangeAnimator = null;
                }
            });
            ofInt.setDuration(700L);
            ofInt.setInterpolator(Interpolators.CONTROL_STATE);
            ofInt.start();
            this.rangeAnimator = ofInt;
        }
        if (z) {
            this.currentRangeValue = format(getRangeTemplate().getFormatString().toString(), "%.1f", levelToRangeValue(max));
            if (z2) {
                getCvh().setStatusText(this.currentRangeValue, true);
                return;
            }
            ControlViewHolder cvh = getCvh();
            CharSequence charSequence = this.currentStatusText;
            String str = ((Object) charSequence) + " " + this.currentRangeValue;
            Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
            cvh.setStatusText(str, false);
            return;
        }
        ControlViewHolder cvh2 = getCvh();
        CharSequence charSequence2 = this.currentStatusText;
        Set set2 = ControlViewHolder.FORCE_PANEL_DEVICES;
        cvh2.setStatusText(charSequence2, false);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CustomToggleRangeGestureListener extends GestureDetector.SimpleOnGestureListener {
        public boolean isDragging;
        public final View v;

        public CustomToggleRangeGestureListener(View view) {
            this.v = view;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!this.isDragging) {
                this.v.getParent().requestDisallowInterceptTouchEvent(true);
                ToggleRangeBehavior.this.beginUpdateRange();
                this.isDragging = true;
            }
            int width = (int) (10000 * ((-f) / this.v.getWidth()));
            ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
            toggleRangeBehavior.updateRange(toggleRangeBehavior.getClipLayer().getLevel() + width, true, true);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            CustomControlActionCoordinator customControlActionCoordinator = ToggleRangeBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
            if (customControlActionCoordinator != null) {
                ControlViewHolder cvh = ToggleRangeBehavior.this.getCvh();
                ToggleRangeBehavior toggleRangeBehavior = ToggleRangeBehavior.this;
                String str = toggleRangeBehavior.templateId;
                Control control = null;
                if (str == null) {
                    str = null;
                }
                Control control2 = toggleRangeBehavior.control;
                if (control2 != null) {
                    control = control2;
                }
                ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(cvh, str, control);
                return true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
        }
    }
}
