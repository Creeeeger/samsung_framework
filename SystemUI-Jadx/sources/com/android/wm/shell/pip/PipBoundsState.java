package com.android.wm.shell.pip;

import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.app.PictureInPictureUiState;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Debug;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.Log;
import android.util.Size;
import com.android.internal.util.function.TriConsumer;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.pip.phone.PipEdgePanelSupport;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PipBoundsState {
    public float mAspectRatio;
    public final Context mContext;
    public boolean mHasUserMovedPip;
    public boolean mHasUserResizedPip;
    public int mImeHeight;
    public boolean mIsImeShowing;
    public boolean mIsShelfShowing;
    public ComponentName mLastPipComponentName;
    public Runnable mOnMinimalSizeChangeCallback;
    public IntConsumer mOnPipStashCallback;
    public Runnable mOnPipTaskAppearedCallback;
    public TriConsumer mOnShelfVisibilityChangeCallback;
    public final PipDisplayLayoutState mPipDisplayLayoutState;
    public int mPipEdgeMargin;
    public PipReentryState mPipReentryState;
    public final PipSizeSpecHandler mPipSizeSpecHandler;
    public PipTransitionState mPipTransitionState;
    public int mShelfHeight;
    public int mStashOffset;
    public final Rect mBounds = new Rect();
    public final Rect mMovementBounds = new Rect();
    public final Rect mNormalBounds = new Rect();
    public final Rect mExpandedBounds = new Rect();
    public final Rect mNormalMovementBounds = new Rect();
    public final Rect mExpandedMovementBounds = new Rect();
    public final Point mMaxSize = new Point();
    public final Point mMinSize = new Point();
    public int mStashedState = 0;
    public final LauncherState mLauncherState = new LauncherState();
    public final MotionBoundsState mMotionBoundsState = new MotionBoundsState();
    public final Set mRestrictedKeepClearAreas = new ArraySet();
    public final Set mUnrestrictedKeepClearAreas = new ArraySet();
    public final Map mNamedUnrestrictedKeepClearAreas = new HashMap();
    public final List mOnPipExclusionBoundsChangeCallbacks = new ArrayList();
    public final Rect mStashInsetBounds = new Rect();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LauncherState {
        public int mAppIconSizePx;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MotionBoundsState {
        public final Rect mBoundsInMotion = new Rect();
        public final Rect mAnimatingToBounds = new Rect();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PipReentryState {
        public final Size mSize;
        public final float mSnapFraction;

        public PipReentryState(Size size, float f) {
            this.mSize = size;
            this.mSnapFraction = f;
        }
    }

    public PipBoundsState(Context context, PipSizeSpecHandler pipSizeSpecHandler, PipDisplayLayoutState pipDisplayLayoutState) {
        this.mContext = context;
        reloadResources();
        this.mPipSizeSpecHandler = pipSizeSpecHandler;
        this.mPipDisplayLayoutState = pipDisplayLayoutState;
    }

    public void clearReentryState() {
        this.mPipReentryState = null;
    }

    public final Rect getBounds() {
        return new Rect(this.mBounds);
    }

    public final Rect getDisplayBounds() {
        return this.mPipDisplayLayoutState.getDisplayBounds();
    }

    public final DisplayLayout getDisplayLayout() {
        return this.mPipDisplayLayoutState.getDisplayLayout();
    }

    public final Rect getStashInsets() {
        Context context = this.mContext;
        PipEdgePanelSupport pipEdgePanelSupport = new PipEdgePanelSupport(context);
        Rect stableInsets = getDisplayLayout().stableInsets(false);
        DisplayLayout displayLayout = getDisplayLayout();
        int navigationBarPosition = DisplayLayout.navigationBarPosition(context.getResources(), displayLayout.mWidth, displayLayout.mHeight, displayLayout.mRotation);
        int i = Settings.System.getInt(pipEdgePanelSupport.mContext.getContentResolver(), "active_edge_area", 1);
        Rect rect = this.mStashInsetBounds;
        rect.setEmpty();
        if (navigationBarPosition != 1 && i != 0) {
            if (navigationBarPosition == 2 || i == 1) {
                rect.right = stableInsets.right;
            }
        } else {
            rect.left = stableInsets.left;
        }
        return rect;
    }

    public final Set getUnrestrictedKeepClearAreas() {
        Map map = this.mNamedUnrestrictedKeepClearAreas;
        boolean isEmpty = ((HashMap) map).isEmpty();
        Set set = this.mUnrestrictedKeepClearAreas;
        if (isEmpty) {
            return set;
        }
        ArraySet arraySet = new ArraySet(set);
        arraySet.addAll(((HashMap) map).values());
        return arraySet;
    }

    public final boolean isStashed() {
        if (this.mStashedState != 0) {
            return true;
        }
        return false;
    }

    public void onConfigurationChanged() {
        reloadResources();
    }

    public final void reloadResources() {
        Context context = this.mContext;
        this.mStashOffset = context.getResources().getDimensionPixelSize(R.dimen.pip_stash_offset);
        this.mPipEdgeMargin = context.getResources().getDimensionPixelSize(R.dimen.pip_stash_handle_margin_to_edge_handle);
    }

    public final void setBounds(Rect rect) {
        PipTransitionState pipTransitionState;
        Rect rect2 = this.mBounds;
        if (!rect2.equals(rect)) {
            StringBuilder sb = new StringBuilder("[PipBoundsState] setBounds: ");
            sb.append(rect2);
            sb.append(" -> ");
            sb.append(rect);
            sb.append(", Callers=");
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(6, sb, "PipTaskOrganizer");
        }
        if (!rect.isEmpty() && !getDisplayBounds().equals(rect) && getDisplayBounds().contains(rect) && isStashed() && (pipTransitionState = this.mPipTransitionState) != null && pipTransitionState.mState > 3) {
            setStashed(0, false);
        }
        rect2.set(rect);
        Iterator it = ((ArrayList) this.mOnPipExclusionBoundsChangeCallbacks).iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(rect);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setBoundsStateForEntry(android.content.ComponentName r1, android.content.pm.ActivityInfo r2, android.app.PictureInPictureParams r3, com.android.wm.shell.pip.PipBoundsAlgorithm r4) {
        /*
            r0 = this;
            r0.setLastPipComponentName(r1)
            if (r3 == 0) goto L13
            r4.getClass()
            boolean r1 = r3.hasSetAspectRatio()
            if (r1 == 0) goto L13
            float r1 = r3.getAspectRatioFloat()
            goto L15
        L13:
            float r1 = r4.mDefaultAspectRatio
        L15:
            r0.mAspectRatio = r1
            android.util.Size r1 = r4.getMinimalSize(r2)
            com.android.wm.shell.pip.phone.PipSizeSpecHandler r2 = r0.mPipSizeSpecHandler
            android.util.Size r3 = r2.getOverrideMinSize()
            boolean r3 = java.util.Objects.equals(r1, r3)
            r3 = r3 ^ 1
            r2.mOverrideMinSize = r1
            if (r3 == 0) goto L32
            java.lang.Runnable r1 = r0.mOnMinimalSizeChangeCallback
            if (r1 == 0) goto L32
            r1.run()
        L32:
            java.lang.Runnable r0 = r0.mOnPipTaskAppearedCallback
            if (r0 == 0) goto L39
            r0.run()
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipBoundsState.setBoundsStateForEntry(android.content.ComponentName, android.content.pm.ActivityInfo, android.app.PictureInPictureParams, com.android.wm.shell.pip.PipBoundsAlgorithm):void");
    }

    public final void setLastPipComponentName(ComponentName componentName) {
        boolean z = !Objects.equals(this.mLastPipComponentName, componentName);
        this.mLastPipComponentName = componentName;
        if (z) {
            clearReentryState();
            this.mHasUserResizedPip = false;
            this.mHasUserMovedPip = false;
        }
    }

    public final void setShelfVisibility(int i, boolean z, boolean z2) {
        boolean z3;
        if (z && i > 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 == this.mIsShelfShowing && i == this.mShelfHeight) {
            return;
        }
        this.mIsShelfShowing = z;
        this.mShelfHeight = i;
        TriConsumer triConsumer = this.mOnShelfVisibilityChangeCallback;
        if (triConsumer != null) {
            triConsumer.accept(Boolean.valueOf(z), Integer.valueOf(this.mShelfHeight), Boolean.valueOf(z2));
        }
    }

    public final void setStashed(int i, boolean z) {
        boolean z2;
        if (this.mStashedState == i) {
            return;
        }
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("setStashed old="), this.mStashedState, " new=", i, "PipTaskOrganizer");
        IntConsumer intConsumer = this.mOnPipStashCallback;
        if (intConsumer != null) {
            intConsumer.accept(i);
        }
        this.mStashedState = i;
        if (z) {
            Log.d("PipTaskOrganizer", "setStashed skipWMCoreUpdate=true");
            return;
        }
        try {
            IActivityTaskManager service = ActivityTaskManager.getService();
            if (i != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            service.onPictureInPictureStateChanged(new PictureInPictureUiState(z2));
        } catch (RemoteException unused) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -83501820, 0, "%s: Unable to set alert PiP state change.", "PipBoundsState");
            }
        } catch (IllegalStateException unused2) {
            Log.e("PipTaskOrganizer", "[PipBoundsState] setStashed: Activity is not in PIP mode, caller=" + Debug.getCallers(10));
        }
    }

    public final String toString() {
        return "PipBoundsState{mBounds=" + this.mBounds + ", mMovementBounds=" + this.mMovementBounds + ", mNormalBounds=" + this.mNormalBounds + ", mExpandedBounds=" + this.mExpandedBounds + ", mAspectRatio=" + this.mAspectRatio + '}';
    }
}
