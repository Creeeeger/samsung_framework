package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.text.TextPaint;
import android.util.Log;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.slimindicator.SlimIndicatorViewMediator;
import com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl;
import com.android.systemui.slimindicator.SlimIndicatorViewSubscriber;
import com.android.systemui.statusbar.policy.QSClockIndicatorView;
import com.android.systemui.util.DeviceType;
import com.samsung.systemui.splugins.slimindicator.SPluginSlimIndicatorModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhoneStatusBarClockManager implements SlimIndicatorViewSubscriber {
    public static final boolean DEBUG = DeviceType.isEngOrUTBinary();
    public final QSClockIndicatorView mClockView;
    public final ViewGroup mGrandParentView;
    public IndicatorGarden mIndicatorGarden;
    public final IndicatorGardenPresenter mIndicatorGardenPresenter;
    public ViewGroup mLeftContainer;
    public ViewGroup mMiddleContainer;
    public ViewGroup mRightContainer;
    public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;
    public POSITION mClockPosition = POSITION.NONE;
    public boolean mClockBlocked = false;
    public boolean mIsChangedClockPosition = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.PhoneStatusBarClockManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION;

        static {
            int[] iArr = new int[POSITION.values().length];
            $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION = iArr;
            try {
                iArr[POSITION.MIDDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION[POSITION.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION[POSITION.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION[POSITION.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum POSITION {
        NONE,
        LEFT,
        MIDDLE,
        RIGHT
    }

    public PhoneStatusBarClockManager(Context context, ViewGroup viewGroup, SlimIndicatorViewMediator slimIndicatorViewMediator, IndicatorGardenPresenter indicatorGardenPresenter, QSClockIndicatorView qSClockIndicatorView) {
        this.mGrandParentView = viewGroup;
        this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
        this.mIndicatorGardenPresenter = indicatorGardenPresenter;
        this.mClockView = qSClockIndicatorView;
    }

    public final void addClockView(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (viewGroup.getVisibility() != 0) {
            viewGroup.setVisibility(0);
        }
        viewGroup.addView(this.mClockView);
    }

    public final int getClockWidth() {
        QSClockIndicatorView qSClockIndicatorView = this.mClockView;
        int i = 0;
        if (qSClockIndicatorView == null) {
            return 0;
        }
        TextPaint paint = qSClockIndicatorView.getPaint();
        if (paint != null && qSClockIndicatorView.getText() != null) {
            i = (int) paint.measureText(qSClockIndicatorView.getText().toString());
        }
        return Math.max(qSClockIndicatorView.getMeasuredWidth(), qSClockIndicatorView.getPaddingEnd() + qSClockIndicatorView.getPaddingStart() + i);
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
    public final void updateQuickStarStyle() {
        boolean z;
        SlimIndicatorViewMediatorImpl slimIndicatorViewMediatorImpl = (SlimIndicatorViewMediatorImpl) this.mSlimIndicatorViewMediator;
        boolean isLeftClockPosition = slimIndicatorViewMediatorImpl.isLeftClockPosition();
        String iconBlacklist = slimIndicatorViewMediatorImpl.mSettingsHelper.getIconBlacklist();
        boolean z2 = false;
        if (slimIndicatorViewMediatorImpl.mPluginMediator.mIsSPluginConnected && iconBlacklist != null && iconBlacklist.contains(SPluginSlimIndicatorModel.DB_KEY_MIDDLE_CLOCK_POSITION)) {
            z = true;
        } else {
            z = false;
        }
        String iconBlacklist2 = slimIndicatorViewMediatorImpl.mSettingsHelper.getIconBlacklist();
        if (slimIndicatorViewMediatorImpl.mPluginMediator.mIsSPluginConnected && iconBlacklist2 != null && iconBlacklist2.contains(SPluginSlimIndicatorModel.DB_KEY_RIGHT_CLOCK_POSITION)) {
            z2 = true;
        }
        this.mClockBlocked = slimIndicatorViewMediatorImpl.isBlocked(SubRoom.EXTRA_VALUE_CLOCK);
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("updateQuickStarStyle() left:", isLeftClockPosition, ", middle:", z, ", right:");
        m.append(z2);
        m.append(", mClockBlocked:");
        ActionBarContextView$$ExternalSyntheticOutline0.m(m, this.mClockBlocked, "[QuickStar]PhoneStatusBarClockManager");
        POSITION position = this.mClockPosition;
        if (isLeftClockPosition) {
            this.mClockPosition = POSITION.LEFT;
        } else if (z2) {
            this.mClockPosition = POSITION.RIGHT;
        } else if (z) {
            this.mClockPosition = POSITION.MIDDLE;
        } else {
            this.mClockPosition = POSITION.NONE;
        }
        if (position != this.mClockPosition) {
            this.mIsChangedClockPosition = true;
            updateResources();
        }
    }

    public final void updateResources() {
        QSClockIndicatorView qSClockIndicatorView;
        boolean z;
        boolean z2 = DEBUG;
        ViewGroup viewGroup = this.mGrandParentView;
        if (z2) {
            StringBuilder sb = new StringBuilder("updateResources() mGrandParentView is null ? ");
            if (viewGroup == null) {
                z = true;
            } else {
                z = false;
            }
            sb.append(z);
            sb.append(", mIsChangedClockPosition:");
            sb.append(this.mIsChangedClockPosition);
            sb.append(", mClockPosition:");
            sb.append(this.mClockPosition);
            Log.d("[QuickStar]PhoneStatusBarClockManager", sb.toString());
        }
        if (viewGroup != null && (qSClockIndicatorView = this.mClockView) != null && this.mIsChangedClockPosition) {
            ViewGroup viewGroup2 = this.mLeftContainer;
            if (viewGroup2 != null) {
                viewGroup2.removeView(qSClockIndicatorView);
                viewGroup2.setVisibility(8);
            }
            ViewGroup viewGroup3 = this.mMiddleContainer;
            if (viewGroup3 != null) {
                viewGroup3.removeView(qSClockIndicatorView);
                viewGroup3.setVisibility(8);
            }
            ViewGroup viewGroup4 = this.mRightContainer;
            if (viewGroup4 != null) {
                viewGroup4.removeView(qSClockIndicatorView);
                viewGroup4.setVisibility(8);
            }
            int i = AnonymousClass1.$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION[this.mClockPosition.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    addClockView(this.mLeftContainer);
                } else {
                    addClockView(this.mRightContainer);
                }
            } else {
                addClockView(this.mMiddleContainer);
            }
            IndicatorGarden indicatorGarden = this.mIndicatorGarden;
            IndicatorGardenPresenter indicatorGardenPresenter = this.mIndicatorGardenPresenter;
            indicatorGardenPresenter.getClass();
            indicatorGardenPresenter.mainHandler.post(new IndicatorGardenPresenter$onGardenOnLayout$1(indicatorGardenPresenter, indicatorGarden));
            this.mIsChangedClockPosition = false;
        }
    }
}
