package com.android.wm.shell.pip.tv;

import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Insets;
import android.util.Size;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipBoundsState extends PipBoundsState {
    public final Context mContext;
    public int mDefaultGravity;
    public float mDesiredTvExpandedAspectRatio;
    public boolean mIsRtl;
    public final boolean mIsTvExpandedPipSupported;
    public boolean mIsTvPipExpanded;
    public Insets mPipMenuPermanentDecorInsets;
    public Insets mPipMenuTemporaryDecorInsets;
    public int mPreviousCollapsedGravity;
    public Size mTvExpandedSize;
    public int mTvFixedPipOrientation;
    public int mTvPipGravity;
    public boolean mTvPipManuallyCollapsed;

    public TvPipBoundsState(Context context, PipSizeSpecHandler pipSizeSpecHandler, PipDisplayLayoutState pipDisplayLayoutState) {
        super(context, pipSizeSpecHandler, pipDisplayLayoutState);
        Insets insets = Insets.NONE;
        this.mPipMenuPermanentDecorInsets = insets;
        this.mPipMenuTemporaryDecorInsets = insets;
        this.mContext = context;
        updateDefaultGravity();
        this.mPreviousCollapsedGravity = this.mDefaultGravity;
        this.mIsTvExpandedPipSupported = context.getPackageManager().hasSystemFeature("android.software.expanded_picture_in_picture");
    }

    @Override // com.android.wm.shell.pip.PipBoundsState
    public final void onConfigurationChanged() {
        updateDefaultGravity();
    }

    @Override // com.android.wm.shell.pip.PipBoundsState
    public final void setBoundsStateForEntry(ComponentName componentName, ActivityInfo activityInfo, PictureInPictureParams pictureInPictureParams, PipBoundsAlgorithm pipBoundsAlgorithm) {
        super.setBoundsStateForEntry(componentName, activityInfo, pictureInPictureParams, pipBoundsAlgorithm);
        if (pictureInPictureParams == null) {
            return;
        }
        setDesiredTvExpandedAspectRatio(pictureInPictureParams.getExpandedAspectRatioFloat(), true);
    }

    public final void setDesiredTvExpandedAspectRatio(float f, boolean z) {
        int i;
        if (!z && (i = this.mTvFixedPipOrientation) != 0) {
            if ((f > 1.0f && i == 2) || ((f <= 1.0f && i == 1) || f == 0.0f)) {
                this.mDesiredTvExpandedAspectRatio = f;
                return;
            }
            return;
        }
        this.mTvFixedPipOrientation = 0;
        int i2 = this.mDefaultGravity;
        this.mTvPipGravity = i2;
        this.mPreviousCollapsedGravity = i2;
        this.mTvPipManuallyCollapsed = false;
        this.mDesiredTvExpandedAspectRatio = f;
        if (f != 0.0f) {
            if (f > 1.0f) {
                this.mTvFixedPipOrientation = 2;
            } else {
                this.mTvFixedPipOrientation = 1;
            }
        }
    }

    public final void updateDefaultGravity() {
        int i;
        boolean z = true;
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(this.mContext) != 1) {
            z = false;
        }
        if (z) {
            i = 3;
        } else {
            i = 5;
        }
        this.mDefaultGravity = i | 80;
        if (this.mIsRtl != z) {
            int i2 = this.mPreviousCollapsedGravity;
            int i3 = i2 & 7;
            int i4 = i2 & 112;
            if ((i3 & 5) == 5) {
                this.mPreviousCollapsedGravity = 3 | i4;
            } else if ((i3 & 3) == 3) {
                this.mPreviousCollapsedGravity = i4 | 5;
            }
        }
        this.mIsRtl = z;
    }
}
