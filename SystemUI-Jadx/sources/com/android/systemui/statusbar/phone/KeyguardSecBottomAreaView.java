package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.keyguard.EmergencyButton;
import com.android.keyguard.EmergencyButtonController;
import com.android.keyguard.SecLockIconViewController;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$2;
import com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder$bind$1;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.phone.KeyguardBottomAreaView;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardSecBottomAreaView extends KeyguardBottomAreaView {
    public final KeyguardSecBottomAreaViewBinder binder;
    public KeyguardBottomAreaViewBinder.Binding binding;
    public final Lazy bottomDozeArea$delegate;
    public int currentOrientation;
    public int currentSimState;
    public final Lazy disclosureIndicationText$delegate;
    public final Lazy displayMetrics$delegate;
    public EmergencyButton emergencyButton;
    public final Lazy indicationText$delegate;
    public boolean isKeyguardVisible;
    public int isLastVisibility;
    public boolean isPluginLockOverlayView;
    public final Lazy leftShortcutArea$delegate;
    public final Lazy leftView$delegate;
    public final Lazy mDisplay$delegate;
    public final Lazy rightShortcutArea$delegate;
    public final Lazy rightView$delegate;
    public Function0 setUsimTextAreaVisibility;
    public Function0 showShortcutsIfPossible;
    public Function0 updateLeftAffordanceIcon;
    public Function0 updateRightAffordanceIcon;
    public final Lazy upperFPIndication$delegate;
    public KeyguardUsimTextView usimCarrierText;
    public LinearLayout usimTextArea;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public KeyguardSecBottomAreaView(Context context) {
        this(context, null, 0, 0, 14, null);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final KeyguardBottomAreaViewBinder getBinder() {
        return this.binder;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final KeyguardBottomAreaViewBinder.Binding getBinding() {
        KeyguardBottomAreaViewBinder.Binding binding = this.binding;
        if (binding != null) {
            return binding;
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final ImageView getLeftView() {
        return (KeyguardSecAffordanceView) this.leftView$delegate.getValue();
    }

    public final Function0 getUpdateLeftAffordanceIcon() {
        Function0 function0 = this.updateLeftAffordanceIcon;
        if (function0 != null) {
            return function0;
        }
        return null;
    }

    public final Function0 getUpdateRightAffordanceIcon() {
        Function0 function0 = this.updateRightAffordanceIcon;
        if (function0 != null) {
            return function0;
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView, android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final void init(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, FalsingManager falsingManager, SecLockIconViewController secLockIconViewController, KeyguardBottomAreaView.MessageDisplayer messageDisplayer, VibratorHelper vibratorHelper, ActivityStarter activityStarter) {
        if (this.binding != null) {
            getBinding().destroy();
        }
        this.binding = KeyguardSecBottomAreaViewBinder.bind(this, keyguardBottomAreaViewModel);
        this.lockIconViewController = secLockIconViewController;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final void initEmergencyButton(EmergencyButtonController.Factory factory) {
        EmergencyButton emergencyButton = this.emergencyButton;
        if (emergencyButton != null) {
            Intrinsics.checkNotNull(factory);
            factory.create(emergencyButton).init();
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final boolean isInEmergencyButtonArea(MotionEvent motionEvent) {
        EmergencyButton emergencyButton = this.emergencyButton;
        if (emergencyButton != null) {
            Rect rect = new Rect();
            emergencyButton.getGlobalVisibleRect(rect);
            Intrinsics.checkNotNull(motionEvent);
            return rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView, android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (!((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).isFastWakeAndUnlockMode()) {
            KeyguardSecBottomAreaViewBinder$bind$1 keyguardSecBottomAreaViewBinder$bind$1 = (KeyguardSecBottomAreaViewBinder$bind$1) getBinding();
            StateFlowImpl stateFlowImpl = (StateFlowImpl) keyguardSecBottomAreaViewBinder$bind$1.$configurationBasedDimensions;
            KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions copy$default = KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions.copy$default((KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions) stateFlowImpl.getValue());
            keyguardSecBottomAreaViewBinder$bind$1.$view.updateShortcutPosition(copy$default);
            stateFlowImpl.setValue(copy$default);
            ((KeyguardSecBottomAreaViewBinder$bind$1) getBinding()).updateIndicationPosition();
        }
        super.onApplyWindowInsets(windowInsets);
        return windowInsets;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        if (DeviceState.shouldEnableKeyguardScreenRotation(getContext()) && this.currentOrientation != configuration.orientation) {
            updateLayout();
            this.currentOrientation = configuration.orientation;
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView, android.view.View
    public final void onFinishInflate() {
        getRightView().init();
        getRightView().mRight = true;
        ((KeyguardSecAffordanceView) this.leftView$delegate.getValue()).init();
        this.currentOrientation = getContext().getResources().getConfiguration().orientation;
        super.onFinishInflate();
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT) {
            this.usimTextArea = (LinearLayout) findViewById(R.id.usim_text_area);
            this.emergencyButton = (EmergencyButton) findViewById(R.id.emergency_call_button);
            ViewStub viewStub = (ViewStub) findViewById(R.id.stub_keyguard_usim_text);
            if (viewStub != null) {
                viewStub.inflate();
                KeyguardUsimTextView keyguardUsimTextView = (KeyguardUsimTextView) findViewById(R.id.keyguard_usim_carrier_text);
                this.usimCarrierText = keyguardUsimTextView;
                Log.d("KeyguardSecBottomAreaView", "mUsimCarrierText=" + keyguardUsimTextView);
                return;
            }
            return;
        }
        Log.d("KeyguardSecBottomAreaView", "onFinishInflate: USIM is null");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        if (view == this && this.isLastVisibility != i) {
            this.isLastVisibility = i;
            if (i == 0) {
                Function0 function0 = this.setUsimTextAreaVisibility;
                Function0 function02 = null;
                if (function0 != null) {
                    if (function0 == null) {
                        function0 = null;
                    }
                    function0.invoke();
                }
                Function0 function03 = this.showShortcutsIfPossible;
                if (function03 != null) {
                    if (function03 != null) {
                        function02 = function03;
                    }
                    function02.invoke();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final void setAllChildEnabled(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                setAllChildEnabled(viewGroup.getChildAt(i), z);
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final void setBinding(KeyguardBottomAreaViewBinder$bind$2 keyguardBottomAreaViewBinder$bind$2) {
        this.binding = keyguardBottomAreaViewBinder$bind$2;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0207  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateIndicationPosition(com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions r14) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView.updateIndicationPosition(com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions):void");
    }

    public final void updateLayout() {
        try {
            ((Display) this.mDisplay$delegate.getValue()).getRealMetrics((DisplayMetrics) this.displayMetrics$delegate.getValue());
            ((KeyguardSecBottomAreaViewBinder$bind$1) getBinding()).onConfigurationChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void updateShortcutPosition(KeyguardSecBottomAreaViewBinder.ConfigurationBasedDimensions configurationBasedDimensions) {
        int i;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        if (!this.isKeyguardVisible) {
            return;
        }
        Resources resources = getResources();
        int i2 = resources.getConfiguration().orientation;
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_size);
        if (LsRune.LOCKUI_SUB_DISPLAY_LOCK) {
            if (((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
                if (i2 == 1) {
                    dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_side_margin_sub_opend);
                } else {
                    dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_side_margin_sub_opend_land);
                }
                configurationBasedDimensions.shortcutSideMargin = dimensionPixelSize2;
                configurationBasedDimensions.shortcutBottomMargin = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_bottom_margin_sub_opend);
            } else {
                if (i2 == 1) {
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_side_margin_sub_closed);
                } else {
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_side_margin_sub_closed_land);
                }
                configurationBasedDimensions.shortcutSideMargin = dimensionPixelSize;
                configurationBasedDimensions.shortcutBottomMargin = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_bottom_margin_sub_closed);
            }
        } else {
            Point point = DeviceState.sDisplaySize;
            if (DeviceType.isTablet()) {
                configurationBasedDimensions.shortcutBottomMargin = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_bottom_margin_tablet);
                if (i2 == 1) {
                    i = R.dimen.keyguard_shrotcut_default_side_margin_tablet;
                } else {
                    i = R.dimen.keyguard_shrotcut_default_side_margin_land_tablet;
                }
                configurationBasedDimensions.shortcutSideMargin = resources.getDimensionPixelSize(i);
                dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_size_tablet);
            } else if (i2 == 1) {
                int i3 = ((DisplayMetrics) this.displayMetrics$delegate.getValue()).heightPixels;
                configurationBasedDimensions.shortcutSideMargin = (int) (((DisplayMetrics) this.displayMetrics$delegate.getValue()).widthPixels * 0.067d);
                configurationBasedDimensions.shortcutBottomMargin = (int) (i3 * 0.024d);
            } else {
                configurationBasedDimensions.shortcutSideMargin = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_side_margin_land);
                configurationBasedDimensions.shortcutBottomMargin = resources.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_bottom_margin);
            }
        }
        configurationBasedDimensions.buttonSizePx = new Size(dimensionPixelSize3, dimensionPixelSize3);
        configurationBasedDimensions.isOverlayView = this.isPluginLockOverlayView;
    }

    public KeyguardSecBottomAreaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaView
    public final KeyguardSecAffordanceView getRightView() {
        return (KeyguardSecAffordanceView) this.rightView$delegate.getValue();
    }

    public KeyguardSecBottomAreaView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
    }

    public /* synthetic */ KeyguardSecBottomAreaView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    public KeyguardSecBottomAreaView(final Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.leftView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$leftView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ImageView leftView;
                leftView = super/*com.android.systemui.statusbar.phone.KeyguardBottomAreaView*/.getLeftView();
                return (KeyguardSecAffordanceView) leftView;
            }
        });
        this.rightView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$rightView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ImageView rightView;
                rightView = super/*com.android.systemui.statusbar.phone.KeyguardBottomAreaView*/.getRightView();
                return (KeyguardSecAffordanceView) rightView;
            }
        });
        this.leftShortcutArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$leftShortcutArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return KeyguardSecBottomAreaView.this.requireViewById(R.id.left_shortcut_area);
            }
        });
        this.rightShortcutArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$rightShortcutArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return KeyguardSecBottomAreaView.this.requireViewById(R.id.right_shortcut_area);
            }
        });
        this.indicationText$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$indicationText$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (TextView) KeyguardSecBottomAreaView.this.requireViewById(R.id.keyguard_indication_text);
            }
        });
        this.disclosureIndicationText$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$disclosureIndicationText$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (TextView) KeyguardSecBottomAreaView.this.requireViewById(R.id.keyguard_indication_text_bottom);
            }
        });
        this.bottomDozeArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$bottomDozeArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (FrameLayout) KeyguardSecBottomAreaView.this.requireViewById(R.id.keyguard_bottom_doze_area);
            }
        });
        this.upperFPIndication$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$upperFPIndication$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (KeyguardIndicationTextView) KeyguardSecBottomAreaView.this.requireViewById(R.id.keyguard_upper_fingerprint_indication);
            }
        });
        this.mDisplay$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$mDisplay$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            }
        });
        this.displayMetrics$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView$displayMetrics$2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new DisplayMetrics();
            }
        });
        this.currentSimState = 1;
        this.isLastVisibility = 8;
        this.binder = KeyguardSecBottomAreaViewBinder.INSTANCE;
    }
}
