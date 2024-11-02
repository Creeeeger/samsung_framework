package com.android.wm.shell.pip;

import android.app.PictureInPictureParams;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Size;
import android.view.Gravity;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PipBoundsAlgorithm {
    public float mDefaultAspectRatio;
    public int mDefaultStackGravity;
    public float mMaxAspectRatio;
    public float mMinAspectRatio;
    public final PipBoundsState mPipBoundsState;
    public final PipKeepClearAlgorithmInterface mPipKeepClearAlgorithm;
    public final PipSizeSpecHandler mPipSizeSpecHandler;
    public final PipSnapAlgorithm mSnapAlgorithm;

    public PipBoundsAlgorithm(Context context, PipBoundsState pipBoundsState, PipSnapAlgorithm pipSnapAlgorithm, PipKeepClearAlgorithmInterface pipKeepClearAlgorithmInterface, PipSizeSpecHandler pipSizeSpecHandler) {
        this.mPipBoundsState = pipBoundsState;
        this.mSnapAlgorithm = pipSnapAlgorithm;
        this.mPipKeepClearAlgorithm = pipKeepClearAlgorithmInterface;
        this.mPipSizeSpecHandler = pipSizeSpecHandler;
        reloadResources(context);
        pipBoundsState.mAspectRatio = this.mDefaultAspectRatio;
    }

    public static Rect getValidSourceHintRect(PictureInPictureParams pictureInPictureParams, Rect rect) {
        Rect rect2;
        if (pictureInPictureParams != null && pictureInPictureParams.hasSourceBoundsHint()) {
            rect2 = pictureInPictureParams.getSourceRectHint();
        } else {
            rect2 = null;
        }
        if (rect2 == null || !rect.contains(rect2)) {
            return null;
        }
        return rect2;
    }

    public final void dump(PrintWriter printWriter, String str) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        printWriter.println(str + "PipBoundsAlgorithm");
        printWriter.println(m + "mDefaultAspectRatio=" + this.mDefaultAspectRatio);
        printWriter.println(m + "mMinAspectRatio=" + this.mMinAspectRatio);
        printWriter.println(m + "mMaxAspectRatio=" + this.mMaxAspectRatio);
        printWriter.println(m + "mDefaultStackGravity=" + this.mDefaultStackGravity);
        printWriter.println(m + "mSnapAlgorithm" + this.mSnapAlgorithm);
    }

    public Rect getAdjustedDestinationBounds(Rect rect, float f) {
        boolean z;
        Rect rect2 = new Rect(rect);
        if (Float.compare(this.mMinAspectRatio, f) <= 0 && Float.compare(f, this.mMaxAspectRatio) <= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            transformBoundsToAspectRatio(rect2, f, true, false);
        }
        return rect2;
    }

    public final Rect getDefaultBounds(Size size, float f) {
        int i;
        Rect rect = new Rect();
        PipSnapAlgorithm pipSnapAlgorithm = this.mSnapAlgorithm;
        int i2 = 0;
        if (f != -1.0f && size != null) {
            rect.set(0, 0, size.getWidth(), size.getHeight());
            Rect movementBounds = getMovementBounds(rect, true);
            pipSnapAlgorithm.getClass();
            PipSnapAlgorithm.applySnapFraction(f, rect, movementBounds);
            return rect;
        }
        Rect rect2 = new Rect();
        getInsetBounds(rect2);
        Size defaultSize = this.mPipSizeSpecHandler.mSizeSpecSourceImpl.getDefaultSize(this.mDefaultAspectRatio);
        if (f != -1.0f) {
            rect.set(0, 0, defaultSize.getWidth(), defaultSize.getHeight());
            Rect movementBounds2 = getMovementBounds(rect, true);
            pipSnapAlgorithm.getClass();
            PipSnapAlgorithm.applySnapFraction(f, rect, movementBounds2);
        } else {
            int i3 = this.mDefaultStackGravity;
            int width = defaultSize.getWidth();
            int height = defaultSize.getHeight();
            PipBoundsState pipBoundsState = this.mPipBoundsState;
            if (pipBoundsState.mIsImeShowing) {
                i = pipBoundsState.mImeHeight;
            } else {
                i = 0;
            }
            if (pipBoundsState.mIsShelfShowing) {
                i2 = pipBoundsState.mShelfHeight;
            }
            Gravity.apply(i3, width, height, rect2, 0, Math.max(i, i2), rect);
        }
        return rect;
    }

    public Rect getEntryDestinationBounds() {
        Rect entryDestinationBoundsIgnoringKeepClearAreas = getEntryDestinationBoundsIgnoringKeepClearAreas();
        Rect rect = new Rect();
        getInsetBounds(rect);
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        return this.mPipKeepClearAlgorithm.findUnoccludedPosition(entryDestinationBoundsIgnoringKeepClearAreas, pipBoundsState.mRestrictedKeepClearAreas, pipBoundsState.getUnrestrictedKeepClearAreas(), rect);
    }

    public final Rect getEntryDestinationBoundsIgnoringKeepClearAreas() {
        Rect defaultBounds;
        boolean z;
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        PipBoundsState.PipReentryState pipReentryState = pipBoundsState.mPipReentryState;
        if (pipReentryState != null) {
            defaultBounds = getDefaultBounds(pipReentryState.mSize, pipReentryState.mSnapFraction);
        } else {
            defaultBounds = getDefaultBounds(null, -1.0f);
        }
        boolean z2 = true;
        if (pipReentryState != null && pipReentryState.mSize != null && defaultBounds.width() > this.mPipSizeSpecHandler.mDefaultMinWidth) {
            z = true;
        } else {
            z = false;
        }
        float f = pipBoundsState.mAspectRatio;
        Rect rect = new Rect(defaultBounds);
        if (Float.compare(this.mMinAspectRatio, f) > 0 || Float.compare(f, this.mMaxAspectRatio) > 0) {
            z2 = false;
        }
        if (z2) {
            transformBoundsToAspectRatio(rect, f, false, z);
        }
        return rect;
    }

    public final void getInsetBounds(Rect rect) {
        rect.set(this.mPipSizeSpecHandler.getInsetBounds());
    }

    public final Size getMinimalSize(ActivityInfo activityInfo) {
        ActivityInfo.WindowLayout windowLayout;
        if (activityInfo == null || (windowLayout = activityInfo.windowLayout) == null || windowLayout.minWidth <= 0 || windowLayout.minHeight <= 0) {
            return null;
        }
        int i = windowLayout.minWidth;
        PipSizeSpecHandler pipSizeSpecHandler = this.mPipSizeSpecHandler;
        return new Size(Math.max(i, pipSizeSpecHandler.getOverrideMinEdgeSize()), Math.max(windowLayout.minHeight, pipSizeSpecHandler.getOverrideMinEdgeSize()));
    }

    public final Rect getMovementBounds(Rect rect, boolean z) {
        int i;
        Rect rect2 = new Rect();
        getInsetBounds(rect2);
        if (z) {
            PipBoundsState pipBoundsState = this.mPipBoundsState;
            if (pipBoundsState.mIsImeShowing) {
                i = pipBoundsState.mImeHeight;
                getMovementBounds(rect, rect2, rect2, i);
                return rect2;
            }
        }
        i = 0;
        getMovementBounds(rect, rect2, rect2, i);
        return rect2;
    }

    public void onConfigurationChanged(Context context) {
        reloadResources(context);
    }

    public final void reloadResources(Context context) {
        Resources resources = context.getResources();
        this.mDefaultAspectRatio = resources.getFloat(R.dimen.config_pictureInPictureDefaultAspectRatio);
        this.mDefaultStackGravity = resources.getInteger(R.integer.config_defaultPictureInPictureGravity);
        String string = resources.getString(R.string.config_defaultPictureInPictureScreenEdgeInsets);
        if (!string.isEmpty()) {
            Size.parseSize(string);
        }
        this.mMinAspectRatio = resources.getFloat(android.R.dimen.conversation_face_pile_protection_width_expanded);
        this.mMaxAspectRatio = resources.getFloat(android.R.dimen.conversation_face_pile_protection_width);
    }

    public final void transformBoundsToAspectRatio(Rect rect, float f, boolean z, boolean z2) {
        Size sizeForAspectRatio;
        float snapFraction = this.mSnapAlgorithm.getSnapFraction(this.mPipBoundsState.mStashedState, rect, getMovementBounds(rect, true));
        PipSizeSpecHandler pipSizeSpecHandler = this.mPipSizeSpecHandler;
        if (!z && !z2) {
            sizeForAspectRatio = pipSizeSpecHandler.mSizeSpecSourceImpl.getDefaultSize(f);
        } else {
            Size size = new Size(rect.width(), rect.height());
            if (size.equals(pipSizeSpecHandler.mOverrideMinSize)) {
                sizeForAspectRatio = pipSizeSpecHandler.adjustOverrideMinSizeToAspectRatio(f);
            } else {
                sizeForAspectRatio = pipSizeSpecHandler.mSizeSpecSourceImpl.getSizeForAspectRatio(size, f);
            }
        }
        int centerX = (int) (rect.centerX() - (sizeForAspectRatio.getWidth() / 2.0f));
        int centerY = (int) (rect.centerY() - (sizeForAspectRatio.getHeight() / 2.0f));
        rect.set(centerX, centerY, sizeForAspectRatio.getWidth() + centerX, sizeForAspectRatio.getHeight() + centerY);
        PipSnapAlgorithm.applySnapFraction(snapFraction, rect, getMovementBounds(rect, true));
    }

    public static void getMovementBounds(Rect rect, Rect rect2, Rect rect3, int i) {
        rect3.set(rect2);
        rect3.right = Math.max(rect2.left, rect2.right - rect.width());
        rect3.bottom = Math.max(rect2.top, rect2.bottom - rect.height()) - i;
    }
}
