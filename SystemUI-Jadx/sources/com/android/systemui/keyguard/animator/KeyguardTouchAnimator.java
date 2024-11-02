package com.android.systemui.keyguard.animator;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import android.view.DisplayInfo;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.SecRotationWatcher;
import com.android.systemui.Dumpable;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.facewidget.plugin.FaceWidgetContainerWrapper;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.keyguard.animator.ActionHandlerType;
import com.android.systemui.plugins.keyguardstatusview.PluginNotificationController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardUserSwitcherController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTouchAnimator extends KeyguardTouchBase implements Gefingerpoken, Dumpable {
    public final Map actionHandlerTypes;
    public KeyguardTouchSwipeCallback callback;
    public MotionEvent doubleTapDownEvent;
    public final int doubleTapSlop;
    public float dozeAmount;
    public final DragViewController dragViewController;
    public final KeyguardTouchDymLockInjector dymLockInjector;
    public final KeyguardEditModeAnimatorController editModeAnimatorController;
    public final FullScreenViewController fullScreenViewController;
    public final GestureDetector gestureDetector;
    public final KeyguardEditModeController keyguardEditModeController;
    public final KeyguardStateController keyguardStateController;
    public final KeyguardWallpaper keyguardWallpaper;
    public final KeyguardTouchLoggingInjector loggingInjector;
    public float notiScale;
    public final Lazy parentView$delegate;
    public final PivotViewController pivotViewController;
    public final StatusBarStateController sbStateController;
    public final KeyguardTouchSecurityInjector securityInjector;
    public final SettingsHelper settingsHelper;
    public final TapAffordanceViewController tapAffordanceViewController;
    public KeyguardTouchViewInjector viewInjector;
    public final SparseArray views;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public KeyguardTouchAnimator(Context context, final KeyguardUpdateMonitor keyguardUpdateMonitor, final PowerManager powerManager, KeyguardStateController keyguardStateController, KeyguardTouchDymLockInjector keyguardTouchDymLockInjector, KeyguardTouchLoggingInjector keyguardTouchLoggingInjector, KeyguardTouchSecurityInjector keyguardTouchSecurityInjector, StatusBarStateController statusBarStateController, SettingsHelper settingsHelper, KeyguardEditModeController keyguardEditModeController, KeyguardWallpaper keyguardWallpaper, SecRotationWatcher secRotationWatcher) {
        super(context, keyguardUpdateMonitor);
        this.keyguardStateController = keyguardStateController;
        this.dymLockInjector = keyguardTouchDymLockInjector;
        this.loggingInjector = keyguardTouchLoggingInjector;
        this.securityInjector = keyguardTouchSecurityInjector;
        this.sbStateController = statusBarStateController;
        this.settingsHelper = settingsHelper;
        this.keyguardEditModeController = keyguardEditModeController;
        this.keyguardWallpaper = keyguardWallpaper;
        this.parentView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.animator.KeyguardTouchAnimator$parentView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardTouchViewInjector keyguardTouchViewInjector = KeyguardTouchAnimator.this.viewInjector;
                if (keyguardTouchViewInjector == null) {
                    keyguardTouchViewInjector = null;
                }
                return ((NotificationPanelViewController) keyguardTouchViewInjector).mView;
            }
        });
        this.views = new SparseArray();
        this.actionHandlerTypes = new LinkedHashMap();
        this.tapAffordanceViewController = new TapAffordanceViewController(this);
        this.pivotViewController = new PivotViewController(this);
        this.fullScreenViewController = new FullScreenViewController(this);
        this.editModeAnimatorController = new KeyguardEditModeAnimatorController(this, keyguardEditModeController, keyguardWallpaper, keyguardUpdateMonitor, secRotationWatcher, settingsHelper);
        this.dragViewController = new DragViewController(this);
        initDimens();
        statusBarStateController.addCallback(new StatusBarStateController.StateListener() { // from class: com.android.systemui.keyguard.animator.KeyguardTouchAnimator.1
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozeAmountChanged(float f, float f2) {
                boolean z;
                KeyguardTouchAnimator.this.dozeAmount = f;
                if (f == 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    Log.d("KeyguardTouchAnimator", "dozeAmount cleared");
                }
            }
        });
        this.doubleTapSlop = ViewConfiguration.get(context).getScaledDoubleTapSlop();
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.android.systemui.keyguard.animator.KeyguardTouchAnimator.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                Log.d("KeyguardTouchAnimator", "onDoubleTap");
                KeyguardTouchAnimator.this.doubleTapDownEvent = motionEvent;
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
            /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean onDoubleTapEvent(android.view.MotionEvent r10) {
                /*
                    r9 = this;
                    int r0 = r10.getAction()
                    r1 = 0
                    r2 = 1
                    if (r0 != r2) goto Lb0
                    com.android.systemui.keyguard.animator.KeyguardTouchAnimator r0 = com.android.systemui.keyguard.animator.KeyguardTouchAnimator.this
                    android.view.MotionEvent r3 = r0.doubleTapDownEvent
                    java.lang.String r4 = "KeyguardTouchAnimator"
                    if (r3 == 0) goto L70
                    long r5 = r10.getEventTime()
                    long r7 = r3.getEventTime()
                    long r5 = r5 - r7
                    r7 = 300(0x12c, double:1.48E-321)
                    int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                    if (r7 <= 0) goto L31
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    java.lang.String r3 = "isConsideredDoubleTap: time out deltaTime="
                    r0.<init>(r3)
                    r0.append(r5)
                    java.lang.String r0 = r0.toString()
                    android.util.Log.d(r4, r0)
                    goto L70
                L31:
                    float r5 = r3.getX()
                    int r5 = (int) r5
                    float r6 = r10.getX()
                    int r6 = (int) r6
                    int r5 = r5 - r6
                    float r6 = r3.getY()
                    int r6 = (int) r6
                    float r7 = r10.getY()
                    int r7 = (int) r7
                    int r6 = r6 - r7
                    int r3 = r3.getFlags()
                    r3 = r3 & 8
                    if (r3 == 0) goto L51
                    r3 = r2
                    goto L52
                L51:
                    r3 = r1
                L52:
                    if (r3 == 0) goto L56
                    r0 = r1
                    goto L59
                L56:
                    int r0 = r0.doubleTapSlop
                    int r0 = r0 * r0
                L59:
                    int r3 = r5 * r5
                    int r7 = r6 * r6
                    int r7 = r7 + r3
                    if (r7 < r0) goto L6e
                    java.lang.String r0 = "isConsideredDoubleTap: over slop="
                    java.lang.String r3 = ", deltaX="
                    java.lang.String r8 = ", deltaY="
                    java.lang.StringBuilder r0 = androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0.m(r0, r7, r3, r5, r8)
                    androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0.m(r0, r6, r4)
                    goto L70
                L6e:
                    r0 = r2
                    goto L71
                L70:
                    r0 = r1
                L71:
                    if (r0 == 0) goto L8f
                    com.android.systemui.keyguard.animator.KeyguardTouchAnimator r0 = com.android.systemui.keyguard.animator.KeyguardTouchAnimator.this
                    com.android.systemui.statusbar.policy.KeyguardStateController r3 = r0.keyguardStateController
                    com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r3 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r3
                    boolean r3 = r3.mKeyguardGoingAway
                    if (r3 != 0) goto L8f
                    com.android.systemui.keyguard.animator.KeyguardTouchSecurityInjector r0 = r0.securityInjector
                    boolean r10 = r0.isFingerprintArea(r10)
                    if (r10 == 0) goto L8d
                    com.android.keyguard.KeyguardUpdateMonitor r10 = r2
                    boolean r10 = r10.isFingerprintDetectionRunning()
                    if (r10 != 0) goto L8f
                L8d:
                    r10 = r2
                    goto L90
                L8f:
                    r10 = r1
                L90:
                    java.lang.String r0 = "onDoubleTapEvent executeDoubleTap="
                    com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r0, r10, r4)
                    if (r10 == 0) goto Lb0
                    android.os.PowerManager r10 = r3
                    long r3 = android.os.SystemClock.uptimeMillis()
                    r0 = 23
                    r10.goToSleep(r3, r0, r1)
                    com.android.systemui.keyguard.animator.KeyguardTouchAnimator r9 = com.android.systemui.keyguard.animator.KeyguardTouchAnimator.this
                    r9.getClass()
                    java.lang.String r9 = "101"
                    java.lang.String r10 = "1012"
                    com.android.systemui.util.SystemUIAnalytics.sendEventLog(r9, r10)
                    r1 = r2
                Lb0:
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.animator.KeyguardTouchAnimator.AnonymousClass2.onDoubleTapEvent(android.view.MotionEvent):boolean");
            }
        });
    }

    public static void showViewState(View view) {
        Log.d("KeyguardTouchAnimator", "v=" + view + " alpha=" + view.getAlpha() + " scale=" + view.getScaleX() + "," + view.getScaleY());
    }

    public final boolean canLongPressArea(MotionEvent motionEvent) {
        if (!this.securityInjector.isFingerprintArea(motionEvent) && this.touchDownPos.y < ((View) this.parentView$delegate.getValue()).getHeight() - this.longPressAllowHeight) {
            return true;
        }
        return false;
    }

    public final boolean hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(int i) {
        Object iconContainer;
        List list;
        SparseArray sparseArray = this.views;
        if (sparseArray.indexOfKey(i) >= 0) {
            return true;
        }
        Object obj = null;
        switch (i) {
            case 0:
                Object obj2 = this.viewInjector;
                if (obj2 != null) {
                    obj = obj2;
                }
                obj = ((NotificationPanelViewController) obj).mKeyguardStatusBar;
                break;
            case 1:
                KeyguardTouchViewInjector keyguardTouchViewInjector = this.viewInjector;
                if (keyguardTouchViewInjector == null) {
                    keyguardTouchViewInjector = null;
                }
                FaceWidgetContainerWrapper faceWidgetContainerWrapper = ((NotificationPanelViewController) keyguardTouchViewInjector).mKeyguardStatusViewController.mKeyguardStatusBase;
                if (faceWidgetContainerWrapper != null && (obj = faceWidgetContainerWrapper.mClockContainer) == null) {
                    obj = faceWidgetContainerWrapper.mFaceWidgetContainer;
                    break;
                }
                break;
            case 2:
                Object obj3 = this.viewInjector;
                if (obj3 != null) {
                    obj = obj3;
                }
                obj = ((NotificationPanelViewController) obj).mNotificationStackScrollLayoutController.mView;
                break;
            case 3:
                KeyguardTouchViewInjector keyguardTouchViewInjector2 = this.viewInjector;
                if (keyguardTouchViewInjector2 == null) {
                    keyguardTouchViewInjector2 = null;
                }
                PluginNotificationController pluginNotificationController = ((NotificationPanelViewController) keyguardTouchViewInjector2).mLockscreenNotificationIconsOnlyController.mNotificationControllerWrapper.mNotificationController;
                if (pluginNotificationController != null) {
                    iconContainer = pluginNotificationController.getIconContainer();
                    obj = iconContainer;
                    break;
                }
                break;
            case 4:
                Object obj4 = this.viewInjector;
                if (obj4 != null) {
                    obj = obj4;
                }
                obj = ((NotificationPanelViewController) obj).mKeyguardBottomArea.getLeftView();
                break;
            case 5:
                Object obj5 = this.viewInjector;
                if (obj5 != null) {
                    obj = obj5;
                }
                obj = ((NotificationPanelViewController) obj).mKeyguardBottomArea.getRightView();
                break;
            case 6:
                Object obj6 = this.viewInjector;
                if (obj6 != null) {
                    obj = obj6;
                }
                obj = (ViewGroup) ((NotificationPanelViewController) obj).mKeyguardBottomArea.indicationArea$delegate.getValue();
                break;
            case 7:
                Object obj7 = this.viewInjector;
                if (obj7 != null) {
                    obj = obj7;
                }
                obj = ((NotificationPanelViewController) obj).mStatusBarKeyguardViewManager.getLockIconContainer();
                break;
            case 8:
                KeyguardTouchViewInjector keyguardTouchViewInjector3 = this.viewInjector;
                if (keyguardTouchViewInjector3 == null) {
                    keyguardTouchViewInjector3 = null;
                }
                FaceWidgetContainerWrapper faceWidgetContainerWrapper2 = ((NotificationPanelViewController) keyguardTouchViewInjector3).mKeyguardStatusViewController.mKeyguardStatusBase;
                if (faceWidgetContainerWrapper2 == null) {
                    list = null;
                } else {
                    list = faceWidgetContainerWrapper2.mContentsContainerList;
                }
                if (list != null && !list.isEmpty()) {
                    iconContainer = (View) list.get(1);
                    obj = iconContainer;
                    break;
                }
                break;
            case 9:
                KeyguardTouchViewInjector keyguardTouchViewInjector4 = this.viewInjector;
                if (keyguardTouchViewInjector4 == null) {
                    keyguardTouchViewInjector4 = null;
                }
                KeyguardUserSwitcherController keyguardUserSwitcherController = ((NotificationPanelViewController) keyguardTouchViewInjector4).mKeyguardUserSwitcherController;
                if (keyguardUserSwitcherController != null) {
                    iconContainer = keyguardUserSwitcherController.mListView;
                    obj = iconContainer;
                    break;
                }
                break;
            case 10:
                Object obj8 = this.viewInjector;
                if (obj8 != null) {
                    obj = obj8;
                }
                obj = ((NotificationPanelViewController) obj).mPluginLockStarContainer;
                break;
            case 11:
                Object obj9 = this.viewInjector;
                if (obj9 != null) {
                    obj = obj9;
                }
                obj = ((NotificationPanelViewController) obj).mView.findViewById(R.id.keyguard_edit_mode_blur_effect);
                break;
        }
        if (obj != null) {
            sparseArray.put(i, obj);
            return true;
        }
        return false;
    }

    public final boolean isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        if (!this.tapAffordanceViewController.isTapAnimationRunning && !this.dragViewController.restoreAnimatorSet.isRunning() && !this.fullScreenViewController.fullScreenAnimatorSet.isRunning()) {
            return false;
        }
        return true;
    }

    public final boolean isViRunning() {
        if ((!this.isTouching || this.hasDozeAmount) && !isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core() && !this.isUnlockExecuted) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.Gefingerpoken
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.intercepting;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.systemui.Gefingerpoken
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        byte b;
        byte b2;
        SystemUIWallpaperBase systemUIWallpaperBase;
        byte b3;
        boolean z = false;
        if (!this.intercepting) {
            return false;
        }
        KeyguardTouchSecurityInjector keyguardTouchSecurityInjector = this.securityInjector;
        keyguardTouchSecurityInjector.getClass();
        if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardTouchSecurityInjector.mKeyguardUpdateMonitor.isIccBlockedPermanently()) {
            b = true;
        } else {
            b = false;
        }
        if (b != false) {
            return true;
        }
        if (this.settingsHelper.mItemLists.get("double_tap_to_sleep").getIntValue() == 1) {
            b2 = true;
        } else {
            b2 = false;
        }
        if (b2 != false) {
            if ((motionEvent.getSource() & 12290) == 4098 && motionEvent.getToolType(0) == 1) {
                b3 = true;
            } else {
                b3 = false;
            }
            if (b3 != false) {
                GestureDetector gestureDetector = this.gestureDetector;
                if (gestureDetector == null) {
                    gestureDetector = null;
                }
                gestureDetector.onTouchEvent(motionEvent);
            }
        }
        WallpaperUtils.isSubDisplay();
        if (WallpaperUtils.sWallpaperType[WallpaperUtils.isSubDisplay() ? 1 : 0] == 7) {
            z = true;
        }
        if (z && (systemUIWallpaperBase = ((KeyguardWallpaperController) this.keyguardWallpaper).mWallpaperView) != null) {
            systemUIWallpaperBase.handleTouchEvent(motionEvent);
        }
        Map map = this.actionHandlerTypes;
        Integer valueOf = Integer.valueOf(motionEvent.getActionMasked());
        LinkedHashMap linkedHashMap = (LinkedHashMap) map;
        Object obj = linkedHashMap.get(valueOf);
        if (obj == null) {
            ActionHandlerType.Companion companion = ActionHandlerType.Companion;
            int actionMasked = motionEvent.getActionMasked();
            companion.getClass();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            if (actionMasked != 5) {
                                if (actionMasked != 6) {
                                    obj = new ActionDefaultHandler(this);
                                }
                            } else {
                                obj = new ActionPointerDownHandler(this);
                            }
                        }
                    } else {
                        obj = new ActionMoveHandler(this);
                    }
                }
                obj = new ActionUpOrCancelHandler(this);
            } else {
                obj = new ActionDownHandler(this);
            }
            linkedHashMap.put(valueOf, obj);
        }
        return ((ActionHandlerType) obj).handleMotionEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
    
        if (r2.isActive() == true) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void reset() {
        /*
            r5 = this;
            boolean r0 = r5.isUnlockExecuted
            java.lang.String r1 = "reset unlockExecuted="
            java.lang.String r2 = "KeyguardTouchAnimator"
            com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r1, r0, r2)
            com.android.systemui.keyguard.animator.TapAffordanceViewController r0 = r5.tapAffordanceViewController
            java.util.List r1 = r0.tapSpringAnimationList
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            java.util.Iterator r3 = r1.iterator()
        L14:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L24
            java.lang.Object r4 = r3.next()
            androidx.dynamicanimation.animation.SpringAnimation r4 = (androidx.dynamicanimation.animation.SpringAnimation) r4
            r4.cancel()
            goto L14
        L24:
            r1.clear()
            java.util.List r1 = r0.restoreSpringAnimationList
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            java.util.Iterator r3 = r1.iterator()
        L2f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3f
            java.lang.Object r4 = r3.next()
            androidx.dynamicanimation.animation.SpringAnimation r4 = (androidx.dynamicanimation.animation.SpringAnimation) r4
            r4.cancel()
            goto L2f
        L3f:
            r1.clear()
            android.view.View r1 = r0.getParentView()
            com.android.systemui.keyguard.animator.TapAffordanceViewController$restoreSpringAnimRunnable$1 r3 = r0.restoreSpringAnimRunnable
            r1.removeCallbacks(r3)
            r1 = 0
            r0.isTapAnimationRunning = r1
            com.android.systemui.keyguard.animator.FullScreenViewController r0 = r5.fullScreenViewController
            android.animation.AnimatorSet r3 = r0.fullScreenAnimatorSet
            r3.cancel()
            boolean r3 = r0.isFullscreenModeEnabled
            if (r3 == 0) goto L61
            java.lang.String r3 = "reset mFullScreenModeEnabled true"
            android.util.Log.d(r2, r3)
            r0.isFullscreenModeEnabled = r1
        L61:
            r0.isFullScreenModeShown = r1
            android.view.View r2 = r0.getParentView()
            com.android.systemui.keyguard.animator.FullScreenViewController$longPressCallback$1 r0 = r0.longPressCallback
            r2.removeCallbacks(r0)
            com.android.systemui.keyguard.animator.DragViewController r0 = r5.dragViewController
            android.animation.AnimatorSet r2 = r0.unlockViewHideAnimatorSet
            r2.cancel()
            android.animation.AnimatorSet r0 = r0.restoreAnimatorSet
            r0.cancel()
            com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController r0 = r5.editModeAnimatorController
            boolean r2 = r0.isKeyguardState()
            java.lang.String r3 = "reset "
            java.lang.String r4 = "KeyguardEditModeAnimatorController"
            com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r3, r2, r4)
            com.android.systemui.wallpaper.KeyguardWallpaper r2 = r0.keyguardWallpaper
            com.android.systemui.wallpaper.KeyguardWallpaperController r2 = (com.android.systemui.wallpaper.KeyguardWallpaperController) r2
            r3 = 4
            r2.setThumbnailVisibility(r3)
            kotlinx.coroutines.StandaloneCoroutine r2 = r0.longPressJob
            if (r2 == 0) goto L9a
            boolean r2 = r2.isActive()
            r3 = 1
            if (r2 != r3) goto L9a
            goto L9b
        L9a:
            r3 = r1
        L9b:
            if (r3 == 0) goto Laa
            java.lang.String r2 = "longPressJob?.cancel"
            android.util.Log.d(r4, r2)
            kotlinx.coroutines.StandaloneCoroutine r2 = r0.longPressJob
            if (r2 == 0) goto Laa
            r3 = 0
            r2.cancel(r3)
        Laa:
            android.animation.AnimatorSet r2 = r0.animatorSet
            boolean r2 = r2.isRunning()
            if (r2 == 0) goto Lb7
            android.animation.AnimatorSet r2 = r0.animatorSet
            r2.cancel()
        Lb7:
            boolean r2 = r0.isKeyguardState()
            if (r2 != 0) goto Lc6
            boolean r2 = r0.isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()
            if (r2 != 0) goto Lc6
            r0.resetViews()
        Lc6:
            boolean r0 = r5.isUnlockExecuted
            if (r0 == 0) goto Lcc
            r5.isUnlockExecuted = r1
        Lcc:
            r5.resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()
            r5.setTouch(r1)
            r5.hasDozeAmount = r1
            r0 = 0
            r5.distance = r0
            r5.updateDistanceCount = r1
            android.graphics.PointF r5 = r5.touchDownPos
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r5.x = r0
            r5.y = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.animator.KeyguardTouchAnimator.reset():void");
    }

    public final void resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("resetChildViewVI(): ", this.isUnlockExecuted, "KeyguardTouchAnimator");
        KeyguardTouchBase.Companion.getClass();
        boolean z = KeyguardTouchBase.DEBUG;
        if (z) {
            showViewState((View) this.parentView$delegate.getValue());
        }
        if (((KeyguardEditModeControllerImpl) this.keyguardEditModeController).getVIRunning()) {
            Log.d("KeyguardTouchAnimator", "resetChildViewVI vIRunning");
            return;
        }
        this.notiScale = 1.0f;
        SparseArray sparseArray = this.views;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View view = (View) sparseArray.valueAt(i);
            if (z) {
                showViewState(view);
            }
            view.setScaleY(1.0f);
            view.setScaleX(1.0f);
            view.setAlpha(1.0f);
        }
    }

    public final void restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        boolean z = this.isUnlockExecuted;
        if (!z && !this.tapAffordanceViewController.isTapAnimationRunning) {
            DragViewController dragViewController = this.dragViewController;
            dragViewController.getClass();
            AnimatorSet createAnimatorSet$default = DragViewController.createAnimatorSet$default(dragViewController, 1);
            ArrayList arrayList = new ArrayList();
            for (Object obj : dragViewController.dragViews) {
                if (dragViewController.hasView(((Number) obj).intValue())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(dragViewController.getView(((Number) it.next()).intValue()));
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            while (true) {
                boolean z2 = false;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((View) next).getVisibility() == 0) {
                    z2 = true;
                }
                if (z2) {
                    arrayList3.add(next);
                }
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                ViewAnimationController.setViewAnimation(createAnimatorSet$default, (View) it3.next(), 1.0f, 1.0f);
            }
            if (dragViewController.hasView(0)) {
                ViewAnimationController.setViewAnimation(createAnimatorSet$default, dragViewController.getView(0), -1.0f, 1.0f);
            }
            createAnimatorSet$default.start();
            return;
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("restoreChildViewVI(): ", z, "KeyguardTouchAnimator");
    }

    @Override // com.android.systemui.keyguard.animator.KeyguardTouchBase
    public final void updateAffordace(DisplayInfo displayInfo) {
        PivotViewController pivotViewController = this.pivotViewController;
        pivotViewController.getClass();
        pivotViewController.affordancePivotX = displayInfo.logicalWidth / 2;
        pivotViewController.affordancePivotY = displayInfo.logicalHeight / 2;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
    }
}
