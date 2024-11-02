package com.android.systemui.globalactions.presentation.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.globalactions.presentation.view.FrontCoverContentView;
import com.android.systemui.globalactions.util.SystemUIConditions;
import com.samsung.android.globalactions.presentation.view.GlobalActionsAnimator;
import com.samsung.android.globalactions.presentation.view.ResourceFactory;
import com.samsung.android.globalactions.presentation.view.ResourceType;
import com.samsung.android.globalactions.presentation.view.ViewAnimationState;
import com.samsung.android.globalactions.presentation.view.ViewStateController;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.HandlerUtil;
import com.samsung.android.globalactions.util.LogWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FrontCoverViewAnimator implements GlobalActionsAnimator {
    public FrontCoverContentView.AnonymousClass2 mCallback;
    public final ConditionChecker mConditionChecker;
    public TextView mConfirmDescriptionView;
    public ViewGroup mConfirmIconLabelView;
    public ViewGroup mConfirmView;
    public final Context mContext;
    public final AnonymousClass1 mDismissDuringSecureConfirm = new Runnable() { // from class: com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator.1
        @Override // java.lang.Runnable
        public final void run() {
            FrontCoverContentView frontCoverContentView = FrontCoverContentView.this;
            if (frontCoverContentView.mLastFoldedState) {
                frontCoverContentView.mPresenter.onDismiss();
                frontCoverContentView.mParentView.dismiss();
                frontCoverContentView.mDialog.dismiss();
            }
        }
    };
    public final HandlerUtil mHandler;
    public float mOriginalConfirmLocationX;
    public float mOriginalConfirmLocationY;
    public final ResourceFactory mResourceFactory;
    public FrontCoverContentView.RootView mRootView;
    public ViewGroup mSelectedActionView;
    public final ViewStateController mViewStateController;
    public FrontCoverViewAnimator$$ExternalSyntheticLambda1 mViewTreeObserverListener;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator$1] */
    public FrontCoverViewAnimator(Context context, ConditionChecker conditionChecker, LogWrapper logWrapper, HandlerUtil handlerUtil, ResourceFactory resourceFactory, ViewStateController viewStateController) {
        this.mContext = context;
        this.mConditionChecker = conditionChecker;
        this.mHandler = handlerUtil;
        this.mResourceFactory = resourceFactory;
        this.mViewStateController = viewStateController;
    }

    public final AnimatorSet getDefaultConfirmAnimatorSet(boolean z) {
        float f;
        float paddingLeft;
        float f2;
        float f3;
        AnimatorSet animatorSet = new AnimatorSet();
        ViewGroup viewGroup = this.mConfirmIconLabelView;
        float[] fArr = new float[2];
        fArr[0] = viewGroup.getY();
        if (z) {
            f = this.mOriginalConfirmLocationY;
        } else {
            int[] iArr = new int[2];
            this.mSelectedActionView.getLocationOnScreen(iArr);
            f = iArr[1];
        }
        fArr[1] = f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(viewGroup, "y", fArr);
        ViewGroup viewGroup2 = this.mConfirmIconLabelView;
        float[] fArr2 = new float[2];
        fArr2[0] = viewGroup2.getX();
        if (z) {
            paddingLeft = this.mOriginalConfirmLocationX - this.mRootView.getPaddingLeft();
        } else {
            int[] iArr2 = new int[2];
            this.mCallback.getConfirmIconLabelView(this.mSelectedActionView).getLocationOnScreen(iArr2);
            paddingLeft = iArr2[0] - this.mRootView.getPaddingLeft();
        }
        fArr2[1] = paddingLeft;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(viewGroup2, "x", fArr2);
        TextView textView = this.mConfirmDescriptionView;
        float[] fArr3 = new float[2];
        float f4 = 0.0f;
        float f5 = 1.0f;
        if (z) {
            f2 = 0.0f;
        } else {
            f2 = 1.0f;
        }
        fArr3[0] = f2;
        if (z) {
            f4 = 1.0f;
        }
        fArr3[1] = f4;
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(textView, "alpha", fArr3);
        ofFloat3.setDuration(200L);
        if (FrontCoverContentView.this.mIsIconOnly) {
            ViewGroup viewGroup3 = this.mConfirmIconLabelView;
            float[] fArr4 = new float[2];
            fArr4[0] = viewGroup3.getScaleX();
            if (z) {
                f3 = 0.75f;
            } else {
                f3 = 1.0f;
            }
            fArr4[1] = f3;
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(viewGroup3, "scaleX", fArr4);
            ViewGroup viewGroup4 = this.mConfirmIconLabelView;
            float[] fArr5 = new float[2];
            fArr5[0] = viewGroup4.getScaleY();
            if (z) {
                f5 = 0.75f;
            }
            fArr5[1] = f5;
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4, ObjectAnimator.ofFloat(viewGroup4, "scaleY", fArr5));
        } else {
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        }
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(200L);
        if (z) {
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    FrontCoverViewAnimator frontCoverViewAnimator = FrontCoverViewAnimator.this;
                    FrontCoverContentView.this.mAdapter.mIsConfirmView = true;
                    frontCoverViewAnimator.mSelectedActionView.setVisibility(0);
                    FrontCoverContentView.this.mListView.setVisibility(4);
                    FrontCoverViewAnimator frontCoverViewAnimator2 = FrontCoverViewAnimator.this;
                    frontCoverViewAnimator2.getClass();
                    frontCoverViewAnimator2.mViewStateController.setState(ViewAnimationState.IDLE);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    FrontCoverViewAnimator.this.mConfirmIconLabelView.setAlpha(1.0f);
                    FrontCoverViewAnimator.this.mSelectedActionView.setVisibility(4);
                    FrontCoverContentView.this.mListView.animate().alpha(0.0f).setDuration(200L).start();
                }
            });
        } else {
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    FrontCoverViewAnimator.this.mSelectedActionView.setVisibility(0);
                    FrontCoverViewAnimator.this.mConfirmView.removeAllViews();
                    FrontCoverViewAnimator.this.mConfirmView.setVisibility(8);
                    View view = FrontCoverContentView.this.mAdapter.mLastAnimatedView;
                    if (view != null) {
                        view.setVisibility(0);
                    }
                    FrontCoverContentView.this.mSelectedViewModel.getActionInfo().setStateLabel("");
                    FrontCoverViewAnimator frontCoverViewAnimator = FrontCoverViewAnimator.this;
                    frontCoverViewAnimator.getClass();
                    frontCoverViewAnimator.mViewStateController.setState(ViewAnimationState.IDLE);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    FrontCoverContentView.this.mListView.setVisibility(0);
                    FrontCoverViewAnimator.this.mSelectedActionView.setVisibility(4);
                    FrontCoverContentView.this.mListView.animate().alpha(1.0f).setDuration(200L).start();
                }
            });
        }
        return animatorSet;
    }

    public final boolean isHideConfirmAnimationRunning() {
        return false;
    }

    public final boolean isSafeModeConfirm() {
        return false;
    }

    public final boolean isShowConfirmAnimationRunning() {
        return false;
    }

    public final void startDismissAnimation(boolean z) {
        this.mViewStateController.setState(ViewAnimationState.DISMISS_ANIMATE);
        FrontCoverContentView frontCoverContentView = FrontCoverContentView.this;
        frontCoverContentView.mAdapter.mIsConfirmView = false;
        if (z) {
            frontCoverContentView.mParentView.setCoverSecureConfirmState(true);
            frontCoverContentView.mForceDismiss = true;
            this.mRootView.findViewById(R.id.front_cover_back_button).setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.mConfirmView.findViewById(this.mResourceFactory.get(ResourceType.ID_COVER_BTN_BACKGROUND));
            this.mConfirmIconLabelView = viewGroup;
            viewGroup.setVisibility(8);
            this.mConfirmDescriptionView = (TextView) this.mConfirmView.findViewById(this.mResourceFactory.get(ResourceType.ID_COVER_TEXT));
            if (this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_CAMERA_VIEW_COVER_CLOSED)) {
                int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.global_actions_camera_view_cover_noti_padding);
                this.mConfirmDescriptionView.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
                this.mConfirmDescriptionView.setTextSize(this.mContext.getResources().getDimensionPixelOffset(R.dimen.global_actions_camera_view_cover_noti_font_size));
                this.mConfirmDescriptionView.setTextColor(this.mContext.getResources().getColor(R.color.sec_global_actions_camera_view_cover_noti_text));
                if (FrontCoverContentView.this.mSelectedViewModel.getActionInfo().getName() == "power") {
                    this.mConfirmDescriptionView.setText(this.mContext.getResources().getString(android.R.string.permdesc_recordAudio));
                } else {
                    this.mConfirmDescriptionView.setText(this.mContext.getResources().getString(android.R.string.permdesc_register_call_provider));
                }
            } else {
                this.mConfirmDescriptionView.setText(this.mContext.getResources().getString(android.R.string.permdesc_register_sim_subscription));
                if (!FrontCoverContentView.this.mIsIconOnly) {
                    this.mConfirmView.findViewById(this.mResourceFactory.get(ResourceType.ID_COVER_ANIM)).setVisibility(0);
                    ((TextView) this.mConfirmView.findViewById(this.mResourceFactory.get(ResourceType.ID_COVER_TEXT))).setTextSize(0, 30.0f);
                }
                this.mHandler.postDelayed(this.mDismissDuringSecureConfirm, 3000L);
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FrontCoverViewAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
                }
            }, 200L);
            return;
        }
        frontCoverContentView.mParentView.setCoverSecureConfirmState(false);
        frontCoverContentView.mForceDismiss = false;
        this.mHandler.removeCallbacks(this.mDismissDuringSecureConfirm);
        this.mViewStateController.setState(ViewAnimationState.IDLE);
        FrontCoverContentView.AnonymousClass2 anonymousClass2 = this.mCallback;
        anonymousClass2.getClass();
        FrontCoverContentView frontCoverContentView2 = FrontCoverContentView.this;
        frontCoverContentView2.mParentView.dismiss();
        frontCoverContentView2.mDialog.dismiss();
    }

    public final void startDismissConfirmAnimation() {
        FrontCoverContentView frontCoverContentView = FrontCoverContentView.this;
        if (frontCoverContentView.mForceDismiss) {
            frontCoverContentView.mParentView.setCoverSecureConfirmState(false);
            frontCoverContentView.mForceDismiss = false;
            FrontCoverContentView.AnonymousClass2 anonymousClass2 = this.mCallback;
            anonymousClass2.getClass();
            FrontCoverContentView frontCoverContentView2 = FrontCoverContentView.this;
            frontCoverContentView2.mParentView.dismiss();
            frontCoverContentView2.mDialog.dismiss();
            this.mViewStateController.setState(ViewAnimationState.IDLE);
            return;
        }
        this.mViewStateController.setState(ViewAnimationState.DISMISS_ANIMATE);
        getDefaultConfirmAnimatorSet(false).start();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator$$ExternalSyntheticLambda1] */
    public final void startShowConfirmAnimation() {
        FrontCoverContentView frontCoverContentView = FrontCoverContentView.this;
        FrontCoverContentItemView frontCoverContentItemView = new FrontCoverContentItemView(frontCoverContentView.mDialog.getContext(), frontCoverContentView.mSelectedViewModel, frontCoverContentView.mConfirmView, frontCoverContentView.mIsIconOnly, frontCoverContentView.mIsCameraViewCover, frontCoverContentView.mResourceFactory);
        frontCoverContentView.mConfirmView.removeAllViews();
        ViewGroup viewGroup = frontCoverContentView.mConfirmView;
        LayoutInflater from = LayoutInflater.from(frontCoverContentItemView.mContext);
        ResourceType resourceType = ResourceType.LAYOUT_FRONT_COVER_ITEM;
        ResourceFactory resourceFactory = frontCoverContentItemView.mResourceFactory;
        View inflate = from.inflate(resourceFactory.get(resourceType), frontCoverContentItemView.mParent, false);
        frontCoverContentItemView.setViewAttrs(inflate, true);
        inflate.setOnClickListener(new FrontCoverContentItemView$$ExternalSyntheticLambda1());
        inflate.setClickable(false);
        ((TextView) inflate.findViewById(resourceFactory.get(ResourceType.ID_COVER_TEXT))).setVisibility(0);
        viewGroup.addView(inflate);
        frontCoverContentView.mConfirmView.setVisibility(0);
        FrontCoverContentView.AnonymousClass2 anonymousClass2 = this.mCallback;
        ViewGroup viewGroup2 = FrontCoverContentView.this.mConfirmView;
        this.mConfirmView = viewGroup2;
        this.mConfirmIconLabelView = anonymousClass2.getConfirmIconLabelView(viewGroup2);
        this.mConfirmDescriptionView = (TextView) this.mConfirmView.findViewById(FrontCoverContentView.this.mResourceFactory.get(ResourceType.ID_COVER_TEXT));
        FrontCoverContentView frontCoverContentView2 = FrontCoverContentView.this;
        this.mSelectedActionView = (ViewGroup) frontCoverContentView2.mListView.getChildAt(frontCoverContentView2.mSelectedViewModel.getActionInfo().getViewIndex());
        this.mViewStateController.setState(ViewAnimationState.SHOW_ANIMATE);
        this.mViewTreeObserverListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.globalactions.presentation.view.FrontCoverViewAnimator$$ExternalSyntheticLambda1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                FrontCoverViewAnimator frontCoverViewAnimator = FrontCoverViewAnimator.this;
                frontCoverViewAnimator.mConfirmView.getViewTreeObserver().removeOnGlobalLayoutListener(frontCoverViewAnimator.mViewTreeObserverListener);
                frontCoverViewAnimator.mConfirmIconLabelView.getLocationOnScreen(new int[2]);
                frontCoverViewAnimator.mOriginalConfirmLocationX = r2[0];
                frontCoverViewAnimator.mConfirmIconLabelView.getLocationOnScreen(new int[2]);
                frontCoverViewAnimator.mOriginalConfirmLocationY = r3[1];
                ViewGroup viewGroup3 = frontCoverViewAnimator.mConfirmIconLabelView;
                frontCoverViewAnimator.mSelectedActionView.getLocationOnScreen(new int[2]);
                viewGroup3.setY(r5[1]);
                ViewGroup viewGroup4 = frontCoverViewAnimator.mConfirmIconLabelView;
                frontCoverViewAnimator.mCallback.getConfirmIconLabelView(frontCoverViewAnimator.mSelectedActionView).getLocationOnScreen(new int[2]);
                viewGroup4.setX(r1[0] - frontCoverViewAnimator.mRootView.getPaddingLeft());
                frontCoverViewAnimator.getDefaultConfirmAnimatorSet(true).start();
            }
        };
        this.mConfirmView.getViewTreeObserver().addOnGlobalLayoutListener(this.mViewTreeObserverListener);
    }

    public final void cancelHideConfirmAnimation() {
    }

    public final void cancelShowConfirmAnimation() {
    }

    public final void initializeSelectedActionView() {
    }

    public final void setListViewLand() {
    }

    public final void setListViewPort() {
    }

    public final void showMainViewLand() {
    }

    public final void showMainViewPort() {
    }

    public final void startDismissSafeModeAnimation() {
    }

    public final void startSetSafeModeAnimation() {
    }

    public final void startShowAnimation() {
    }

    public final void startShowSafeModeAnimation() {
    }
}
