package com.android.systemui.mdm;

import android.content.Context;
import android.util.Log;
import android.widget.FrameLayout;
import androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.samsung.android.knox.lockscreen.LockscreenOverlay;
import com.samsung.android.knox.lockscreen.LockscreenOverlayView;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MdmOverlayContainer {
    public final Context mContext;
    public LockscreenOverlay mLockscreenOverlay;
    public LockscreenOverlayView mMdmOverlayView;
    public int mPreviousState;
    public CentralSurfaces mStatusBar;
    public final Lazy mStatusBarStateControllerLazy;
    public FrameLayout mView;

    public MdmOverlayContainer(Context context, Lazy lazy) {
        this.mContext = context;
        this.mStatusBarStateControllerLazy = lazy;
    }

    public final void updateMdmPolicy() {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mStatusBar;
        boolean z = true;
        if (((StatusBarStateControllerImpl) centralSurfacesImpl.mStatusBarStateController).mState != 1 || !centralSurfacesImpl.isKeyguardShowing() || centralSurfacesImpl.mDozing || centralSurfacesImpl.isOccluded()) {
            z = false;
        }
        if (z) {
            try {
                LockscreenOverlay lockscreenOverlay = this.mLockscreenOverlay;
                Context context = this.mContext;
                if (lockscreenOverlay == null) {
                    this.mLockscreenOverlay = LockscreenOverlay.getInstance(context);
                }
                if (this.mLockscreenOverlay.isConfigured()) {
                    if (this.mView != null) {
                        if (this.mMdmOverlayView == null) {
                            LockscreenOverlayView lockscreenOverlayView = new LockscreenOverlayView(context);
                            this.mMdmOverlayView = lockscreenOverlayView;
                            this.mView.addView(lockscreenOverlayView, -1, -1);
                        } else {
                            Log.d("MdmOverlayContainer", "mMdmOverlayView is not null!!");
                            this.mMdmOverlayView.setVisibility(0);
                        }
                        this.mView.setVisibility(0);
                        return;
                    }
                    Log.d("MdmOverlayContainer", "mMDMOverlayContainer is null");
                    return;
                }
                FrameLayout frameLayout = this.mView;
                if (frameLayout != null) {
                    LockscreenOverlayView lockscreenOverlayView2 = this.mMdmOverlayView;
                    if (lockscreenOverlayView2 != null) {
                        frameLayout.removeView(lockscreenOverlayView2);
                        this.mMdmOverlayView = null;
                    }
                    this.mView.setVisibility(8);
                    return;
                }
                return;
            } catch (Exception e) {
                AbsAdapter$1$$ExternalSyntheticOutline0.m("Lockscren Overlay creation fails: ", e, "MdmOverlayContainer");
                return;
            }
        }
        FrameLayout frameLayout2 = this.mView;
        if (frameLayout2 != null) {
            LockscreenOverlayView lockscreenOverlayView3 = this.mMdmOverlayView;
            if (lockscreenOverlayView3 != null) {
                frameLayout2.removeView(lockscreenOverlayView3);
                this.mMdmOverlayView = null;
            }
            this.mView.setVisibility(8);
        }
    }
}
