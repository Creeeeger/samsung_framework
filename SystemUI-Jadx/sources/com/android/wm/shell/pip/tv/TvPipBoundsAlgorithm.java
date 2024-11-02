package com.android.wm.shell.pip.tv;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Rect;
import android.util.Size;
import android.view.Gravity;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.pip.PipKeepClearAlgorithmInterface;
import com.android.wm.shell.pip.PipSnapAlgorithm;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipBoundsAlgorithm extends PipBoundsAlgorithm {
    public int mFixedExpandedHeightInPx;
    public int mFixedExpandedWidthInPx;
    public final TvPipKeepClearAlgorithm mKeepClearAlgorithm;
    public final TvPipBoundsState mTvPipBoundsState;

    public TvPipBoundsAlgorithm(Context context, TvPipBoundsState tvPipBoundsState, PipSnapAlgorithm pipSnapAlgorithm, PipSizeSpecHandler pipSizeSpecHandler) {
        super(context, tvPipBoundsState, pipSnapAlgorithm, new PipKeepClearAlgorithmInterface() { // from class: com.android.wm.shell.pip.tv.TvPipBoundsAlgorithm.1
        }, pipSizeSpecHandler);
        this.mTvPipBoundsState = tvPipBoundsState;
        this.mKeepClearAlgorithm = new TvPipKeepClearAlgorithm();
        reloadResources(context);
    }

    private void reloadResources(Context context) {
        Resources resources = context.getResources();
        this.mFixedExpandedHeightInPx = resources.getDimensionPixelSize(R.dimen.conversation_face_pile_avatar_size);
        this.mFixedExpandedWidthInPx = resources.getDimensionPixelSize(R.dimen.conversation_face_pile_avatar_size_group_expanded);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.pip_keep_clear_area_padding);
        TvPipKeepClearAlgorithm tvPipKeepClearAlgorithm = this.mKeepClearAlgorithm;
        tvPipKeepClearAlgorithm.pipAreaPadding = dimensionPixelSize;
        tvPipKeepClearAlgorithm.maxRestrictedDistanceFraction = resources.getFraction(com.android.systemui.R.fraction.config_pipMaxRestrictedMoveDistance, 1, 1);
    }

    public final Rect adjustBoundsForTemporaryDecor(Rect rect) {
        Rect rect2 = new Rect(rect);
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        Insets insets = tvPipBoundsState.mPipMenuTemporaryDecorInsets;
        Insets subtract = Insets.subtract(Insets.NONE, insets);
        rect2.inset(insets);
        Gravity.apply(tvPipBoundsState.mTvPipGravity, rect2.width(), rect2.height(), rect, rect2);
        rect2.inset(subtract);
        return rect2;
    }

    @Override // com.android.wm.shell.pip.PipBoundsAlgorithm
    public final Rect getAdjustedDestinationBounds(Rect rect, float f) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 39720036, 8, "%s: getAdjustedDestinationBounds: %f", "TvPipBoundsAlgorithm", Double.valueOf(f));
        }
        return adjustBoundsForTemporaryDecor(getTvPipPlacement().bounds);
    }

    @Override // com.android.wm.shell.pip.PipBoundsAlgorithm
    public final Rect getEntryDestinationBounds() {
        boolean z = false;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1588940706, 0, "%s: getEntryDestinationBounds()", "TvPipBoundsAlgorithm");
        }
        updateExpandedPipSize();
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        if (tvPipBoundsState.mIsTvExpandedPipSupported && tvPipBoundsState.mDesiredTvExpandedAspectRatio != 0.0f && !tvPipBoundsState.mTvPipManuallyCollapsed) {
            z = true;
        }
        if (z) {
            updateGravityOnExpansionToggled(true);
        }
        tvPipBoundsState.mIsTvPipExpanded = z;
        return adjustBoundsForTemporaryDecor(getTvPipPlacement().bounds);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0487  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm.Placement getTvPipPlacement() {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.tv.TvPipBoundsAlgorithm.getTvPipPlacement():com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$Placement");
    }

    @Override // com.android.wm.shell.pip.PipBoundsAlgorithm
    public final void onConfigurationChanged(Context context) {
        reloadResources(context);
        reloadResources(context);
    }

    public final void updateExpandedPipSize() {
        Size size;
        Size size2;
        Size size3;
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        DisplayLayout displayLayout = tvPipBoundsState.getDisplayLayout();
        float f = tvPipBoundsState.mDesiredTvExpandedAspectRatio;
        Insets insets = tvPipBoundsState.mPipMenuPermanentDecorInsets;
        if (f == 0.0f) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -323100848, 0, "%s: updateExpandedPipSize(): Expanded mode aspect ratio of 0 not supported", "TvPipBoundsAlgorithm");
                return;
            }
            return;
        }
        PipSizeSpecHandler pipSizeSpecHandler = this.mPipSizeSpecHandler;
        if (f < 1.0f) {
            if (tvPipBoundsState.mTvFixedPipOrientation == 2) {
                size3 = tvPipBoundsState.mTvExpandedSize;
            } else {
                int i = ((displayLayout.mHeight - (pipSizeSpecHandler.mScreenEdgeInsets.y * 2)) - insets.top) - insets.bottom;
                float f2 = this.mFixedExpandedWidthInPx / f;
                if (i > f2) {
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1627925042, 0, "%s: Accommodate aspect ratio", "TvPipBoundsAlgorithm");
                    }
                    size2 = new Size(this.mFixedExpandedWidthInPx, (int) f2);
                    size3 = size2;
                } else {
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1761077575, 0, "%s: Aspect ratio is too extreme, use max size", "TvPipBoundsAlgorithm");
                    }
                    size = new Size(this.mFixedExpandedWidthInPx, i);
                    size3 = size;
                }
            }
        } else if (tvPipBoundsState.mTvFixedPipOrientation == 1) {
            size3 = tvPipBoundsState.mTvExpandedSize;
        } else {
            int i2 = ((displayLayout.mWidth - (pipSizeSpecHandler.mScreenEdgeInsets.x * 2)) - insets.left) - insets.right;
            float f3 = this.mFixedExpandedHeightInPx * f;
            if (i2 > f3) {
                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1627925042, 0, "%s: Accommodate aspect ratio", "TvPipBoundsAlgorithm");
                }
                size2 = new Size((int) f3, this.mFixedExpandedHeightInPx);
                size3 = size2;
            } else {
                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1761077575, 0, "%s: Aspect ratio is too extreme, use max size", "TvPipBoundsAlgorithm");
                }
                size = new Size(i2, this.mFixedExpandedHeightInPx);
                size3 = size;
            }
        }
        tvPipBoundsState.mTvExpandedSize = size3;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 677213986, 20, "%s: updateExpandedPipSize(): expanded size, width: %d, height: %d", "TvPipBoundsAlgorithm", Long.valueOf(size3.getWidth()), Long.valueOf(size3.getHeight()));
        }
    }

    public final void updateGravityOnExpansionToggled(boolean z) {
        int i;
        boolean z2 = ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled;
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        if (z2) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -374942100, 28, "%s: updateGravity, expanding: %b, fixedExpandedOrientation: %d", "TvPipBoundsAlgorithm", Boolean.valueOf(z), Long.valueOf(tvPipBoundsState.mTvFixedPipOrientation));
        }
        int i2 = tvPipBoundsState.mTvPipGravity;
        int i3 = i2 & 7;
        int i4 = i2 & 112;
        int i5 = tvPipBoundsState.mPreviousCollapsedGravity;
        int i6 = i5 & 7;
        int i7 = i5 & 112;
        if (z) {
            tvPipBoundsState.mPreviousCollapsedGravity = i2;
            if (tvPipBoundsState.mTvFixedPipOrientation == 2) {
                i = i4 | 1;
            } else {
                i = i3 | 16;
            }
        } else if (tvPipBoundsState.mTvFixedPipOrientation == 2) {
            i = i6 | i4;
        } else {
            i = i3 | i7;
        }
        tvPipBoundsState.mTvPipGravity = i;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1303376248, 0, "%s: new gravity: %s", "TvPipBoundsAlgorithm", String.valueOf(Gravity.toString(i)));
        }
    }
}
