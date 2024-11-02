package com.android.systemui.statusbar.policy;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.ColorUtils;
import com.android.app.animation.Interpolators;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.KeyguardVisibilityHelper;
import com.android.settingslib.animation.AppearAnimationUtils;
import com.android.settingslib.drawable.CircleFramedDrawable;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.user.data.model.UserSwitcherSettingsModel;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import com.android.systemui.user.data.source.UserRecord;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.ViewController;
import com.samsung.android.desktopmode.SemDesktopModeState;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardUserSwitcherController extends ViewController implements DesktopManager.Callback {
    public static final AnimationProperties ANIMATION_PROPERTIES;
    public final KeyguardUserAdapter mAdapter;
    public final KeyguardUserSwitcherScrim mBackground;
    public int mBarState;
    public ObjectAnimator mBgAnimator;
    public float mDarkAmount;
    public final AnonymousClass4 mDataSetObserver;
    public int mDynamicLockMode;
    public final KeyguardUpdateMonitorCallback mInfoCallback;
    public boolean mIsDexModeEnabled;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardVisibilityHelper mKeyguardVisibilityHelper;
    public KeyguardUserSwitcherListView mListView;
    public final ScreenLifecycle mScreenLifecycle;
    public final AnonymousClass2 mScreenObserver;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public final AnonymousClass3 mStatusBarStateListener;
    public final UserSwitcherController mUserSwitcherController;
    public boolean mUserSwitcherOpen;

    static {
        AnimationProperties animationProperties = new AnimationProperties();
        animationProperties.duration = 360L;
        ANIMATION_PROPERTIES = animationProperties;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.statusbar.policy.KeyguardUserSwitcherController$2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.statusbar.policy.KeyguardUserSwitcherController$3] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.statusbar.policy.KeyguardUserSwitcherController$4] */
    public KeyguardUserSwitcherController(KeyguardUserSwitcherView keyguardUserSwitcherView, Context context, Resources resources, LayoutInflater layoutInflater, ScreenLifecycle screenLifecycle, UserSwitcherController userSwitcherController, KeyguardStateController keyguardStateController, SysuiStatusBarStateController sysuiStatusBarStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, DozeParameters dozeParameters, ScreenOffAnimationController screenOffAnimationController, PowerManager powerManager) {
        super(keyguardUserSwitcherView);
        KeyguardUserAdapter keyguardUserAdapter;
        this.mIsDexModeEnabled = false;
        this.mDynamicLockMode = 0;
        this.mInfoCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDlsViewModeChanged(int i) {
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                keyguardUserSwitcherController.mDynamicLockMode = i;
                keyguardUserSwitcherController.updatevisibility();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z) {
                Log.d("KeyguardUserSwitcherController", String.format("onKeyguardVisibilityChanged %b", Boolean.valueOf(z)));
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                if (!z) {
                    keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(false);
                }
                if (LsRune.LOCKUI_MULTI_USER) {
                    keyguardUserSwitcherController.mAdapter.refreshUserOrder();
                    keyguardUserSwitcherController.updatevisibility();
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserSwitching(int i) {
                boolean z = LsRune.LOCKUI_MULTI_USER;
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                if (z) {
                    keyguardUserSwitcherController.updatevisibility();
                }
                keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(false);
            }
        };
        this.mScreenObserver = new ScreenLifecycle.Observer() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.2
            @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
            public final void onScreenTurnedOff() {
                Log.d("KeyguardUserSwitcherController", "onScreenTurnedOff");
                KeyguardUserSwitcherController.this.closeSwitcherIfOpenAndNotSimple(false);
            }
        };
        this.mStatusBarStateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.3
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozeAmountChanged(float f, float f2) {
                boolean z;
                Log.d("KeyguardUserSwitcherController", String.format("onDozeAmountChanged: linearAmount=%f amount=%f", Float.valueOf(f), Float.valueOf(f2)));
                AnimationProperties animationProperties = KeyguardUserSwitcherController.ANIMATION_PROPERTIES;
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                keyguardUserSwitcherController.getClass();
                if (f2 == 1.0f) {
                    z = true;
                } else {
                    z = false;
                }
                if (f2 != keyguardUserSwitcherController.mDarkAmount) {
                    keyguardUserSwitcherController.mDarkAmount = f2;
                    KeyguardUserSwitcherListView keyguardUserSwitcherListView = keyguardUserSwitcherController.mListView;
                    int childCount = keyguardUserSwitcherListView.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = keyguardUserSwitcherListView.getChildAt(i);
                        if (childAt instanceof KeyguardUserDetailItemView) {
                            KeyguardUserDetailItemView keyguardUserDetailItemView = (KeyguardUserDetailItemView) childAt;
                            if (keyguardUserDetailItemView.mDarkAmount != f2) {
                                keyguardUserDetailItemView.mDarkAmount = f2;
                                keyguardUserDetailItemView.mName.setTextColor(ColorUtils.blendARGB(f2, keyguardUserDetailItemView.mTextColor, -1));
                            }
                        }
                    }
                    if (z) {
                        keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(false);
                    }
                }
            }

            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onStateChanged(int i) {
                Log.d("KeyguardUserSwitcherController", String.format("onStateChanged: newState=%d", Integer.valueOf(i)));
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                boolean goingToFullShade = ((StatusBarStateControllerImpl) keyguardUserSwitcherController.mStatusBarStateController).goingToFullShade();
                KeyguardStateController keyguardStateController2 = keyguardUserSwitcherController.mKeyguardStateController;
                boolean z = ((KeyguardStateControllerImpl) keyguardStateController2).mKeyguardFadingAway;
                int i2 = keyguardUserSwitcherController.mBarState;
                keyguardUserSwitcherController.mBarState = i;
                if (((StatusBarStateControllerImpl) keyguardUserSwitcherController.mStatusBarStateController).goingToFullShade() || ((KeyguardStateControllerImpl) keyguardStateController2).mKeyguardFadingAway) {
                    keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(true);
                }
                keyguardUserSwitcherController.mKeyguardVisibilityHelper.setViewVisibility(i, i2, z, goingToFullShade);
            }
        };
        this.mDataSetObserver = new DataSetObserver() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.4
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                View view;
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                int childCount = keyguardUserSwitcherController.mListView.getChildCount();
                KeyguardUserAdapter keyguardUserAdapter2 = keyguardUserSwitcherController.mAdapter;
                int count = keyguardUserAdapter2.getCount();
                int max = Math.max(childCount, count);
                Log.d("KeyguardUserSwitcherController", String.format("refreshUserList childCount=%d adapterCount=%d", Integer.valueOf(childCount), Integer.valueOf(count)));
                boolean z = false;
                for (int i = 0; i < max; i++) {
                    if (i < count) {
                        if (i < childCount) {
                            view = keyguardUserSwitcherController.mListView.getChildAt(i);
                        } else {
                            view = null;
                        }
                        KeyguardUserDetailItemView keyguardUserDetailItemView = (KeyguardUserDetailItemView) keyguardUserAdapter2.getView(i, view, keyguardUserSwitcherController.mListView);
                        UserRecord userRecord = (UserRecord) keyguardUserDetailItemView.getTag();
                        if (userRecord.isCurrent) {
                            if (i != 0) {
                                Log.w("KeyguardUserSwitcherController", "Current user is not the first view in the list");
                            }
                            int i2 = userRecord.info.id;
                            keyguardUserDetailItemView.updateVisibilities(true, keyguardUserSwitcherController.mUserSwitcherOpen, false);
                            z = true;
                        } else {
                            keyguardUserDetailItemView.updateVisibilities(keyguardUserSwitcherController.mUserSwitcherOpen, true, false);
                        }
                        float f = keyguardUserSwitcherController.mDarkAmount;
                        if (keyguardUserDetailItemView.mDarkAmount != f) {
                            keyguardUserDetailItemView.mDarkAmount = f;
                            keyguardUserDetailItemView.mName.setTextColor(ColorUtils.blendARGB(f, keyguardUserDetailItemView.mTextColor, -1));
                        }
                        if (view == null) {
                            keyguardUserSwitcherController.mListView.addView(keyguardUserDetailItemView);
                        } else if (view != keyguardUserDetailItemView) {
                            KeyguardUserSwitcherListView keyguardUserSwitcherListView = keyguardUserSwitcherController.mListView;
                            keyguardUserSwitcherListView.removeViewAt(i);
                            keyguardUserSwitcherListView.addView(keyguardUserDetailItemView, i);
                        }
                    } else {
                        keyguardUserSwitcherController.mListView.removeViewAt(r9.getChildCount() - 1);
                    }
                }
                if (!z) {
                    Log.w("KeyguardUserSwitcherController", "Current user is not listed");
                }
            }
        };
        Log.d("KeyguardUserSwitcherController", "New KeyguardUserSwitcherController");
        this.mScreenLifecycle = screenLifecycle;
        this.mUserSwitcherController = userSwitcherController;
        this.mKeyguardStateController = keyguardStateController;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        if (LsRune.LOCKUI_MULTI_USER) {
            keyguardUserAdapter = new KeyguardUserAdapter(context, resources, layoutInflater, userSwitcherController, powerManager, this);
        } else {
            keyguardUserAdapter = new KeyguardUserAdapter(context, resources, layoutInflater, userSwitcherController, this);
        }
        this.mAdapter = keyguardUserAdapter;
        this.mKeyguardVisibilityHelper = new KeyguardVisibilityHelper(this.mView, keyguardStateController, dozeParameters, screenOffAnimationController, false, null);
        this.mBackground = new KeyguardUserSwitcherScrim(context);
    }

    public final boolean closeSwitcherIfOpenAndNotSimple(boolean z) {
        if (!this.mUserSwitcherOpen || ((UserSwitcherSettingsModel) ((UserRepositoryImpl) this.mUserSwitcherController.getUserInteractor().repository)._userSwitcherSettings.getValue()).isSimpleUserSwitcher) {
            return false;
        }
        setUserSwitcherOpened(false, z);
        return true;
    }

    @Override // com.android.systemui.util.DesktopManager.Callback
    public final void onDesktopModeStateChanged(SemDesktopModeState semDesktopModeState) {
        boolean z;
        if (semDesktopModeState != null && (semDesktopModeState.getEnabled() == 3 || semDesktopModeState.getEnabled() == 4)) {
            z = true;
        } else {
            z = false;
        }
        this.mIsDexModeEnabled = z;
        updatevisibility();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        Log.d("KeyguardUserSwitcherController", "onInit");
        this.mListView = (KeyguardUserSwitcherListView) ((KeyguardUserSwitcherView) this.mView).findViewById(R.id.keyguard_user_switcher_list);
        if (LsRune.LOCKUI_MULTI_USER) {
            updatevisibility();
        }
        ((KeyguardUserSwitcherView) this.mView).setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z;
                KeyguardUserSwitcherController keyguardUserSwitcherController = KeyguardUserSwitcherController.this;
                if (!keyguardUserSwitcherController.mKeyguardVisibilityHelper.mKeyguardViewVisibilityAnimating && !keyguardUserSwitcherController.mListView.mAnimating) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    return false;
                }
                return keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(true);
            }
        });
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        Log.d("KeyguardUserSwitcherController", "onViewAttached");
        KeyguardUserAdapter keyguardUserAdapter = this.mAdapter;
        keyguardUserAdapter.registerDataSetObserver(this.mDataSetObserver);
        keyguardUserAdapter.notifyDataSetChanged();
        this.mKeyguardUpdateMonitor.registerCallback(this.mInfoCallback);
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).addCallback((StatusBarStateController.StateListener) this.mStatusBarStateListener);
        this.mScreenLifecycle.addObserver(this.mScreenObserver);
        if (LsRune.LOCKUI_MULTI_USER) {
            ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).registerCallback(this);
            onDesktopModeStateChanged(((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).getSemDesktopModeState());
        }
        if (((UserSwitcherSettingsModel) ((UserRepositoryImpl) this.mUserSwitcherController.getUserInteractor().repository)._userSwitcherSettings.getValue()).isSimpleUserSwitcher) {
            setUserSwitcherOpened(true, true);
            return;
        }
        KeyguardUserSwitcherView keyguardUserSwitcherView = (KeyguardUserSwitcherView) this.mView;
        KeyguardUserSwitcherScrim keyguardUserSwitcherScrim = this.mBackground;
        keyguardUserSwitcherView.addOnLayoutChangeListener(keyguardUserSwitcherScrim);
        ((KeyguardUserSwitcherView) this.mView).setBackground(keyguardUserSwitcherScrim);
        keyguardUserSwitcherScrim.setAlpha(0);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        Log.d("KeyguardUserSwitcherController", "onViewDetached");
        closeSwitcherIfOpenAndNotSimple(false);
        this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        this.mKeyguardUpdateMonitor.removeCallback(this.mInfoCallback);
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).removeCallback((StatusBarStateController.StateListener) this.mStatusBarStateListener);
        this.mScreenLifecycle.removeObserver(this.mScreenObserver);
        KeyguardUserSwitcherView keyguardUserSwitcherView = (KeyguardUserSwitcherView) this.mView;
        KeyguardUserSwitcherScrim keyguardUserSwitcherScrim = this.mBackground;
        keyguardUserSwitcherView.removeOnLayoutChangeListener(keyguardUserSwitcherScrim);
        ((KeyguardUserSwitcherView) this.mView).setBackground(null);
        keyguardUserSwitcherScrim.setAlpha(0);
        if (LsRune.LOCKUI_MULTI_USER) {
            ((ArrayList) ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).mCallbacks).remove(this);
        }
    }

    public final void setUserSwitcherOpened(boolean z, boolean z2) {
        AppearAnimationUtils appearAnimationUtils;
        Runnable runnable;
        float f;
        Log.d("KeyguardUserSwitcherController", String.format("setUserSwitcherOpened: %b -> %b (animate=%b)", Boolean.valueOf(this.mUserSwitcherOpen), Boolean.valueOf(z), Boolean.valueOf(z2)));
        this.mUserSwitcherOpen = z;
        Log.d("KeyguardUserSwitcherController", String.format("updateVisibilities: animate=%b", Boolean.valueOf(z2)));
        if (!LsRune.LOCKUI_MULTI_USER) {
            ObjectAnimator objectAnimator = this.mBgAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            boolean z3 = this.mUserSwitcherOpen;
            KeyguardUserSwitcherScrim keyguardUserSwitcherScrim = this.mBackground;
            if (z3) {
                ObjectAnimator ofInt = ObjectAnimator.ofInt(keyguardUserSwitcherScrim, "alpha", 0, 255);
                this.mBgAnimator = ofInt;
                ofInt.setDuration(400L);
                this.mBgAnimator.setInterpolator(Interpolators.ALPHA_IN);
                this.mBgAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        KeyguardUserSwitcherController.this.mBgAnimator = null;
                    }
                });
                this.mBgAnimator.start();
            } else {
                ObjectAnimator ofInt2 = ObjectAnimator.ofInt(keyguardUserSwitcherScrim, "alpha", 255, 0);
                this.mBgAnimator = ofInt2;
                ofInt2.setDuration(400L);
                this.mBgAnimator.setInterpolator(Interpolators.ALPHA_OUT);
                this.mBgAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        KeyguardUserSwitcherController.this.mBgAnimator = null;
                    }
                });
                this.mBgAnimator.start();
            }
        }
        final KeyguardUserSwitcherListView keyguardUserSwitcherListView = this.mListView;
        final boolean z4 = this.mUserSwitcherOpen;
        Log.d("KeyguardUserSwitcherListView", String.format("updateVisibilities: open=%b animate=%b childCount=%d", Boolean.valueOf(z4), Boolean.valueOf(z2), Integer.valueOf(keyguardUserSwitcherListView.getChildCount())));
        keyguardUserSwitcherListView.mAnimating = false;
        int childCount = keyguardUserSwitcherListView.getChildCount();
        final KeyguardUserDetailItemView[] keyguardUserDetailItemViewArr = new KeyguardUserDetailItemView[childCount];
        for (int i = 0; i < childCount; i++) {
            KeyguardUserDetailItemView keyguardUserDetailItemView = (KeyguardUserDetailItemView) keyguardUserSwitcherListView.getChildAt(i);
            keyguardUserDetailItemViewArr[i] = keyguardUserDetailItemView;
            keyguardUserDetailItemView.clearAnimation();
            if (i == 0) {
                keyguardUserDetailItemViewArr[i].updateVisibilities(true, z4, z2);
                keyguardUserDetailItemViewArr[i].setClickable(true);
            } else {
                keyguardUserDetailItemViewArr[i].setClickable(z4);
                if (z4) {
                    keyguardUserDetailItemViewArr[i].updateVisibilities(true, true, false);
                }
            }
        }
        if (z2 && childCount > 1) {
            keyguardUserDetailItemViewArr[0] = null;
            keyguardUserSwitcherListView.setClipChildren(false);
            keyguardUserSwitcherListView.setClipToPadding(false);
            keyguardUserSwitcherListView.mAnimating = true;
            if (z4) {
                appearAnimationUtils = keyguardUserSwitcherListView.mAppearAnimationUtils;
            } else {
                appearAnimationUtils = keyguardUserSwitcherListView.mDisappearAnimationUtils;
            }
            Runnable runnable2 = new Runnable() { // from class: com.android.systemui.statusbar.policy.KeyguardUserSwitcherListView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    KeyguardUserSwitcherListView keyguardUserSwitcherListView2 = KeyguardUserSwitcherListView.this;
                    boolean z5 = z4;
                    KeyguardUserDetailItemView[] keyguardUserDetailItemViewArr2 = keyguardUserDetailItemViewArr;
                    int i2 = KeyguardUserSwitcherListView.$r8$clinit;
                    keyguardUserSwitcherListView2.setClipChildren(true);
                    keyguardUserSwitcherListView2.setClipToPadding(true);
                    keyguardUserSwitcherListView2.mAnimating = false;
                    if (!z5) {
                        for (int i3 = 1; i3 < keyguardUserDetailItemViewArr2.length; i3++) {
                            keyguardUserDetailItemViewArr2[i3].updateVisibilities(false, true, false);
                        }
                    }
                }
            };
            AppearAnimationUtils.AppearAnimationProperties appearAnimationProperties = appearAnimationUtils.mProperties;
            appearAnimationProperties.maxDelayColIndex = -1;
            appearAnimationProperties.maxDelayRowIndex = -1;
            appearAnimationProperties.delays = new long[childCount];
            long j = -1;
            for (int i2 = 0; i2 < childCount; i2++) {
                appearAnimationProperties.delays[i2] = new long[1];
                long calculateDelay = appearAnimationUtils.calculateDelay(i2, 0);
                appearAnimationProperties.delays[i2][0] = calculateDelay;
                if (keyguardUserDetailItemViewArr[i2] != null && calculateDelay > j) {
                    appearAnimationProperties.maxDelayColIndex = 0;
                    appearAnimationProperties.maxDelayRowIndex = i2;
                    j = calculateDelay;
                }
            }
            if (appearAnimationProperties.maxDelayRowIndex != -1 && appearAnimationProperties.maxDelayColIndex != -1) {
                int i3 = 0;
                while (true) {
                    long[][] jArr = appearAnimationProperties.delays;
                    if (i3 < jArr.length) {
                        long j2 = jArr[i3][0];
                        if (appearAnimationProperties.maxDelayRowIndex == i3 && appearAnimationProperties.maxDelayColIndex == 0) {
                            runnable = runnable2;
                        } else {
                            runnable = null;
                        }
                        if (appearAnimationUtils.mRowTranslationScaler != null) {
                            f = (float) (Math.pow(r4 - i3, 2.0d) / jArr.length);
                        } else {
                            f = 1.0f;
                        }
                        float f2 = f * appearAnimationUtils.mStartTranslation;
                        KeyguardUserDetailItemView keyguardUserDetailItemView2 = keyguardUserDetailItemViewArr[i3];
                        long j3 = appearAnimationUtils.mDuration;
                        boolean z5 = appearAnimationUtils.mAppearing;
                        if (!z5) {
                            f2 = -f2;
                        }
                        appearAnimationUtils.createAnimation((Object) keyguardUserDetailItemView2, j2, j3, f2, z5, appearAnimationUtils.mInterpolator, runnable);
                        i3++;
                        runnable2 = runnable2;
                    } else {
                        return;
                    }
                }
            } else {
                runnable2.run();
            }
        } else if (childCount > 1 && !z4) {
            for (int i4 = 1; i4 < childCount; i4++) {
                keyguardUserDetailItemViewArr[i4].updateVisibilities(false, true, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r1.isKeyguardVisible() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        if (r4 != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updatevisibility() {
        /*
            r5 = this;
            com.android.systemui.statusbar.policy.KeyguardUserSwitcherListView r0 = r5.mListView
            boolean r1 = com.android.systemui.LsRune.LOCKUI_MULTI_USER
            if (r1 == 0) goto L48
            boolean r1 = com.android.systemui.LsRune.KEYGUARD_FBE
            r2 = 0
            if (r1 == 0) goto L44
            com.android.keyguard.KeyguardUpdateMonitor r1 = r5.mKeyguardUpdateMonitor
            boolean r3 = r1.isKidsModeRunning()
            if (r3 != 0) goto L44
            boolean r3 = r5.mIsDexModeEnabled
            if (r3 != 0) goto L44
            boolean r3 = r1.isUserUnlocked()
            if (r3 == 0) goto L44
            int r3 = r5.mDynamicLockMode
            r4 = 1
            if (r3 == 0) goto L24
            r3 = r4
            goto L25
        L24:
            r3 = r2
        L25:
            if (r3 != 0) goto L44
            java.lang.Class<com.android.systemui.util.SettingsHelper> r3 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.util.SettingsHelper r3 = (com.android.systemui.util.SettingsHelper) r3
            boolean r3 = r3.isUserSwitcherSettingOn()
            if (r3 == 0) goto L44
            com.android.systemui.statusbar.policy.KeyguardUserSwitcherController$KeyguardUserAdapter r5 = r5.mAdapter
            int r5 = r5.getCount()
            if (r5 <= r4) goto L44
            boolean r5 = r1.isKeyguardVisible()
            if (r5 == 0) goto L44
            goto L45
        L44:
            r4 = r2
        L45:
            if (r4 == 0) goto L48
            goto L4a
        L48:
            r2 = 8
        L4a:
            r0.setVisibility(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.policy.KeyguardUserSwitcherController.updatevisibility():void");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class KeyguardUserAdapter extends BaseUserSwitcherAdapter implements View.OnClickListener {
        public final Context mContext;
        public final KeyguardUserSwitcherController mKeyguardUserSwitcherController;
        public final LayoutInflater mLayoutInflater;
        public final PowerManager mPowerManager;
        public final Resources mResources;
        public ArrayList mUsersOrdered;

        public KeyguardUserAdapter(Context context, Resources resources, LayoutInflater layoutInflater, UserSwitcherController userSwitcherController, PowerManager powerManager, KeyguardUserSwitcherController keyguardUserSwitcherController) {
            this(context, resources, layoutInflater, userSwitcherController, keyguardUserSwitcherController);
            this.mPowerManager = powerManager;
        }

        public final Drawable getDrawable(UserRecord userRecord) {
            Drawable iconDrawable;
            int i;
            if (userRecord.isCurrent && userRecord.isGuest) {
                iconDrawable = this.mContext.getDrawable(R.drawable.ic_avatar_guest_user);
            } else {
                iconDrawable = BaseUserSwitcherAdapter.getIconDrawable(this.mContext, userRecord);
            }
            if (userRecord.isSwitchToEnabled) {
                i = R.color.kg_user_switcher_avatar_icon_color;
            } else {
                i = R.color.kg_user_switcher_restricted_avatar_icon_color;
            }
            iconDrawable.setTint(this.mResources.getColor(i, this.mContext.getTheme()));
            return new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.drawable.user_avatar_bg), iconDrawable});
        }

        @Override // com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter
        public final List getUsers() {
            return this.mUsersOrdered;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            ColorFilter colorFilter;
            boolean z;
            Bitmap createBitmap;
            UserRecord item = getItem(i);
            int i2 = 0;
            if (!(view instanceof KeyguardUserDetailItemView) || !(view.getTag() instanceof UserRecord)) {
                view = this.mLayoutInflater.inflate(R.layout.keyguard_user_switcher_item, viewGroup, false);
            }
            KeyguardUserDetailItemView keyguardUserDetailItemView = (KeyguardUserDetailItemView) view;
            keyguardUserDetailItemView.setOnClickListener(this);
            String name = getName(this.mContext, item);
            boolean z2 = item.isSwitchToEnabled;
            Bitmap bitmap = item.picture;
            if (bitmap == null) {
                if (LsRune.LOCKUI_MULTI_USER) {
                    Drawable mutate = getDrawable(item).mutate();
                    int dimension = (int) this.mResources.getDimension(R.dimen.kg_framed_avatar_size);
                    AnimationProperties animationProperties = KeyguardUserSwitcherController.ANIMATION_PROPERTIES;
                    if (mutate instanceof BitmapDrawable) {
                        BitmapDrawable bitmapDrawable = (BitmapDrawable) mutate;
                        if (bitmapDrawable.getBitmap() != null) {
                            createBitmap = bitmapDrawable.getBitmap();
                            keyguardUserDetailItemView.bind(name, new CircleFramedDrawable(createBitmap, dimension), item.resolveId());
                        }
                    }
                    if (mutate.getIntrinsicWidth() > 0 && mutate.getIntrinsicHeight() > 0) {
                        createBitmap = Bitmap.createBitmap(mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    } else {
                        createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                    }
                    Canvas canvas = new Canvas(createBitmap);
                    mutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    mutate.draw(canvas);
                    keyguardUserDetailItemView.bind(name, new CircleFramedDrawable(createBitmap, dimension), item.resolveId());
                } else {
                    keyguardUserDetailItemView.bind(name, getDrawable(item).mutate(), item.resolveId());
                }
            } else {
                CircleFramedDrawable circleFramedDrawable = new CircleFramedDrawable(bitmap, (int) this.mResources.getDimension(R.dimen.kg_framed_avatar_size));
                if (z2) {
                    colorFilter = null;
                } else {
                    BaseUserSwitcherAdapter.Companion.getClass();
                    colorFilter = (ColorFilter) BaseUserSwitcherAdapter.disabledUserAvatarColorFilter$delegate.getValue();
                }
                circleFramedDrawable.setColorFilter(colorFilter);
                keyguardUserDetailItemView.bind(name, circleFramedDrawable, item.info.id);
            }
            keyguardUserDetailItemView.setActivated(item.isCurrent);
            if (item.enforcedAdmin != null) {
                z = true;
            } else {
                z = false;
            }
            View view2 = keyguardUserDetailItemView.mRestrictedPadlock;
            if (view2 != null) {
                if (!z) {
                    i2 = 8;
                }
                view2.setVisibility(i2);
            }
            keyguardUserDetailItemView.setEnabled(!z);
            keyguardUserDetailItemView.setEnabled(z2);
            UserSwitcherController.setSelectableAlpha(keyguardUserDetailItemView);
            keyguardUserDetailItemView.setTag(item);
            return keyguardUserDetailItemView;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            refreshUserOrder();
            super.notifyDataSetChanged();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PowerManager powerManager;
            UserRecord userRecord = (UserRecord) view.getTag();
            boolean z = false;
            if (LsRune.LOCKUI_MULTI_USER && (powerManager = this.mPowerManager) != null) {
                powerManager.userActivity(SystemClock.uptimeMillis(), 2, 0);
            }
            KeyguardUserSwitcherController keyguardUserSwitcherController = this.mKeyguardUserSwitcherController;
            AnimationProperties animationProperties = KeyguardUserSwitcherController.ANIMATION_PROPERTIES;
            if (keyguardUserSwitcherController.mKeyguardVisibilityHelper.mKeyguardViewVisibilityAnimating || keyguardUserSwitcherController.mListView.mAnimating) {
                z = true;
            }
            if (z) {
                return;
            }
            if (keyguardUserSwitcherController.mUserSwitcherOpen) {
                if (userRecord.isCurrent && !userRecord.isGuest) {
                    keyguardUserSwitcherController.closeSwitcherIfOpenAndNotSimple(true);
                    return;
                } else {
                    onUserListItemClicked(userRecord, null);
                    return;
                }
            }
            keyguardUserSwitcherController.setUserSwitcherOpened(true, true);
        }

        public final void refreshUserOrder() {
            ArrayList arrayList = (ArrayList) super.getUsers();
            this.mUsersOrdered = new ArrayList(arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                UserRecord userRecord = (UserRecord) arrayList.get(i);
                if (userRecord.isCurrent) {
                    this.mUsersOrdered.add(0, userRecord);
                } else {
                    this.mUsersOrdered.add(userRecord);
                }
            }
        }

        public KeyguardUserAdapter(Context context, Resources resources, LayoutInflater layoutInflater, UserSwitcherController userSwitcherController, KeyguardUserSwitcherController keyguardUserSwitcherController) {
            super(userSwitcherController);
            this.mUsersOrdered = new ArrayList();
            this.mContext = context;
            this.mResources = resources;
            this.mLayoutInflater = layoutInflater;
            this.mKeyguardUserSwitcherController = keyguardUserSwitcherController;
        }
    }
}
