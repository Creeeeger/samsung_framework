package com.android.systemui.clipboardoverlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.clipboardoverlay.ClipboardOverlayController;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.screenshot.DraggableConstraintLayout;
import com.android.systemui.screenshot.OverlayActionChip;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ClipboardOverlayView extends DraggableConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AccessibilityManager mAccessibilityManager;
    public final ArrayList mActionChips;
    public LinearLayout mActionContainer;
    public View mActionContainerBackground;
    public View mClipboardPreview;
    public View mDismissButton;
    public final DisplayMetrics mDisplayMetrics;
    public TextView mHiddenPreview;
    public ImageView mImagePreview;
    public LinearLayout mMinimizedPreview;
    public View mPreviewBorder;
    public OverlayActionChip mRemoteCopyChip;
    public OverlayActionChip mShareChip;
    public TextView mTextPreview;

    public ClipboardOverlayView(Context context) {
        this(context, null);
    }

    @Override // com.android.systemui.screenshot.DraggableConstraintLayout, android.view.View
    public final void onFinishInflate() {
        this.mActionContainerBackground = requireViewById(R.id.actions_container_background);
        this.mActionContainer = (LinearLayout) requireViewById(R.id.actions);
        this.mClipboardPreview = requireViewById(R.id.clipboard_preview);
        this.mPreviewBorder = requireViewById(R.id.preview_border);
        this.mImagePreview = (ImageView) requireViewById(R.id.image_preview);
        this.mTextPreview = (TextView) requireViewById(R.id.text_preview);
        this.mHiddenPreview = (TextView) requireViewById(R.id.hidden_preview);
        this.mMinimizedPreview = (LinearLayout) requireViewById(R.id.minimized_preview);
        this.mShareChip = (OverlayActionChip) requireViewById(R.id.share_chip);
        this.mRemoteCopyChip = (OverlayActionChip) requireViewById(R.id.remote_copy_chip);
        this.mDismissButton = requireViewById(R.id.dismiss_button);
        this.mShareChip.setAlpha(1.0f);
        this.mRemoteCopyChip.setAlpha(1.0f);
        this.mShareChip.setContentDescription(((ViewGroup) this).mContext.getString(17042801));
        this.mRemoteCopyChip.setIcon(Icon.createWithResource(((ViewGroup) this).mContext, R.drawable.ic_baseline_devices_24), true);
        this.mShareChip.setIcon(Icon.createWithResource(((ViewGroup) this).mContext, R.drawable.ic_screenshot_share), true);
        this.mRemoteCopyChip.setContentDescription(((ViewGroup) this).mContext.getString(R.string.clipboard_send_nearby_description));
        this.mTextPreview.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                ClipboardOverlayView clipboardOverlayView = ClipboardOverlayView.this;
                int height = clipboardOverlayView.mTextPreview.getHeight() - (clipboardOverlayView.mTextPreview.getPaddingBottom() + clipboardOverlayView.mTextPreview.getPaddingTop());
                TextView textView = clipboardOverlayView.mTextPreview;
                textView.setMaxLines(height / textView.getLineHeight());
                return true;
            }
        });
        super.onFinishInflate();
    }

    @Override // com.android.systemui.screenshot.DraggableConstraintLayout
    public final void setCallbacks(DraggableConstraintLayout.SwipeDismissCallbacks swipeDismissCallbacks) {
        this.mCallbacks = swipeDismissCallbacks;
        final ClipboardOverlayController.AnonymousClass1 anonymousClass1 = (ClipboardOverlayController.AnonymousClass1) swipeDismissCallbacks;
        final int i = 0;
        this.mShareChip.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        int i2 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController.this.getClass();
                        return;
                    case 1:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass13 = anonymousClass1;
                        int i3 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController = ClipboardOverlayController.this;
                        clipboardOverlayController.mClipboardLogger.logSessionComplete(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_DISMISS_TAPPED);
                        clipboardOverlayController.animateOut();
                        return;
                    case 2:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass14 = anonymousClass1;
                        int i4 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda2 = ClipboardOverlayController.this.mOnRemoteCopyTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda2 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda2.run();
                            return;
                        }
                        return;
                    case 3:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass15 = anonymousClass1;
                        int i5 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda22 = ClipboardOverlayController.this.mOnPreviewTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda22 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda22.run();
                            return;
                        }
                        return;
                    default:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass16 = anonymousClass1;
                        int i6 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController2 = ClipboardOverlayController.this;
                        Animator animator = clipboardOverlayController2.mEnterAnimator;
                        if (animator != null && animator.isRunning()) {
                            clipboardOverlayController2.mEnterAnimator.cancel();
                        }
                        final ClipboardOverlayView clipboardOverlayView = clipboardOverlayController2.mView;
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clipboardOverlayView.mMinimizedPreview, "alpha", 1.0f, 0.0f);
                        ofFloat.setDuration(66L);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayView.this.mMinimizedPreview.setVisibility(8);
                                ClipboardOverlayView.this.mMinimizedPreview.setAlpha(1.0f);
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator = ofFloat;
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayController.4
                            public AnonymousClass4() {
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayController clipboardOverlayController3 = ClipboardOverlayController.this;
                                if (clipboardOverlayController3.mIsMinimized) {
                                    clipboardOverlayController3.mClipboardLogger.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED, 0, (String) null);
                                    ClipboardOverlayController.this.mIsMinimized = false;
                                }
                                FeatureFlags featureFlags = ClipboardOverlayController.this.mFeatureFlags;
                                Flags flags = Flags.INSTANCE;
                                featureFlags.getClass();
                                ClipboardOverlayController.this.mView.setMinimized(false);
                                int[] iArr = AnonymousClass8.$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type;
                                throw null;
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator.start();
                        return;
                }
            }
        });
        final int i2 = 1;
        this.mDismissButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        int i22 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController.this.getClass();
                        return;
                    case 1:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass13 = anonymousClass1;
                        int i3 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController = ClipboardOverlayController.this;
                        clipboardOverlayController.mClipboardLogger.logSessionComplete(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_DISMISS_TAPPED);
                        clipboardOverlayController.animateOut();
                        return;
                    case 2:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass14 = anonymousClass1;
                        int i4 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda2 = ClipboardOverlayController.this.mOnRemoteCopyTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda2 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda2.run();
                            return;
                        }
                        return;
                    case 3:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass15 = anonymousClass1;
                        int i5 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda22 = ClipboardOverlayController.this.mOnPreviewTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda22 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda22.run();
                            return;
                        }
                        return;
                    default:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass16 = anonymousClass1;
                        int i6 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController2 = ClipboardOverlayController.this;
                        Animator animator = clipboardOverlayController2.mEnterAnimator;
                        if (animator != null && animator.isRunning()) {
                            clipboardOverlayController2.mEnterAnimator.cancel();
                        }
                        final ClipboardOverlayView clipboardOverlayView = clipboardOverlayController2.mView;
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clipboardOverlayView.mMinimizedPreview, "alpha", 1.0f, 0.0f);
                        ofFloat.setDuration(66L);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayView.this.mMinimizedPreview.setVisibility(8);
                                ClipboardOverlayView.this.mMinimizedPreview.setAlpha(1.0f);
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator = ofFloat;
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayController.4
                            public AnonymousClass4() {
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayController clipboardOverlayController3 = ClipboardOverlayController.this;
                                if (clipboardOverlayController3.mIsMinimized) {
                                    clipboardOverlayController3.mClipboardLogger.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED, 0, (String) null);
                                    ClipboardOverlayController.this.mIsMinimized = false;
                                }
                                FeatureFlags featureFlags = ClipboardOverlayController.this.mFeatureFlags;
                                Flags flags = Flags.INSTANCE;
                                featureFlags.getClass();
                                ClipboardOverlayController.this.mView.setMinimized(false);
                                int[] iArr = AnonymousClass8.$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type;
                                throw null;
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator.start();
                        return;
                }
            }
        });
        final int i3 = 2;
        this.mRemoteCopyChip.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        int i22 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController.this.getClass();
                        return;
                    case 1:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass13 = anonymousClass1;
                        int i32 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController = ClipboardOverlayController.this;
                        clipboardOverlayController.mClipboardLogger.logSessionComplete(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_DISMISS_TAPPED);
                        clipboardOverlayController.animateOut();
                        return;
                    case 2:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass14 = anonymousClass1;
                        int i4 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda2 = ClipboardOverlayController.this.mOnRemoteCopyTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda2 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda2.run();
                            return;
                        }
                        return;
                    case 3:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass15 = anonymousClass1;
                        int i5 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda22 = ClipboardOverlayController.this.mOnPreviewTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda22 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda22.run();
                            return;
                        }
                        return;
                    default:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass16 = anonymousClass1;
                        int i6 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController2 = ClipboardOverlayController.this;
                        Animator animator = clipboardOverlayController2.mEnterAnimator;
                        if (animator != null && animator.isRunning()) {
                            clipboardOverlayController2.mEnterAnimator.cancel();
                        }
                        final ClipboardOverlayView clipboardOverlayView = clipboardOverlayController2.mView;
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clipboardOverlayView.mMinimizedPreview, "alpha", 1.0f, 0.0f);
                        ofFloat.setDuration(66L);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayView.this.mMinimizedPreview.setVisibility(8);
                                ClipboardOverlayView.this.mMinimizedPreview.setAlpha(1.0f);
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator = ofFloat;
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayController.4
                            public AnonymousClass4() {
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayController clipboardOverlayController3 = ClipboardOverlayController.this;
                                if (clipboardOverlayController3.mIsMinimized) {
                                    clipboardOverlayController3.mClipboardLogger.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED, 0, (String) null);
                                    ClipboardOverlayController.this.mIsMinimized = false;
                                }
                                FeatureFlags featureFlags = ClipboardOverlayController.this.mFeatureFlags;
                                Flags flags = Flags.INSTANCE;
                                featureFlags.getClass();
                                ClipboardOverlayController.this.mView.setMinimized(false);
                                int[] iArr = AnonymousClass8.$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type;
                                throw null;
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator.start();
                        return;
                }
            }
        });
        final int i4 = 3;
        this.mClipboardPreview.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        int i22 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController.this.getClass();
                        return;
                    case 1:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass13 = anonymousClass1;
                        int i32 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController = ClipboardOverlayController.this;
                        clipboardOverlayController.mClipboardLogger.logSessionComplete(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_DISMISS_TAPPED);
                        clipboardOverlayController.animateOut();
                        return;
                    case 2:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass14 = anonymousClass1;
                        int i42 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda2 = ClipboardOverlayController.this.mOnRemoteCopyTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda2 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda2.run();
                            return;
                        }
                        return;
                    case 3:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass15 = anonymousClass1;
                        int i5 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda22 = ClipboardOverlayController.this.mOnPreviewTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda22 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda22.run();
                            return;
                        }
                        return;
                    default:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass16 = anonymousClass1;
                        int i6 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController2 = ClipboardOverlayController.this;
                        Animator animator = clipboardOverlayController2.mEnterAnimator;
                        if (animator != null && animator.isRunning()) {
                            clipboardOverlayController2.mEnterAnimator.cancel();
                        }
                        final ClipboardOverlayView clipboardOverlayView = clipboardOverlayController2.mView;
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clipboardOverlayView.mMinimizedPreview, "alpha", 1.0f, 0.0f);
                        ofFloat.setDuration(66L);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayView.this.mMinimizedPreview.setVisibility(8);
                                ClipboardOverlayView.this.mMinimizedPreview.setAlpha(1.0f);
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator = ofFloat;
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayController.4
                            public AnonymousClass4() {
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayController clipboardOverlayController3 = ClipboardOverlayController.this;
                                if (clipboardOverlayController3.mIsMinimized) {
                                    clipboardOverlayController3.mClipboardLogger.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED, 0, (String) null);
                                    ClipboardOverlayController.this.mIsMinimized = false;
                                }
                                FeatureFlags featureFlags = ClipboardOverlayController.this.mFeatureFlags;
                                Flags flags = Flags.INSTANCE;
                                featureFlags.getClass();
                                ClipboardOverlayController.this.mView.setMinimized(false);
                                int[] iArr = AnonymousClass8.$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type;
                                throw null;
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator.start();
                        return;
                }
            }
        });
        final int i5 = 4;
        this.mMinimizedPreview.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        int i22 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController.this.getClass();
                        return;
                    case 1:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass13 = anonymousClass1;
                        int i32 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController = ClipboardOverlayController.this;
                        clipboardOverlayController.mClipboardLogger.logSessionComplete(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_DISMISS_TAPPED);
                        clipboardOverlayController.animateOut();
                        return;
                    case 2:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass14 = anonymousClass1;
                        int i42 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda2 = ClipboardOverlayController.this.mOnRemoteCopyTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda2 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda2.run();
                            return;
                        }
                        return;
                    case 3:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass15 = anonymousClass1;
                        int i52 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController$$ExternalSyntheticLambda2 clipboardOverlayController$$ExternalSyntheticLambda22 = ClipboardOverlayController.this.mOnPreviewTapped;
                        if (clipboardOverlayController$$ExternalSyntheticLambda22 != null) {
                            clipboardOverlayController$$ExternalSyntheticLambda22.run();
                            return;
                        }
                        return;
                    default:
                        ClipboardOverlayController.AnonymousClass1 anonymousClass16 = anonymousClass1;
                        int i6 = ClipboardOverlayView.$r8$clinit;
                        ClipboardOverlayController clipboardOverlayController2 = ClipboardOverlayController.this;
                        Animator animator = clipboardOverlayController2.mEnterAnimator;
                        if (animator != null && animator.isRunning()) {
                            clipboardOverlayController2.mEnterAnimator.cancel();
                        }
                        final ClipboardOverlayView clipboardOverlayView = clipboardOverlayController2.mView;
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clipboardOverlayView.mMinimizedPreview, "alpha", 1.0f, 0.0f);
                        ofFloat.setDuration(66L);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayView.this.mMinimizedPreview.setVisibility(8);
                                ClipboardOverlayView.this.mMinimizedPreview.setAlpha(1.0f);
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator = ofFloat;
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.clipboardoverlay.ClipboardOverlayController.4
                            public AnonymousClass4() {
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator2) {
                                super.onAnimationEnd(animator2);
                                ClipboardOverlayController clipboardOverlayController3 = ClipboardOverlayController.this;
                                if (clipboardOverlayController3.mIsMinimized) {
                                    clipboardOverlayController3.mClipboardLogger.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED, 0, (String) null);
                                    ClipboardOverlayController.this.mIsMinimized = false;
                                }
                                FeatureFlags featureFlags = ClipboardOverlayController.this.mFeatureFlags;
                                Flags flags = Flags.INSTANCE;
                                featureFlags.getClass();
                                ClipboardOverlayController.this.mView.setMinimized(false);
                                int[] iArr = AnonymousClass8.$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type;
                                throw null;
                            }
                        });
                        clipboardOverlayController2.mEnterAnimator.start();
                        return;
                }
            }
        });
    }

    public final void setInsets(WindowInsets windowInsets, int i) {
        Rect rect;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        Insets insets = windowInsets.getInsets(WindowInsets.Type.navigationBars());
        Insets insets2 = windowInsets.getInsets(WindowInsets.Type.ime());
        if (displayCutout == null) {
            rect = new Rect(0, 0, 0, Math.max(insets2.bottom, insets.bottom));
        } else {
            Insets waterfallInsets = displayCutout.getWaterfallInsets();
            if (i == 1) {
                rect = new Rect(waterfallInsets.left, Math.max(displayCutout.getSafeInsetTop(), waterfallInsets.top), waterfallInsets.right, Math.max(insets2.bottom, Math.max(displayCutout.getSafeInsetBottom(), Math.max(insets.bottom, waterfallInsets.bottom))));
            } else {
                rect = new Rect(waterfallInsets.left, waterfallInsets.top, waterfallInsets.right, Math.max(insets2.bottom, Math.max(insets.bottom, waterfallInsets.bottom)));
            }
        }
        layoutParams.setMargins(rect.left, rect.top, rect.right, rect.bottom);
        setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void setMinimized(boolean z) {
        if (z) {
            this.mMinimizedPreview.setVisibility(0);
            this.mClipboardPreview.setVisibility(8);
            this.mPreviewBorder.setVisibility(8);
            this.mActionContainer.setVisibility(8);
            this.mActionContainerBackground.setVisibility(8);
            return;
        }
        this.mMinimizedPreview.setVisibility(8);
        this.mClipboardPreview.setVisibility(0);
        this.mPreviewBorder.setVisibility(0);
        this.mActionContainer.setVisibility(0);
    }

    public ClipboardOverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClipboardOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mActionChips = new ArrayList();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mDisplayMetrics = displayMetrics;
        ((ViewGroup) this).mContext.getDisplay().getRealMetrics(displayMetrics);
        this.mAccessibilityManager = AccessibilityManager.getInstance(((ViewGroup) this).mContext);
    }
}
