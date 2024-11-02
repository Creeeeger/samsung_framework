package com.android.systemui.keyguard.animator;

import android.content.Context;
import android.graphics.PointF;
import android.util.Log;
import android.view.MotionEvent;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.animator.KeyguardTouchDymLockInjector;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.pluginlock.component.PluginLockSwipe;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.LogUtil;
import com.samsung.android.knox.ex.knoxAI.KnoxAiManagerInternal;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTouchSwipeDetector extends KeyguardTouchBase {
    public final KeyguardTouchDymLockInjector mDynamicLockInjector;
    public final KeyguardTouchSecurityInjector mSecurityInjector;
    public KeyguardTouchSwipeCallback mUnlockCallback;

    public KeyguardTouchSwipeDetector(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardTouchDymLockInjector keyguardTouchDymLockInjector, KeyguardTouchSecurityInjector keyguardTouchSecurityInjector) {
        super(context, keyguardUpdateMonitor);
        this.mDynamicLockInjector = keyguardTouchDymLockInjector;
        this.mSecurityInjector = keyguardTouchSecurityInjector;
        initDimens();
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int action = motionEvent.getAction() & 255;
        boolean z3 = true;
        boolean z4 = false;
        if (this.isUnlockExecuted) {
            if (action != 0 && action != 5) {
                z3 = false;
            }
            if (z3) {
                Log.i("KeyguardTouchSwipeDetector", "onTouchEvent(): Unlock is started already");
            }
            return false;
        }
        if (!this.intercepting) {
            if (action != 0 && action != 5) {
                z3 = false;
            }
            if (z3) {
                Log.i("KeyguardTouchSwipeDetector", "onTouchEvent(): mIntercepting is false");
            }
            return false;
        }
        KeyguardTouchSecurityInjector keyguardTouchSecurityInjector = this.mSecurityInjector;
        if (keyguardTouchSecurityInjector != null) {
            if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardTouchSecurityInjector.mKeyguardUpdateMonitor.isIccBlockedPermanently()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (action == 0 || action == 5) {
                    z4 = true;
                }
                if (z4) {
                    Log.d("KeyguardTouchSwipeDetector", "isSupportSimPermDisabled!!");
                }
                return true;
            }
        }
        double d = this.distance;
        KeyguardTouchDymLockInjector keyguardTouchDymLockInjector = this.mDynamicLockInjector;
        PointF pointF = this.touchDownPos;
        KeyguardTouchDymLockInjector.Direction direction = null;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        if (action == 5) {
                            if (motionEvent.getPointerCount() >= 2) {
                                z4 = true;
                            }
                            this.isMultiTouch = z4;
                            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="), this.isMultiTouch, "KeyguardTouchSwipeDetector");
                        }
                    } else {
                        Log.d("KeyguardTouchSwipeDetector", "onTouchEvent(): ACTION_CANCEL mDistance=" + d);
                        if (motionEvent.getPointerCount() <= 1) {
                            this.isMultiTouch = false;
                            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onTouchEvent(): ACTION_CANCEL mIsMultiTouch="), this.isMultiTouch, "KeyguardTouchSwipeDetector");
                        }
                        setTouch(false);
                    }
                } else {
                    if (!this.isTouching) {
                        return false;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis - KnoxAiManagerInternal.CONN_MAX_WAIT_TIME > this.userActivityInvokedTime) {
                        KeyguardTouchSwipeCallback keyguardTouchSwipeCallback = this.mUnlockCallback;
                        if (keyguardTouchSwipeCallback != null) {
                            keyguardTouchSwipeCallback.callUserActivity();
                        }
                        this.userActivityInvokedTime = currentTimeMillis;
                    }
                    updateDistance(motionEvent, false);
                    if (keyguardTouchDymLockInjector != null && keyguardTouchDymLockInjector.mIsDynamicLockEnabled) {
                        keyguardTouchDymLockInjector.updateDirection(this.swipeUnlockRadius, pointF.x, pointF.y, motionEvent);
                    }
                }
            } else {
                LogUtil.d("KeyguardTouchSwipeDetector", "onTouchEvent(): ACTION_UP (T/D/R)=%d/%f/%d", Integer.valueOf(this.touchSlop), Double.valueOf(d), Integer.valueOf(this.swipeUnlockRadius));
                setIntercept(false);
                KeyguardTouchSwipeCallback keyguardTouchSwipeCallback2 = this.mUnlockCallback;
                if (keyguardTouchSwipeCallback2 != null) {
                    keyguardTouchSwipeCallback2.callUserActivity();
                }
                if (keyguardTouchDymLockInjector != null && keyguardTouchDymLockInjector.mIsDynamicLockEnabled) {
                    KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class));
                    if (keyguardStateControllerImpl.mIsSwipeBouncer && keyguardStateControllerImpl.mCanDismissLockScreen && keyguardStateControllerImpl.mShowing) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        direction = keyguardTouchDymLockInjector.mDirection;
                    }
                }
                if (keyguardTouchDymLockInjector == null || direction == null || direction == KeyguardTouchDymLockInjector.Direction.SWIPE) {
                    if (d < this.touchSlop) {
                        KeyguardTouchSwipeCallback keyguardTouchSwipeCallback3 = this.mUnlockCallback;
                        if (keyguardTouchSwipeCallback3 != null) {
                            keyguardTouchSwipeCallback3.onAffordanceTap();
                        }
                    } else if (this.swipeUnlockRadius < d && getCanBeUnlock() && this.mUnlockCallback != null) {
                        com.android.systemui.keyguard.Log.i("KeyguardTouchBase", "unlockExecute()");
                        this.isUnlockExecuted = true;
                        this.mUnlockCallback.onUnlockExecuted();
                    }
                    this.isUnlockExecuted = false;
                    this.distance = 0.0f;
                    this.updateDistanceCount = 0;
                    pointF.x = -1.0f;
                    pointF.y = -1.0f;
                    if (keyguardTouchDymLockInjector != null) {
                        keyguardTouchDymLockInjector.resetDynamicLock();
                    }
                }
                setTouch(false);
                if (motionEvent.getPointerCount() >= 2) {
                    z4 = true;
                }
                this.isMultiTouch = z4;
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onTouchEvent(): ACTION_UP mIsMultiTouch="), this.isMultiTouch, "KeyguardTouchSwipeDetector");
            }
        } else {
            this.isMultiTouch = false;
            setTouch(true);
            pointF.x = motionEvent.getRawX();
            pointF.y = motionEvent.getRawY();
            this.distance = 0.0f;
            this.updateDistanceCount = 0;
            if (keyguardTouchDymLockInjector != null) {
                PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) keyguardTouchDymLockInjector.mPluginLockMediator;
                keyguardTouchDymLockInjector.mIsDynamicLockEnabled = pluginLockMediatorImpl.isDynamicLockEnabled();
                LogUtil.d("KeyguardTouchDymLockInjector", "initDynamicLock mIsDynamicLockEnabled: " + keyguardTouchDymLockInjector.mIsDynamicLockEnabled, new Object[0]);
                if (keyguardTouchDymLockInjector.mIsDynamicLockEnabled) {
                    keyguardTouchDymLockInjector.mNonSwipeMode = 0;
                    PluginLockSwipe pluginLockSwipe = pluginLockMediatorImpl.mSwipe;
                    if (pluginLockSwipe != null) {
                        keyguardTouchDymLockInjector.mNonSwipeMode = pluginLockSwipe.mNonSwipeMode;
                    }
                    keyguardTouchDymLockInjector.mDirection = null;
                    LogUtil.d("KeyguardTouchDymLockInjector", String.format("mNonSwipeMode: 0x%08x", Integer.valueOf(keyguardTouchDymLockInjector.mNonSwipeMode)), new Object[0]);
                }
            }
        }
        return true;
    }
}
