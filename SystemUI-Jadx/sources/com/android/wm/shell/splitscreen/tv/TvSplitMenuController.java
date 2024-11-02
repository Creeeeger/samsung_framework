package com.android.wm.shell.splitscreen.tv;

import android.app.IActivityTaskManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.IWindow;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManagerGlobal;
import com.android.systemui.R;
import com.android.wm.shell.common.SystemWindows;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.tv.TvSplitMenuView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvSplitMenuController implements TvSplitMenuView.Listener {
    public final ActionBroadcastReceiver mActionBroadcastReceiver;
    public final Context mContext;
    public final Handler mMainHandler;
    public final TvSplitMenuView mSplitMenuView;
    public final StageController mStageController;
    public final SystemWindows mSystemWindows;
    public final int mTvButtonFadeAnimationDuration;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ActionBroadcastReceiver extends BroadcastReceiver {
        public final IntentFilter mIntentFilter;
        public boolean mRegistered;

        public /* synthetic */ ActionBroadcastReceiver(TvSplitMenuController tvSplitMenuController, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("com.android.wm.shell.splitscreen.SHOW_MENU".equals(intent.getAction())) {
                TvSplitMenuController.this.setMenuVisibility(true);
            }
        }

        private ActionBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction("com.android.wm.shell.splitscreen.SHOW_MENU");
            this.mRegistered = false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface StageController {
    }

    public TvSplitMenuController(Context context, StageController stageController, SystemWindows systemWindows, Handler handler) {
        this.mContext = context;
        this.mMainHandler = handler;
        this.mStageController = stageController;
        this.mSystemWindows = systemWindows;
        this.mTvButtonFadeAnimationDuration = context.getResources().getInteger(R.integer.tv_window_menu_fade_animation_duration);
        TvSplitMenuView tvSplitMenuView = (TvSplitMenuView) LayoutInflater.from(context).inflate(R.layout.tv_split_menu_view, (ViewGroup) null);
        this.mSplitMenuView = tvSplitMenuView;
        tvSplitMenuView.mListener = this;
        this.mActionBroadcastReceiver = new ActionBroadcastReceiver(this, 0);
    }

    public final void onFocusStage(int i) {
        int topVisibleChildTaskId;
        setMenuVisibility(false);
        TvStageCoordinator tvStageCoordinator = (TvStageCoordinator) this.mStageController;
        tvStageCoordinator.getClass();
        IActivityTaskManager asInterface = IActivityTaskManager.Stub.asInterface(ServiceManager.getService("activity_task"));
        int i2 = -1;
        if (i != -1) {
            try {
                if (tvStageCoordinator.mSideStagePosition == i) {
                    topVisibleChildTaskId = tvStageCoordinator.mSideStage.getTopVisibleChildTaskId();
                } else {
                    topVisibleChildTaskId = tvStageCoordinator.mMainStage.getTopVisibleChildTaskId();
                }
                i2 = topVisibleChildTaskId;
            } catch (RemoteException | NullPointerException e) {
                if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                    ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -1303778599, 0, "Unable to update focus on the chosen stage: %s", String.valueOf(e.getMessage()));
                    return;
                }
                return;
            }
        }
        asInterface.setFocusedTask(i2);
    }

    public final void setMenuVisibility(boolean z) {
        final float f;
        if (z) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        TvSplitMenuView tvSplitMenuView = this.mSplitMenuView;
        final int i = 0;
        if (tvSplitMenuView.getAlpha() != f) {
            final int i2 = 1;
            tvSplitMenuView.animate().alpha(f).setDuration(this.mTvButtonFadeAnimationDuration).withStartAction(new Runnable(this) { // from class: com.android.wm.shell.splitscreen.tv.TvSplitMenuController$$ExternalSyntheticLambda0
                public final /* synthetic */ TvSplitMenuController f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i) {
                        case 0:
                            TvSplitMenuController tvSplitMenuController = this.f$0;
                            if (f != 0.0f) {
                                tvSplitMenuController.mSplitMenuView.setVisibility(0);
                                return;
                            } else {
                                tvSplitMenuController.getClass();
                                return;
                            }
                        default:
                            TvSplitMenuController tvSplitMenuController2 = this.f$0;
                            if (f == 0.0f) {
                                tvSplitMenuController2.mSplitMenuView.setVisibility(4);
                                return;
                            } else {
                                tvSplitMenuController2.getClass();
                                return;
                            }
                    }
                }
            }).withEndAction(new Runnable(this) { // from class: com.android.wm.shell.splitscreen.tv.TvSplitMenuController$$ExternalSyntheticLambda0
                public final /* synthetic */ TvSplitMenuController f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            TvSplitMenuController tvSplitMenuController = this.f$0;
                            if (f != 0.0f) {
                                tvSplitMenuController.mSplitMenuView.setVisibility(0);
                                return;
                            } else {
                                tvSplitMenuController.getClass();
                                return;
                            }
                        default:
                            TvSplitMenuController tvSplitMenuController2 = this.f$0;
                            if (f == 0.0f) {
                                tvSplitMenuController2.mSplitMenuView.setVisibility(4);
                                return;
                            } else {
                                tvSplitMenuController2.getClass();
                                return;
                            }
                    }
                }
            });
        }
        try {
            WindowManagerGlobal.getWindowSession().grantEmbeddedWindowFocus((IWindow) null, this.mSystemWindows.getFocusGrantToken(tvSplitMenuView), z);
        } catch (RemoteException e) {
            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -12724793, 0, "%s: Unable to update focus, %s", "TvSplitMenuController", String.valueOf(e));
            }
        }
    }
}
