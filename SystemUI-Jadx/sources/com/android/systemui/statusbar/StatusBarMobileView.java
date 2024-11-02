package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.settingslib.graph.SignalDrawable;
import com.android.systemui.DualToneHandler;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.phone.StatusBarSignalPolicy;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StatusBarMobileView extends BaseStatusBarFrameLayout implements DarkIconDispatcher.DarkReceiver {
    public StatusBarIconView mDotView;
    public DualToneHandler mDualToneHandler;
    public ImageView mIn;
    public View mInoutContainer;
    public ImageView mMobile;
    public SignalDrawable mMobileDrawable;
    public LinearLayout mMobileGroup;
    public ImageView mMobileRoaming;
    public View mMobileRoamingSpace;
    public ImageView mMobileType;
    public ImageView mOut;
    public String mSlot;
    public StatusBarSignalPolicy.MobileIconState mState;
    public int mVisibleState;

    public StatusBarMobileView(Context context) {
        super(context);
        this.mVisibleState = 2;
    }

    public final void applyMobileState(StatusBarSignalPolicy.MobileIconState mobileIconState) {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z3 = true;
        int i12 = 8;
        if (mobileIconState == null) {
            if (getVisibility() == 8) {
                z3 = false;
            }
            setVisibility(8);
            this.mState = null;
        } else {
            StatusBarSignalPolicy.MobileIconState mobileIconState2 = this.mState;
            if (mobileIconState2 == null) {
                StatusBarSignalPolicy.MobileIconState copy = mobileIconState.copy();
                this.mState = copy;
                setContentDescription(copy.contentDescription);
                if (this.mState.visible) {
                    this.mMobileGroup.setVisibility(0);
                } else {
                    this.mMobileGroup.setVisibility(8);
                }
                this.mMobileDrawable.setLevel(this.mState.strengthId);
                StatusBarSignalPolicy.MobileIconState mobileIconState3 = this.mState;
                if (mobileIconState3.typeId > 0) {
                    this.mMobileType.setContentDescription(mobileIconState3.typeContentDescription);
                    this.mMobileType.setImageResource(this.mState.typeId);
                    this.mMobileType.setVisibility(0);
                } else {
                    this.mMobileType.setVisibility(8);
                }
                ImageView imageView = this.mMobile;
                if (this.mState.showTriangle) {
                    i7 = 0;
                } else {
                    i7 = 8;
                }
                imageView.setVisibility(i7);
                ImageView imageView2 = this.mMobileRoaming;
                if (this.mState.roaming) {
                    i8 = 0;
                } else {
                    i8 = 8;
                }
                imageView2.setVisibility(i8);
                View view = this.mMobileRoamingSpace;
                if (this.mState.roaming) {
                    i9 = 0;
                } else {
                    i9 = 8;
                }
                view.setVisibility(i9);
                ImageView imageView3 = this.mIn;
                if (this.mState.activityIn) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                imageView3.setVisibility(i10);
                ImageView imageView4 = this.mOut;
                if (this.mState.activityOut) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                imageView4.setVisibility(i11);
                View view2 = this.mInoutContainer;
                StatusBarSignalPolicy.MobileIconState mobileIconState4 = this.mState;
                if (mobileIconState4.activityIn || mobileIconState4.activityOut) {
                    i12 = 0;
                }
                view2.setVisibility(i12);
            } else if (!mobileIconState2.equals(mobileIconState)) {
                StatusBarSignalPolicy.MobileIconState copy2 = mobileIconState.copy();
                setContentDescription(copy2.contentDescription);
                if (copy2.visible) {
                    i = 0;
                } else {
                    i = 8;
                }
                if (i != this.mMobileGroup.getVisibility() && this.mVisibleState == 0) {
                    this.mMobileGroup.setVisibility(i);
                    z = true;
                } else {
                    z = false;
                }
                int i13 = this.mState.strengthId;
                int i14 = copy2.strengthId;
                if (i13 != i14) {
                    this.mMobileDrawable.setLevel(i14);
                }
                int i15 = this.mState.typeId;
                int i16 = copy2.typeId;
                if (i15 != i16) {
                    if (i16 != 0 && i15 != 0) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    z |= z2;
                    if (i16 != 0) {
                        this.mMobileType.setContentDescription(copy2.typeContentDescription);
                        this.mMobileType.setImageResource(copy2.typeId);
                        this.mMobileType.setVisibility(0);
                    } else {
                        this.mMobileType.setVisibility(8);
                    }
                }
                ImageView imageView5 = this.mMobile;
                if (copy2.showTriangle) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
                imageView5.setVisibility(i2);
                ImageView imageView6 = this.mMobileRoaming;
                if (copy2.roaming) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
                imageView6.setVisibility(i3);
                View view3 = this.mMobileRoamingSpace;
                if (copy2.roaming) {
                    i4 = 0;
                } else {
                    i4 = 8;
                }
                view3.setVisibility(i4);
                ImageView imageView7 = this.mIn;
                if (copy2.activityIn) {
                    i5 = 0;
                } else {
                    i5 = 8;
                }
                imageView7.setVisibility(i5);
                ImageView imageView8 = this.mOut;
                if (copy2.activityOut) {
                    i6 = 0;
                } else {
                    i6 = 8;
                }
                imageView8.setVisibility(i6);
                View view4 = this.mInoutContainer;
                if (copy2.activityIn || copy2.activityOut) {
                    i12 = 0;
                }
                view4.setVisibility(i12);
                boolean z4 = copy2.roaming;
                StatusBarSignalPolicy.MobileIconState mobileIconState5 = this.mState;
                if (z4 == mobileIconState5.roaming && copy2.activityIn == mobileIconState5.activityIn && copy2.activityOut == mobileIconState5.activityOut && copy2.showTriangle == mobileIconState5.showTriangle) {
                    z3 = false;
                }
                z3 |= z;
                this.mState = copy2;
            } else {
                z3 = false;
            }
        }
        if (z3) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        float translationX = getTranslationX();
        float translationY = getTranslationY();
        rect.left = (int) (rect.left + translationX);
        rect.right = (int) (rect.right + translationX);
        rect.top = (int) (rect.top + translationY);
        rect.bottom = (int) (rect.bottom + translationY);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final String getSlot() {
        return this.mSlot;
    }

    public StatusBarSignalPolicy.MobileIconState getState() {
        return this.mState;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final int getVisibleState() {
        return this.mVisibleState;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final boolean isIconVisible() {
        if (this.mState.visible) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        if (!DarkIconDispatcher.isInAreas(arrayList, this)) {
            f = 0.0f;
        }
        this.mMobileDrawable.setTintList(ColorStateList.valueOf(this.mDualToneHandler.getSingleColor(f)));
        ColorStateList valueOf = ColorStateList.valueOf(DarkIconDispatcher.getTint(arrayList, this, i));
        this.mIn.setImageTintList(valueOf);
        this.mOut.setImageTintList(valueOf);
        this.mMobileType.setImageTintList(valueOf);
        this.mMobileRoaming.setImageTintList(valueOf);
        this.mDotView.setDecorColor(i);
        this.mDotView.setIconColor(i, false);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setDecorColor(int i) {
        this.mDotView.setDecorColor(i);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setStaticDrawableColor(int i) {
        ColorStateList valueOf = ColorStateList.valueOf(i);
        this.mMobileDrawable.setTintList(valueOf);
        this.mIn.setImageTintList(valueOf);
        this.mOut.setImageTintList(valueOf);
        this.mMobileType.setImageTintList(valueOf);
        this.mMobileRoaming.setImageTintList(valueOf);
        this.mDotView.setDecorColor(i);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setVisibleState(int i, boolean z) {
        if (i == this.mVisibleState) {
            return;
        }
        this.mVisibleState = i;
        if (i != 0) {
            if (i != 1) {
                this.mMobileGroup.setVisibility(4);
                this.mDotView.setVisibility(4);
                return;
            } else {
                this.mMobileGroup.setVisibility(4);
                this.mDotView.setVisibility(0);
                return;
            }
        }
        this.mMobileGroup.setVisibility(0);
        this.mDotView.setVisibility(8);
    }

    @Override // android.view.View
    public final String toString() {
        return "StatusBarMobileView(slot=" + this.mSlot + " state=" + this.mState + ")";
    }

    public StatusBarMobileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mVisibleState = 2;
    }

    public StatusBarMobileView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVisibleState = 2;
    }
}
