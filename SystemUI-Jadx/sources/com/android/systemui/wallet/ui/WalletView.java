package com.android.systemui.wallet.ui;

import android.R;
import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.settingslib.Utils;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.classifier.FalsingCollectorImpl;
import com.android.systemui.classifier.FalsingCollectorImpl$$ExternalSyntheticLambda0;
import com.android.systemui.classifier.FalsingDataProvider;
import com.android.systemui.wallet.ui.WalletCardCarousel;
import com.android.systemui.wallet.ui.WalletScreenController;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WalletView extends FrameLayout implements WalletCardCarousel.OnCardScrollListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Button mActionButton;
    public final float mAnimationTranslationX;
    public final Button mAppButton;
    public final WalletCardCarousel mCardCarousel;
    public final ViewGroup mCardCarouselContainer;
    public final TextView mCardLabel;
    public View.OnClickListener mDeviceLockedActionOnClickListener;
    public final ViewGroup mEmptyStateView;
    public final TextView mErrorView;
    public FalsingCollector mFalsingCollector;
    public final ImageView mIcon;
    public boolean mIsDeviceLocked;
    public boolean mIsUdfpsEnabled;
    public final Interpolator mOutInterpolator;
    public View.OnClickListener mShowWalletAppOnClickListener;
    public final Button mToolbarAppButton;

    public WalletView(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.CharSequence] */
    public static CharSequence getLabelText(WalletCardViewInfo walletCardViewInfo) {
        WalletScreenController.QAWalletCardViewInfo qAWalletCardViewInfo = (WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo;
        CharSequence cardLabel = qAWalletCardViewInfo.mWalletCard.getCardLabel();
        String str = "";
        if (cardLabel == null) {
            cardLabel = "";
        }
        String[] split = cardLabel.toString().split("\\n");
        if (split.length == 2) {
            return split[0];
        }
        ?? cardLabel2 = qAWalletCardViewInfo.mWalletCard.getCardLabel();
        if (cardLabel2 != 0) {
            str = cardLabel2;
        }
        return str;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FalsingCollector falsingCollector = this.mFalsingCollector;
        if (falsingCollector != null) {
            ((FalsingCollectorImpl) falsingCollector).onTouchEvent(motionEvent);
        }
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        FalsingCollector falsingCollector2 = this.mFalsingCollector;
        if (falsingCollector2 != null) {
            FalsingCollectorImpl falsingCollectorImpl = (FalsingCollectorImpl) falsingCollector2;
            FalsingDataProvider falsingDataProvider = falsingCollectorImpl.mFalsingDataProvider;
            Objects.requireNonNull(falsingDataProvider);
            falsingCollectorImpl.mMainExecutor.executeDelayed(100L, new FalsingCollectorImpl$$ExternalSyntheticLambda0(falsingDataProvider));
        }
        return dispatchTouchEvent;
    }

    public Button getAppButton() {
        return this.mAppButton;
    }

    public ViewGroup getCardCarouselContainer() {
        return this.mCardCarouselContainer;
    }

    public TextView getCardLabel() {
        return this.mCardLabel;
    }

    public ViewGroup getEmptyStateView() {
        return this.mEmptyStateView;
    }

    public TextView getErrorView() {
        return this.mErrorView;
    }

    public final void onCardScroll(WalletCardViewInfo walletCardViewInfo, WalletCardViewInfo walletCardViewInfo2, float f) {
        CharSequence labelText = getLabelText(walletCardViewInfo);
        Context context = ((FrameLayout) this).mContext;
        Drawable drawable = ((WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo).mIconDrawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setTint(Utils.getColorAttrDefaultColor(R.^attr-private.colorProgressBackgroundNormal, context, 0));
        }
        renderActionButton(walletCardViewInfo, this.mIsDeviceLocked, this.mIsUdfpsEnabled);
        walletCardViewInfo.getClass();
        if (walletCardViewInfo2 != null) {
            z = ((WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo).getCardId().equals(((WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo2).getCardId());
        }
        if (z) {
            this.mCardLabel.setAlpha(1.0f);
            this.mIcon.setAlpha(1.0f);
            this.mActionButton.setAlpha(1.0f);
        } else {
            this.mCardLabel.setText(labelText);
            this.mIcon.setImageDrawable(drawable);
            this.mCardLabel.setAlpha(f);
            this.mIcon.setAlpha(f);
            this.mActionButton.setAlpha(f);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        WalletCardCarousel walletCardCarousel = this.mCardCarousel;
        int width = getWidth();
        if (walletCardCarousel.mExpectedViewWidth != width) {
            walletCardCarousel.mExpectedViewWidth = width;
            Resources resources = walletCardCarousel.getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int round = Math.round(Math.min(width, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels)) * 0.69f);
            walletCardCarousel.mCardWidthPx = round;
            walletCardCarousel.mCardHeightPx = Math.round(round / 1.5909091f);
            float f = walletCardCarousel.mCardWidthPx;
            walletCardCarousel.mCornerRadiusPx = 0.035714287f * f;
            walletCardCarousel.mCardMarginPx = Math.round(f * (-0.03f));
            int dimensionPixelSize = (resources.getDimensionPixelSize(com.android.systemui.R.dimen.card_margin) * 2) + walletCardCarousel.mCardWidthPx;
            walletCardCarousel.mTotalCardWidth = dimensionPixelSize;
            walletCardCarousel.mCardEdgeToCenterDistance = dimensionPixelSize / 2.0f;
            walletCardCarousel.updatePadding(width);
            WalletCardCarousel.OnSelectionListener onSelectionListener = walletCardCarousel.mSelectionListener;
            if (onSelectionListener != null) {
                ((WalletScreenController) onSelectionListener).queryWalletCards();
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCardCarousel.onTouchEvent(motionEvent) && !super.onTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    public final void renderActionButton(final WalletCardViewInfo walletCardViewInfo, boolean z, boolean z2) {
        String str;
        View.OnClickListener onClickListener;
        CharSequence cardLabel = ((WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo).mWalletCard.getCardLabel();
        if (cardLabel == null) {
            cardLabel = "";
        }
        String[] split = cardLabel.toString().split("\\n");
        if (split.length == 2) {
            str = split[1];
        } else {
            str = null;
        }
        if (!z2 && str != null) {
            this.mActionButton.setVisibility(0);
            this.mActionButton.setText(str);
            Button button = this.mActionButton;
            if (z) {
                onClickListener = this.mDeviceLockedActionOnClickListener;
            } else {
                onClickListener = new View.OnClickListener() { // from class: com.android.systemui.wallet.ui.WalletView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletCardViewInfo walletCardViewInfo2 = WalletCardViewInfo.this;
                        int i = WalletView.$r8$clinit;
                        try {
                            BroadcastOptions makeBasic = BroadcastOptions.makeBasic();
                            makeBasic.setInteractive(true);
                            makeBasic.setPendingIntentBackgroundActivityStartMode(1);
                            ((WalletScreenController.QAWalletCardViewInfo) walletCardViewInfo2).mWalletCard.getPendingIntent().send(makeBasic.toBundle());
                        } catch (PendingIntent.CanceledException unused) {
                            Log.w("WalletView", "Error sending pending intent for wallet card.");
                        }
                    }
                };
            }
            button.setOnClickListener(onClickListener);
            return;
        }
        this.mActionButton.setVisibility(8);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0158 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showCardCarousel(java.util.List r9, int r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallet.ui.WalletView.showCardCarousel(java.util.List, int, boolean, boolean):void");
    }

    public final void showEmptyStateView(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, WalletScreenController$$ExternalSyntheticLambda3 walletScreenController$$ExternalSyntheticLambda3) {
        this.mEmptyStateView.setVisibility(0);
        this.mErrorView.setVisibility(8);
        this.mCardCarousel.setVisibility(8);
        this.mIcon.setImageDrawable(drawable);
        this.mIcon.setContentDescription(charSequence);
        this.mCardLabel.setText(com.android.systemui.R.string.wallet_empty_state_label);
        ((ImageView) this.mEmptyStateView.requireViewById(com.android.systemui.R.id.empty_state_icon)).setImageDrawable(((FrameLayout) this).mContext.getDrawable(com.android.systemui.R.drawable.ic_qs_plus));
        ((TextView) this.mEmptyStateView.requireViewById(com.android.systemui.R.id.empty_state_title)).setText(charSequence2);
        this.mEmptyStateView.setOnClickListener(walletScreenController$$ExternalSyntheticLambda3);
        this.mAppButton.setOnClickListener(walletScreenController$$ExternalSyntheticLambda3);
    }

    public WalletView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsDeviceLocked = false;
        this.mIsUdfpsEnabled = false;
        FrameLayout.inflate(context, com.android.systemui.R.layout.wallet_fullscreen, this);
        this.mCardCarouselContainer = (ViewGroup) requireViewById(com.android.systemui.R.id.card_carousel_container);
        WalletCardCarousel walletCardCarousel = (WalletCardCarousel) requireViewById(com.android.systemui.R.id.card_carousel);
        this.mCardCarousel = walletCardCarousel;
        walletCardCarousel.mCardScrollListener = this;
        this.mIcon = (ImageView) requireViewById(com.android.systemui.R.id.icon);
        this.mCardLabel = (TextView) requireViewById(com.android.systemui.R.id.label);
        this.mAppButton = (Button) requireViewById(com.android.systemui.R.id.wallet_app_button);
        this.mToolbarAppButton = (Button) requireViewById(com.android.systemui.R.id.wallet_toolbar_app_button);
        this.mActionButton = (Button) requireViewById(com.android.systemui.R.id.wallet_action_button);
        this.mErrorView = (TextView) requireViewById(com.android.systemui.R.id.error_view);
        this.mEmptyStateView = (ViewGroup) requireViewById(com.android.systemui.R.id.wallet_empty_state);
        this.mOutInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.accelerate_cubic);
        this.mAnimationTranslationX = walletCardCarousel.mCardWidthPx / 4.0f;
    }
}
