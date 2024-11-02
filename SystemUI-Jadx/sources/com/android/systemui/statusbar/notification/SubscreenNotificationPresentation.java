package com.android.systemui.statusbar.notification;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.Property;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.util.wakelock.SettableWakeLock;
import com.android.systemui.util.wakelock.WakeLock;
import com.samsung.android.aod.AODManager;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationPresentation extends Dialog {
    public final ViewGroup contents;
    public final SubscreenDeviceModelParent mDeviceModel;
    public final SettableWakeLock mPresentationWakeLock;

    public SubscreenNotificationPresentation(Context context, Display display, View view, SubscreenDeviceModelParent subscreenDeviceModelParent) {
        super(context, R.style.SubscreenNotification);
        this.mDeviceModel = subscreenDeviceModelParent;
        FrameLayout frameLayout = new FrameLayout(context);
        this.contents = frameLayout;
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        frameLayout.addView(view);
        Window window = getWindow();
        if (window != null) {
            window.getAttributes().privateFlags |= 16;
            window.getDecorView().semSetRoundedCorners(0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.setTitle("SubScreenNotification");
            attributes.layoutInDisplayCutoutMode = subscreenDeviceModelParent.getLayoutInDisplayCutoutMode();
            attributes.semSetScreenTimeout(3000L);
            if (subscreenDeviceModelParent.useTopPresentation()) {
                attributes.flags |= 8;
            }
            window.setAttributes(attributes);
            if (subscreenDeviceModelParent.useTopPresentation()) {
                window.getAttributes().height = -2;
                window.getAttributes().gravity = 48;
                window.setBackgroundDrawable(new ColorDrawable(0));
                window.setFlags(32, 32);
            }
        }
        setCancelable(false);
        this.mPresentationWakeLock = new SettableWakeLock(WakeLock.wrap(((PowerManager) context.getSystemService("power")).newWakeLock(1, "SystemUI:SubscreenNotification"), null, 300000L), "S.S.N.:Partial");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        Log.d("S.S.N.", " PRESENTATION dismiss()");
        if (this.mDeviceModel.useTopPresentation()) {
            AODManager aODManager = AODManager.getInstance(getContext());
            Log.d("S.S.N.", " PRESENTATION remove tsp rect");
            aODManager.updateAODTspRect(-1, -1, -1, -1, "cover_detailed_popup");
            this.mDeviceModel.unregisterAODTspReceiver();
            Animator topPresentationDismissAnimator = this.mDeviceModel.getTopPresentationDismissAnimator(this.contents);
            if (topPresentationDismissAnimator != null) {
                topPresentationDismissAnimator.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$1
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super/*android.app.Dialog*/.dismiss();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
            }
            if (topPresentationDismissAnimator != null) {
                topPresentationDismissAnimator.start();
                return;
            }
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.contents, (Property<ViewGroup, Float>) View.ALPHA, 1.0f, 0.0f);
        ofFloat.setDuration(300L);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super/*android.app.Dialog*/.dismiss();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ofFloat.start();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        String str;
        Integer num;
        WindowManager.LayoutParams attributes;
        View decorView;
        super.onCreate(bundle);
        NotificationEntry notificationEntry = this.mDeviceModel.currentPresentationEntry;
        WindowManager.LayoutParams layoutParams = null;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(" PRESENTATION ON - ", str, "S.S.N.");
        int fullPopupWindowType = this.mDeviceModel.getFullPopupWindowType();
        Window window = getWindow();
        if (window != null) {
            window.setType(fullPopupWindowType);
        }
        setContentView(this.contents);
        Window window2 = getWindow();
        if (window2 != null && (decorView = window2.getDecorView()) != null) {
            decorView.setSystemUiVisibility(PeripheralConstants.ErrorCode.ERROR_PLUGIN_CUSTOM_BASE);
        }
        if (!NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) {
            Window window3 = getWindow();
            if (window3 != null && (attributes = window3.getAttributes()) != null) {
                num = Integer.valueOf(attributes.screenOrientation);
            } else {
                num = null;
            }
            if (num == -1) {
                Window window4 = getWindow();
                if (window4 != null) {
                    layoutParams = window4.getAttributes();
                }
                if (layoutParams != null) {
                    layoutParams.screenOrientation = 8;
                }
            }
        }
        Window window5 = getWindow();
        if (window5 != null) {
            window5.setNavigationBarContrastEnforced(false);
        }
        Window window6 = getWindow();
        if (window6 != null) {
            window6.setNavigationBarColor(0);
        }
        SettableWakeLock settableWakeLock = this.mPresentationWakeLock;
        if (settableWakeLock != null) {
            settableWakeLock.setAcquired(true);
        }
    }

    @Override // android.app.Dialog
    public final void onStop() {
        String str;
        super.onStop();
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        NotificationEntry notificationEntry = subscreenDeviceModelParent.currentPresentationEntry;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        Log.d("S.S.N.", " PRESENTATION OFF Parent- " + str);
        subscreenDeviceModelParent.updateWakeLock(false, false);
        SubscreenNotificationPresentation subscreenNotificationPresentation = subscreenDeviceModelParent.mPresentation;
        if (subscreenNotificationPresentation != null) {
            subscreenNotificationPresentation.setOnShowListener(null);
        }
        subscreenDeviceModelParent.mPresentation = null;
        subscreenDeviceModelParent.presentationNotiTemplate = null;
        subscreenDeviceModelParent.currentPresentationEntry = null;
        subscreenDeviceModelParent.presentationShowing = false;
        FrameLayout frameLayout = subscreenDeviceModelParent.mCallFullPopupBacgroundView;
        if (frameLayout != null) {
            frameLayout.clearAnimation();
        }
        subscreenDeviceModelParent.mCallFullPopupBacgroundView = null;
        subscreenDeviceModelParent.mNotiPopupType = 0;
        subscreenDeviceModelParent.mIsFullscreenFullPopupWindowClosing = false;
        Log.d("S.S.N.", " RELEASE DOZE STATE - onStop");
        subscreenDeviceModelParent.mController.requestDozeState(64, false);
        SettableWakeLock settableWakeLock = this.mPresentationWakeLock;
        if (settableWakeLock != null) {
            settableWakeLock.setAcquired(false);
        }
    }

    @Override // android.app.Dialog
    public final void show() {
        int i;
        Log.d("S.S.N.", " PRESENTATION show()");
        if (this.mDeviceModel.useTopPresentation()) {
            this.contents.measure(0, 0);
            int i2 = getContext().getResources().getDisplayMetrics().widthPixels;
            int i3 = getContext().getResources().getDisplayMetrics().heightPixels;
            int measuredHeight = this.contents.getMeasuredHeight();
            int[] iArr = new int[4];
            iArr[0] = i2;
            iArr[1] = measuredHeight;
            iArr[2] = 0;
            if (this.mDeviceModel.mIsFlexMode) {
                i = i3 - measuredHeight;
            } else {
                i = 0;
            }
            iArr[3] = i;
            AODManager aODManager = AODManager.getInstance(getContext());
            int i4 = iArr[0];
            int i5 = iArr[1];
            int i6 = iArr[2];
            int i7 = iArr[3];
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m(" PRESENTATION updateAODTspRect(", i4, ", ", i5, ", ");
            m.append(i6);
            m.append(", ");
            m.append(i7);
            m.append(")");
            Log.d("S.S.N.", m.toString());
            aODManager.updateAODTspRect(iArr[0], iArr[1], iArr[2], iArr[3], "cover_detailed_popup");
            this.mDeviceModel.registerAODTspReceiver();
            Animator popUpViewShowAnimator = this.mDeviceModel.getPopUpViewShowAnimator(this.contents);
            if (popUpViewShowAnimator != null) {
                popUpViewShowAnimator.setStartDelay(500L);
            }
            if (popUpViewShowAnimator != null) {
                popUpViewShowAnimator.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationPresentation$show$$inlined$doOnStart$1
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        SubscreenNotificationPresentation.this.contents.setAlpha(0.0f);
                        super/*android.app.Dialog*/.show();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }
                });
            }
            if (popUpViewShowAnimator != null) {
                popUpViewShowAnimator.start();
                return;
            }
            return;
        }
        super.show();
    }
}
