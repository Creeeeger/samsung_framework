package com.android.systemui.qs.animator;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.PagedTileLayout;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.qs.SecQuickQSPanel;
import com.android.systemui.qs.TouchAnimator;
import com.android.systemui.qs.bar.BarController;
import com.android.systemui.qs.bar.BarItemImpl;
import com.android.systemui.qs.bar.BarType;
import com.android.systemui.qs.bar.BottomLargeTileBar;
import com.android.systemui.qs.bar.BrightnessBar;
import com.android.systemui.qs.bar.BrightnessMediaDevicesBar;
import com.android.systemui.qs.bar.MultiSIMPreferredSlotBar;
import com.android.systemui.qs.bar.PagedTileLayoutBar;
import com.android.systemui.qs.bar.QSMediaPlayerBar;
import com.android.systemui.qs.bar.SecurityFooterBar;
import com.android.systemui.qs.bar.TopLargeTileBar;
import com.android.systemui.qs.bar.VideoCallMicModeBar;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.policy.QSClockHeaderView;
import com.android.systemui.tuner.TunerService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QsExpandAnimator extends SecQSFragmentAnimatorBase implements QSHost.Callback, PagedTileLayout.PageListener, TouchAnimator.Listener, View.OnAttachStateChangeListener, TunerService.Tunable, View.OnLayoutChangeListener {
    public TouchAnimator mAnimatorForListener;
    public final BarController mBarController;
    public View mBatteryIcon;
    public BottomLargeTileBar mBottomLargeTileBar;
    public BrightnessMediaDevicesBar mBrightnessMediaDevicesBar;
    public View mButtonContainer;
    public View mCarrier1;
    public View mCarrier2;
    public View mCarrier3;
    public View mClockButtonContainer;
    public View mClockDateContainer;
    public QSClockHeaderView mClockView;
    public final Context mContext;
    public TextView mDate;
    public TouchAnimator mDateAnimator;
    public View mEditContainer;
    public BrightnessBar mExpandedBrightnessBar;
    public View mHeader;
    public TouchAnimator mHeaderAnimator;
    public TouchAnimator mHeaderBarAnimator;
    public View mHeaderDateSettingContainer;
    public QSHost mHost;
    public final KeyguardEditModeController mKeyguardEditModeController;
    public QSMediaPlayerBar mMediaPlayerBar;
    public MultiSIMPreferredSlotBar mMultiSIMBar;
    public View mMumContainer;
    public View mNetworkSpeedContainer;
    public int mOrientation;
    public PagedTileLayoutBar mPagedTileLayoutBar;
    public TouchAnimator mPanelAlphaAnimator;
    public TouchAnimator mPanelBarAnimator;
    public TouchAnimator mPanelYAnimator;
    public View mPlmn;
    public View mPowerContainer;
    public View mPrivacyContainer;
    public ScrollView mQSScrollView;
    public TouchAnimator mQsButtonsAnimator;
    public SecQSPanel mQsPanel;
    public final SecQSPanelController mQsPanelController;
    public View mQsRootPanel;
    public View mQuickQSPanelTileContainer;
    public TouchAnimator mQuickQsAnimator;
    public SecQuickQSPanel mQuickQsPanel;
    public final SecQSPanelResourcePicker mResourcePicker;
    public SecurityFooterBar mSecurityFooterBar;
    public View mSettingContainer;
    public MotionLayout mShadeHeader;
    public TouchAnimator mShadeHeaderAnimator;
    public View mShadeHeaderClock;
    public final ShadeHeaderController mShadeHeaderController;
    public TouchAnimator mShadeHeaderExpandImmediateAnimator;
    public TouchAnimator mStackScrollLayoutAnimator;
    public View mSystemIcon;
    public PagedTileLayout mTileLayout;
    public TopLargeTileBar mTopLargeTileBar;
    public VideoCallMicModeBar mVideoCallMicModeBar;
    public final ArrayList mAllViews = new ArrayList();
    public final ArrayList mTileAnimators = new ArrayList();
    public final ArrayList mTileAnimatorBuilders = new ArrayList();
    public boolean mOnFirstPage = true;
    public float mLastPosition = 0.0f;
    public boolean mForceUpdate = false;
    public final ArrayList mCarriers = new ArrayList();
    public boolean mOnExpandImmediate = false;
    public boolean mIsDateButtonOverlapped = false;
    public final AnonymousClass1 mDateWidthDetector = new View.OnLayoutChangeListener() { // from class: com.android.systemui.qs.animator.QsExpandAnimator.1
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            boolean z;
            QsExpandAnimator qsExpandAnimator = QsExpandAnimator.this;
            TextView textView = qsExpandAnimator.mDate;
            if (textView != null && qsExpandAnimator.mClockView != null && qsExpandAnimator.mClockButtonContainer != null && qsExpandAnimator.mButtonContainer != null) {
                float measureText = textView.getPaint().measureText(QsExpandAnimator.this.mDate.getText().toString()) + QsExpandAnimator.this.mClockView.getWidth();
                if (QsExpandAnimator.this.mButtonContainer.getMeasuredWidth() + measureText > QsExpandAnimator.this.mClockButtonContainer.getWidth()) {
                    z = true;
                } else {
                    z = false;
                }
                StringBuilder sb = new StringBuilder("mIsDateButtonOverlapped = ");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, QsExpandAnimator.this.mIsDateButtonOverlapped, " >> ", z, ", (");
                sb.append(measureText);
                sb.append(" + ");
                sb.append(QsExpandAnimator.this.mButtonContainer.getMeasuredWidth());
                sb.append(") = ");
                sb.append(measureText + QsExpandAnimator.this.mButtonContainer.getMeasuredWidth());
                sb.append(" : ");
                sb.append(QsExpandAnimator.this.mClockButtonContainer.getWidth());
                Log.d("QsExpandAnimator", sb.toString());
                QsExpandAnimator qsExpandAnimator2 = QsExpandAnimator.this;
                if (qsExpandAnimator2.mIsDateButtonOverlapped != z) {
                    qsExpandAnimator2.mIsDateButtonOverlapped = z;
                    if (!z) {
                        qsExpandAnimator2.mDate.setAlpha(1.0f);
                    }
                }
            }
        }
    };
    public final AnonymousClass2 mUpdateAnimators = new Runnable() { // from class: com.android.systemui.qs.animator.QsExpandAnimator.2
        @Override // java.lang.Runnable
        public final void run() {
            QsExpandAnimator.this.updateAnimators();
        }
    };

    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.qs.animator.QsExpandAnimator$1] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.systemui.qs.animator.QsExpandAnimator$2] */
    public QsExpandAnimator(Context context, SecQSPanelController secQSPanelController, BarController barController, ShadeHeaderController shadeHeaderController, SecQSPanelResourcePicker secQSPanelResourcePicker, KeyguardEditModeController keyguardEditModeController) {
        this.mContext = context;
        this.mBarController = barController;
        this.mQsPanelController = secQSPanelController;
        this.mShadeHeaderController = shadeHeaderController;
        this.mResourcePicker = secQSPanelResourcePicker;
        this.mKeyguardEditModeController = keyguardEditModeController;
    }

    public final void clearAnimationState() {
        float f;
        if (isDetailVisible()) {
            return;
        }
        boolean z = true;
        if (!this.mQsExpanded && !this.mQsFullyExpanded && this.mState != 1) {
            z = false;
        }
        int size = this.mAllViews.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) this.mAllViews.get(i);
            float f2 = 1.0f;
            if (pair.first.equals("view_visible_always")) {
                ((View) pair.second).setAlpha(1.0f);
            }
            if (pair.first.equals("view_visible_expanded_state")) {
                View view = (View) pair.second;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                view.setAlpha(f);
            }
            if (pair.first.equals("view_visible_collapsed_state")) {
                View view2 = (View) pair.second;
                if (z) {
                    f2 = 0.0f;
                }
                view2.setAlpha(f2);
            }
            Object obj = pair.second;
            if (!(obj instanceof NotificationStackScrollLayout)) {
                ((View) obj).setTranslationX(0.0f);
            }
            ((View) pair.second).setTranslationY(0.0f);
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void destroyQSViews() {
        SecQSPanel secQSPanel = this.mQsPanel;
        if (secQSPanel != null) {
            secQSPanel.removeOnAttachStateChangeListener(this);
            this.mQsPanel.removeOnLayoutChangeListener(this);
            SecQSPanel.QSTileLayout qSTileLayout = this.mQsPanelController.mTileLayout;
            if (qSTileLayout instanceof PagedTileLayout) {
                PagedTileLayout pagedTileLayout = (PagedTileLayout) qSTileLayout;
                this.mTileLayout = pagedTileLayout;
                pagedTileLayout.mPageListener = null;
                this.mTileLayout = null;
            } else {
                Log.w("QsExpandAnimator", "QS Not using page layout");
            }
        }
        View view = this.mClockDateContainer;
        if (view != null) {
            view.removeOnLayoutChangeListener(this.mDateWidthDetector);
        }
        this.mAllViews.clear();
        this.mTileAnimators.clear();
        this.mTileAnimatorBuilders.clear();
        this.mQs = null;
        this.mQuickQsPanel = null;
        this.mQsPanel = null;
        this.mHeader = null;
        this.mPlmn = null;
        this.mTileLayout = null;
        this.mSettingContainer = null;
        this.mMumContainer = null;
        this.mEditContainer = null;
        this.mPowerContainer = null;
        this.mQuickQSPanelTileContainer = null;
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase, com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("QsExpandAnimator ============================================= ");
        Iterator it = this.mAllViews.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            View view = (View) pair.second;
            arrayList.add("  " + view.getClass().getSimpleName() + " " + ((String) pair.first) + " :  alpha = " + view.getAlpha() + " translationY = " + view.getTranslationY() + " visibility = " + view.getVisibility());
        }
        arrayList.add("============================================================== ");
        return arrayList;
    }

    public final View getBarView(BarItemImpl barItemImpl) {
        View view;
        if (barItemImpl == null || (view = barItemImpl.mBarRootView) == null) {
            return null;
        }
        return view.findViewWithTag("expand_anim");
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final boolean isThereNoView() {
        if (!super.isThereNoView() && this.mTileLayout != null && this.mQsPanelController.mHost != null) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qs.TouchAnimator.Listener
    public final void onAnimationAtEnd() {
        if (isThereNoView()) {
            return;
        }
        this.mQuickQsPanel.setVisibility(4);
        if (this.mOnExpandImmediate) {
            this.mOnExpandImmediate = false;
        }
    }

    @Override // com.android.systemui.qs.TouchAnimator.Listener
    public final void onAnimationAtStart() {
        if (isThereNoView()) {
            return;
        }
        this.mQuickQsPanel.setVisibility(0);
    }

    @Override // com.android.systemui.qs.TouchAnimator.Listener
    public final void onAnimationStarted() {
        if (isThereNoView()) {
            return;
        }
        this.mQuickQsPanel.setVisibility(0);
        BooleanSupplier booleanSupplier = this.mExpandImmediateSupplier;
        if (booleanSupplier != null && booleanSupplier.getAsBoolean()) {
            this.mOnExpandImmediate = true;
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.mOrientation != configuration.orientation) {
            this.mQsRootPanel.post(new Runnable() { // from class: com.android.systemui.qs.animator.QsExpandAnimator$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    QsExpandAnimator.this.updateAnimators();
                }
            });
            this.mOrientation = configuration.orientation;
            if (isDetailVisible() && !this.mDetailTriggeredExpand) {
                this.mForceUpdate = true;
                setQsExpansionPosition(this.mLastPosition);
            }
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.mResourcePicker.getPanelHeight(this.mContext) != 0) {
            this.mQsPanel.post(this.mUpdateAnimators);
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onPanelClosed() {
        this.mPanelExpanded = false;
        setQsExpansionPosition(0.0f);
        if (this.mOnExpandImmediate) {
            this.mOnExpandImmediate = false;
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase, com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z;
        BooleanSupplier booleanSupplier = this.mExpandImmediateSupplier;
        if ((booleanSupplier != null && booleanSupplier.getAsBoolean()) || this.mOnExpandImmediate) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mPanelAlphaAnimator.setPosition(shadeExpansionChangeEvent.fraction);
            TouchAnimator touchAnimator = this.mPanelYAnimator;
            float f = shadeExpansionChangeEvent.fraction;
            touchAnimator.setPosition(f);
            this.mShadeHeaderExpandImmediateAnimator.setPosition(f);
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onRtlChanged() {
        updateAnimators();
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onStateChanged(int i) {
        this.mState = i;
    }

    @Override // com.android.systemui.qs.QSHost.Callback
    public final void onTilesChanged() {
        if (isThereNoView()) {
            return;
        }
        this.mQsPanel.post(this.mUpdateAnimators);
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public final void onTuningChanged(String str, String str2) {
        if ("brightness_on_top".equals(str)) {
            ((TunerService) Dependency.get(TunerService.class)).getValue(1, str);
            updateAnimators();
        } else if ("qspanel_media_quickcontrol_bar_available".equals(str)) {
            updateAnimators();
        } else if ("qspanel_media_quickcontrol_bar_available_on_top".equals(str)) {
            updateAnimators();
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        Objects.toString(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Objects.toString(view);
        QSHost qSHost = this.mHost;
        if (qSHost != null) {
            qSHost.removeCallback(this);
        }
        this.mQs = null;
        ((TunerService) Dependency.get(TunerService.class)).removeTunable(this);
        this.mQsPanel.removeOnAttachStateChangeListener(this);
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setFancyClipping(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        boolean z3;
        if (isThereNoView()) {
            return;
        }
        if (QpRune.QUICK_TABLET) {
            i2 -= this.mShadeHeader.getHeight();
        }
        int height = this.mQuickQsPanel.getHeight() - i2;
        int height2 = this.mQuickQsPanel.getHeight() - this.mHeaderDateSettingContainer.getBottom();
        int height3 = height2 - (height2 - this.mHeaderDateSettingContainer.getHeight());
        int i6 = height - height2;
        final int i7 = 0;
        final float min = Math.min(Math.max(i6, 0) / height3, 1.0f);
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.mStackScrollerController;
        final int i8 = 1;
        int i9 = 4;
        if (notificationStackScrollLayoutController != null) {
            if (notificationStackScrollLayoutController.mView.mOwnScrollY > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                this.mShadeHeaderClock.setAlpha(min);
                View view = this.mShadeHeaderClock;
                if (min > 0.0f) {
                    i9 = 0;
                }
                view.setVisibility(i9);
                this.mCarriers.stream().filter(new Predicate() { // from class: com.android.systemui.qs.animator.QsExpandAnimator$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (i7) {
                            case 0:
                                if (((View) obj).getVisibility() == 0) {
                                    return true;
                                }
                                return false;
                            default:
                                if (((View) obj).getVisibility() == 0) {
                                    return true;
                                }
                                return false;
                        }
                    }
                }).forEach(new Consumer() { // from class: com.android.systemui.qs.animator.QsExpandAnimator$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((View) obj).setAlpha(1.0f - min);
                    }
                });
                return;
            }
        }
        this.mShadeHeaderClock.setAlpha(0.0f);
        this.mShadeHeaderClock.setVisibility(4);
        this.mCarriers.stream().filter(new Predicate() { // from class: com.android.systemui.qs.animator.QsExpandAnimator$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i8) {
                    case 0:
                        if (((View) obj).getVisibility() == 0) {
                            return true;
                        }
                        return false;
                    default:
                        if (((View) obj).getVisibility() == 0) {
                            return true;
                        }
                        return false;
                }
            }
        }).forEach(new QsExpandAnimator$$ExternalSyntheticLambda2());
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setFullyExpanded(boolean z) {
        this.mQsFullyExpanded = z;
        if (!isThereNoView() && z) {
            this.mQsPanel.post(this.mUpdateAnimators);
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setQs(QS qs) {
        if (qs == null) {
            destroyQSViews();
            return;
        }
        qs.toString();
        this.mQs = qs;
        updateViews();
        QSHost qSHost = this.mQsPanelController.mHost;
        this.mHost = qSHost;
        if (qSHost != null) {
            qSHost.addCallback(this);
        }
        this.mQsPanel.post(this.mUpdateAnimators);
        this.mQsPanel.isAttachedToWindow();
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setQsExpansionPosition(float f) {
        if (!isThereNoView() && this.mAnimatorsInitialiezed && !Float.isNaN(f) && !this.mExpandedByNotiOverScroll) {
            this.mAnimatorForListener.setPosition(f);
            this.mLastPosition = f;
            int i = this.mContext.getResources().getConfiguration().orientation;
            boolean z = true;
            float f2 = 1.0f;
            if (this.mState == 1) {
                if (this.mQsExpanded) {
                    this.mPanelAlphaAnimator.setPosition(f);
                    this.mShadeHeaderAnimator.setPosition(f);
                    this.mHeaderAnimator.setPosition(f);
                    f = 1.0f;
                } else {
                    this.mPanelAlphaAnimator.setPosition(0.0f);
                    this.mShadeHeaderAnimator.setPosition(0.0f);
                    this.mHeaderAnimator.setPosition(f);
                }
            } else {
                BooleanSupplier booleanSupplier = this.mExpandImmediateSupplier;
                if ((booleanSupplier == null || !booleanSupplier.getAsBoolean()) && !this.mOnExpandImmediate) {
                    z = false;
                }
                if (!z) {
                    this.mQsRootPanel.setAlpha(1.0f);
                }
            }
            BooleanSupplier booleanSupplier2 = this.mExpandImmediateSupplier;
            if (booleanSupplier2 != null && booleanSupplier2.getAsBoolean()) {
                f = 1.0f;
            }
            if (this.mQsPanel == null || !this.mQsPanelController.mExpandSettingsPanel) {
                if (!this.mForceUpdate && isDetailVisible()) {
                    TouchAnimator touchAnimator = this.mHeaderAnimator;
                    if (touchAnimator != null) {
                        touchAnimator.setPosition(f);
                        return;
                    }
                    return;
                }
                f2 = f;
            }
            this.mQuickQsAnimator.setPosition(f2);
            Iterator it = this.mTileAnimators.iterator();
            while (it.hasNext()) {
                ((TouchAnimator) it.next()).setPosition(f2);
            }
            TouchAnimator touchAnimator2 = this.mPanelBarAnimator;
            if (touchAnimator2 != null) {
                touchAnimator2.setPosition(f2);
            }
            TouchAnimator touchAnimator3 = this.mHeaderBarAnimator;
            if (touchAnimator3 != null) {
                touchAnimator3.setPosition(f2);
            }
            this.mQsButtonsAnimator.setPosition(f2);
            if (this.mStackScrollerController != null) {
                this.mHeaderAnimator.setPosition(f2);
            }
            if (((KeyguardEditModeControllerImpl) this.mKeyguardEditModeController).getVIRunning()) {
                Log.d("QsExpandAnimator", "keyguard edit vi running");
            } else {
                TouchAnimator touchAnimator4 = this.mStackScrollLayoutAnimator;
                if (touchAnimator4 != null) {
                    touchAnimator4.setPosition(f2);
                }
            }
            if (this.mIsDateButtonOverlapped) {
                this.mDateAnimator.setPosition(f2);
            }
            this.mForceUpdate = false;
        }
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void updateAnimators() {
        View view;
        boolean z;
        float f;
        if (isThereNoView()) {
            return;
        }
        clearAnimationState();
        this.mAllViews.clear();
        this.mTileAnimators.clear();
        this.mTileAnimatorBuilders.clear();
        updateViews();
        TouchAnimator.Builder builder = new TouchAnimator.Builder();
        builder.mListener = this;
        this.mAnimatorForListener = builder.build();
        if (!isThereNoView()) {
            ((TunerService) Dependency.get(TunerService.class)).getValue(1, "brightness_on_top");
        }
        if (!isThereNoView()) {
            TouchAnimator.Builder builder2 = new TouchAnimator.Builder();
            builder2.addFloat(this.mQuickQSPanelTileContainer, "alpha", 1.0f, 0.0f);
            builder2.addFloat(this.mQuickQSPanelTileContainer, "translationY", 0.0f, this.mContext.getResources().getDimensionPixelSize(R.dimen.expand_animation_translation_y));
            builder2.mEndDelay = 0.5f;
            this.mQuickQsAnimator = builder2.build();
        }
        if (!isThereNoView()) {
            this.mAllViews.add(new Pair("view_visible_collapsed_state", this.mQuickQSPanelTileContainer));
            TouchAnimator.Builder builder3 = new TouchAnimator.Builder();
            builder3.addFloat(this.mShadeHeader, "alpha", 0.0f, 1.0f);
            builder3.addFloat(this.mShadeHeader, "translationY", -30.0f, 0.0f);
            builder3.mEndDelay = 0.5f;
            this.mShadeHeaderAnimator = builder3.build();
            TouchAnimator.Builder builder4 = new TouchAnimator.Builder();
            builder4.addFloat(this.mShadeHeader, "alpha", 0.0f, 1.0f);
            builder4.mStartDelay = 0.3f;
            this.mShadeHeaderExpandImmediateAnimator = builder4.build();
            SecQSPanelResourcePicker secQSPanelResourcePicker = this.mResourcePicker;
            Context context = this.mContext;
            secQSPanelResourcePicker.getClass();
            int qQSPanelSidePadding = SecQSPanelResourcePicker.getQQSPanelSidePadding(context);
            if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(this.mContext) == 1) {
                qQSPanelSidePadding *= -1;
            }
            int i = this.mContext.getResources().getConfiguration().orientation;
            if (!this.mQSScrollView.canScrollVertically(1)) {
                this.mQSScrollView.canScrollVertically(-1);
            }
            TouchAnimator.Builder builder5 = new TouchAnimator.Builder();
            builder5.addFloat(this.mPlmn, "alpha", 1.0f, 0.0f);
            float f2 = -qQSPanelSidePadding;
            builder5.addFloat(this.mPlmn, "translationX", 0.0f, f2);
            float f3 = qQSPanelSidePadding;
            builder5.addFloat(this.mNetworkSpeedContainer, "translationX", 0.0f, f3);
            builder5.addFloat(this.mSystemIcon, "translationX", 0.0f, f3);
            builder5.addFloat(this.mBatteryIcon, "translationX", 0.0f, f3);
            builder5.addFloat(this.mPrivacyContainer, "translationX", 0.0f, f3);
            builder5.addFloat(this.mClockDateContainer, "translationX", f3, 0.0f);
            builder5.addFloat(this.mSettingContainer, "translationX", f2, 0.0f);
            builder5.addFloat(this.mPowerContainer, "translationX", f2, 0.0f);
            builder5.addFloat(this.mEditContainer, "translationX", f2, 0.0f);
            builder5.addFloat(this.mMumContainer, "translationX", f2, 0.0f);
            this.mHeaderAnimator = builder5.build();
            TouchAnimator.Builder builder6 = new TouchAnimator.Builder();
            builder6.addFloat(this.mDate, "alpha", 1.0f, 0.0f);
            builder6.mEndDelay = 0.5f;
            this.mDateAnimator = builder6.build();
        }
        if (!isThereNoView()) {
            TouchAnimator.Builder builder7 = new TouchAnimator.Builder();
            builder7.addFloat(this.mQsRootPanel, "alpha", 0.0f, 1.0f);
            builder7.mStartDelay = 0.3f;
            this.mPanelAlphaAnimator = builder7.build();
            TouchAnimator.Builder builder8 = new TouchAnimator.Builder();
            builder8.addFloat(this.mQsRootPanel, "translationY", (-this.mHeader.getHeight()) * 0.2f, 0.0f);
            builder8.addFloat(this.mShadeHeader, "translationY", (-this.mHeader.getHeight()) * 0.2f, 0.0f);
            this.mPanelYAnimator = builder8.build();
            this.mAllViews.add(new Pair("view_visible_always", this.mTileLayout));
            TouchAnimator.Builder builder9 = new TouchAnimator.Builder();
            builder9.addFloat(this.mMumContainer, "alpha", 0.0f, 1.0f);
            builder9.addFloat(this.mEditContainer, "alpha", 0.0f, 1.0f);
            builder9.addFloat(this.mPowerContainer, "alpha", 0.0f, 1.0f);
            builder9.mStartDelay = 0.5f;
            this.mQsButtonsAnimator = builder9.build();
            this.mAllViews.add(new Pair("view_visible_expanded_state", this.mMumContainer));
            this.mAllViews.add(new Pair("view_visible_expanded_state", this.mEditContainer));
            this.mAllViews.add(new Pair("view_visible_expanded_state", this.mPowerContainer));
        }
        if (!isThereNoView()) {
            BrightnessMediaDevicesBar brightnessMediaDevicesBar = this.mBrightnessMediaDevicesBar;
            View view2 = null;
            if (brightnessMediaDevicesBar != null) {
                view = getBarView(brightnessMediaDevicesBar.mMediaDevicesBar);
            } else {
                view = null;
            }
            BrightnessMediaDevicesBar brightnessMediaDevicesBar2 = this.mBrightnessMediaDevicesBar;
            if (brightnessMediaDevicesBar2 != null) {
                view2 = getBarView(brightnessMediaDevicesBar2.mBrightnessBar);
            }
            View barView = getBarView(this.mMediaPlayerBar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            arrayList.add(view2);
            arrayList.add(barView);
            View barView2 = getBarView(this.mTopLargeTileBar);
            View barView3 = getBarView(this.mPagedTileLayoutBar);
            View barView4 = getBarView(this.mVideoCallMicModeBar);
            View barView5 = getBarView(this.mMultiSIMBar);
            View barView6 = getBarView(this.mExpandedBrightnessBar);
            View barView7 = getBarView(this.mBottomLargeTileBar);
            View barView8 = getBarView(this.mSecurityFooterBar);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(barView2);
            arrayList2.add(barView3);
            arrayList2.add(barView4);
            arrayList2.add(barView5);
            arrayList2.add(barView6);
            arrayList2.add(barView7);
            arrayList2.add(barView8);
            TouchAnimator.Builder builder10 = new TouchAnimator.Builder();
            TouchAnimator.Builder builder11 = new TouchAnimator.Builder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                View view3 = (View) it.next();
                if (view3 != null) {
                    builder10.addFloat(view3, "alpha", 1.0f, 0.0f);
                    builder10.addFloat(view3, "translationY", 0.0f, this.mContext.getResources().getDimensionPixelSize(R.dimen.expand_animation_translation_y));
                    builder10.mEndDelay = 0.5f;
                    this.mAllViews.add(new Pair("view_visible_collapsed_state", view3));
                }
            }
            this.mHeaderBarAnimator = builder10.build();
            if (this.mContext.getResources().getConfiguration().orientation == 2) {
                z = true;
            } else {
                z = false;
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                View view4 = (View) it2.next();
                if (view4 != null) {
                    builder11.addFloat(view4, "alpha", 0.0f, 1.0f);
                    float[] fArr = new float[2];
                    if (z) {
                        f = 10.0f;
                    } else {
                        f = 20.0f;
                    }
                    fArr[0] = f;
                    fArr[1] = 0.0f;
                    builder11.addFloat(view4, "translationY", fArr);
                    builder11.addFloat(view4, "scaleX", 0.93f, 1.0f);
                    builder11.addFloat(view4, "scaleY", 0.93f, 1.0f);
                    builder11.mStartDelay = 0.5f;
                    builder11.build();
                    this.mAllViews.add(new Pair("view_visible_expanded_state", view4));
                }
            }
            this.mPanelBarAnimator = builder11.build();
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.mStackScrollerController;
        if (notificationStackScrollLayoutController != null && notificationStackScrollLayoutController.mView != null) {
            TouchAnimator.Builder builder12 = new TouchAnimator.Builder();
            builder12.addFloat(this.mStackScrollerController.mView, "alpha", 1.0f, 0.0f);
            builder12.mStartDelay = 0.93f;
            builder12.mEndDelay = 0.04f;
            this.mStackScrollLayoutAnimator = builder12.build();
            this.mAllViews.add(new Pair("view_visible_collapsed_state", this.mStackScrollerController.mView));
        }
        this.mAnimatorsInitialiezed = true;
        setQsExpansionPosition(this.mLastPosition);
    }

    public final void updateViews() {
        SecQSPanel secQSPanel = this.mQsPanel;
        if (secQSPanel != null) {
            secQSPanel.removeOnLayoutChangeListener(this);
            this.mQsPanel.removeOnAttachStateChangeListener(this);
        }
        PagedTileLayout pagedTileLayout = this.mTileLayout;
        if (pagedTileLayout != null) {
            pagedTileLayout.mPageListener = null;
        }
        MotionLayout motionLayout = this.mShadeHeaderController.header;
        this.mShadeHeader = motionLayout;
        this.mPlmn = motionLayout.findViewById(R.id.carrier_group);
        this.mCarriers.clear();
        this.mCarrier1 = this.mPlmn.findViewById(R.id.carrier1);
        this.mCarrier2 = this.mPlmn.findViewById(R.id.carrier2);
        this.mCarrier3 = this.mPlmn.findViewById(R.id.carrier3);
        this.mCarriers.add(this.mCarrier1);
        this.mCarriers.add(this.mCarrier2);
        this.mCarriers.add(this.mCarrier3);
        this.mShadeHeaderClock = this.mShadeHeader.findViewById(R.id.clock);
        View findViewById = this.mQs.getView().findViewById(R.id.header);
        this.mHeader = findViewById;
        this.mHeaderDateSettingContainer = findViewById.findViewById(R.id.quick_qs_date_buttons);
        this.mButtonContainer = this.mHeader.findViewById(R.id.header_settings_container);
        this.mSettingContainer = this.mHeader.findViewById(R.id.settings_button_container);
        this.mMumContainer = this.mHeader.findViewById(R.id.mum_button_container);
        this.mPowerContainer = this.mHeader.findViewById(R.id.power_button_container);
        this.mEditContainer = this.mHeader.findViewById(R.id.edit_button_container);
        this.mQuickQsPanel = (SecQuickQSPanel) this.mHeader.findViewById(R.id.quick_qs_panel);
        this.mClockDateContainer = this.mHeader.findViewById(R.id.clock_parent);
        this.mClockButtonContainer = this.mHeader.findViewById(R.id.clock_date_buttons_container);
        this.mDate = (TextView) this.mClockDateContainer.findViewById(R.id.header_date);
        this.mClockView = (QSClockHeaderView) this.mHeader.findViewById(R.id.header_clock);
        this.mClockDateContainer.addOnLayoutChangeListener(this.mDateWidthDetector);
        this.mNetworkSpeedContainer = this.mShadeHeader.findViewById(R.id.quick_qs_network_speed_container);
        this.mSystemIcon = this.mShadeHeader.findViewById(R.id.statusIcons);
        this.mBatteryIcon = this.mShadeHeader.findViewById(R.id.batteryRemainingIcon);
        this.mPrivacyContainer = this.mShadeHeader.findViewById(R.id.privacy_container);
        View findViewWithTag = this.mQuickQsPanel.findViewWithTag("qqs_expand_anim");
        this.mQuickQSPanelTileContainer = findViewWithTag;
        if (findViewWithTag == null) {
            this.mQuickQSPanelTileContainer = this.mQuickQsPanel;
        }
        View view = this.mQs.getView();
        this.mQsRootPanel = view;
        this.mQSScrollView = (ScrollView) view.findViewById(R.id.expanded_qs_scroll_view);
        SecQSPanel secQSPanel2 = (SecQSPanel) this.mQs.getView().findViewById(R.id.quick_settings_panel);
        this.mQsPanel = secQSPanel2;
        secQSPanel2.addOnAttachStateChangeListener(this);
        this.mQsPanel.addOnLayoutChangeListener(this);
        PagedTileLayout pagedTileLayout2 = (PagedTileLayout) this.mQsPanelController.mTileLayout;
        this.mTileLayout = pagedTileLayout2;
        pagedTileLayout2.mPageListener = this;
        this.mBrightnessMediaDevicesBar = (BrightnessMediaDevicesBar) this.mBarController.getBarInCollapsed(BarType.BRIGHTNESS_MEDIA_DEVICES);
        this.mExpandedBrightnessBar = (BrightnessBar) this.mBarController.getBarInExpanded(BarType.BRIGHTNESS);
        this.mTopLargeTileBar = (TopLargeTileBar) this.mBarController.getBarInExpanded(BarType.TOP_LARGE_TILE);
        this.mBottomLargeTileBar = (BottomLargeTileBar) this.mBarController.getBarInExpanded(BarType.BOTTOM_LARGE_TILE);
        this.mPagedTileLayoutBar = (PagedTileLayoutBar) this.mBarController.getBarInExpanded(BarType.PAGED_TILE);
        this.mVideoCallMicModeBar = (VideoCallMicModeBar) this.mBarController.getBarInExpanded(BarType.VIDEO_CALL_MIC_MODE);
        this.mMultiSIMBar = (MultiSIMPreferredSlotBar) this.mBarController.getBarInExpanded(BarType.MULTI_SIM_PREFERRED_SLOT);
        this.mSecurityFooterBar = (SecurityFooterBar) this.mBarController.getBarInExpanded(BarType.SECURITY_FOOTER);
        this.mMediaPlayerBar = (QSMediaPlayerBar) this.mBarController.getBarInCollapsed(BarType.QS_MEDIA_PLAYER);
    }
}
