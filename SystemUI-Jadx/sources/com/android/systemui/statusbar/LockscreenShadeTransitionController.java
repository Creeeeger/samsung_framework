package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.MathUtils;
import android.view.View;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.DisplayCutoutBaseView$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.biometrics.UdfpsKeyguardViewControllerLegacy;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.mdm.MdmOverlayContainer;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.shade.SecPanelBlockExpandingHelper;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.shade.data.repository.ShadeRepository;
import com.android.systemui.shade.data.repository.ShadeRepositoryImpl;
import com.android.systemui.statusbar.LockscreenShadeKeyguardTransitionController;
import com.android.systemui.statusbar.LockscreenShadeQsTransitionController;
import com.android.systemui.statusbar.SingleShadeLockScreenOverScroller;
import com.android.systemui.statusbar.SplitShadeLockScreenOverScroller;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.LSShadeTransitionLogger;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.LargeScreenUtils;
import com.android.wm.shell.animation.Interpolators;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenShadeTransitionController implements Dumpable {
    public final ActivityStarter activityStarter;
    public final AmbientState ambientState;
    public Function1 animationHandlerOnKeyguardDismiss;
    public CentralSurfaces centralSurfaces;
    public final Context context;
    public final NotificationShadeDepthController depthController;
    public int depthControllerTransitionDistance;
    public float dragDownAmount;
    public ValueAnimator dragDownAnimator;
    public NotificationEntry draggedDownEntry;
    public final FalsingCollector falsingCollector;
    public boolean forceApplyAmount;
    public float fractionToShade;
    public int fullTransitionDistance;
    public int fullTransitionDistanceByTap;
    public boolean isWakingToShadeLocked;
    public final KeyguardBypassController keyguardBypassController;
    public final LockscreenShadeKeyguardTransitionController.Factory keyguardTransitionControllerFactory;
    public final NotificationLockscreenUserManager lockScreenUserManager;
    public final LSShadeTransitionLogger logger;
    public UdfpsKeyguardViewControllerLegacy mUdfpsKeyguardViewControllerLegacy;
    public final MdmOverlayContainer mdmOverlayContainer;
    public boolean nextHideKeyguardNeedsNoAnimation;
    public int notificationShelfTransitionDistance;
    public NotificationStackScrollLayoutController nsslController;
    public float pulseHeight;
    public ValueAnimator pulseHeightAnimator;
    public QS qS;
    public final LockscreenShadeQsTransitionController qsTransitionController;
    public final LockscreenShadeScrimTransitionController scrimTransitionController;
    public final ShadeRepository shadeRepository;
    public ShadeViewController shadeViewController;
    public final SingleShadeLockScreenOverScroller.Factory singleShadeOverScrollerFactory;
    public final SplitShadeLockScreenOverScroller.Factory splitShadeOverScrollerFactory;
    public final SysuiStatusBarStateController statusBarStateController;
    public int statusBarTransitionDistance;
    public final DragDownHelper touchHelper;
    public int udfpsTransitionDistance;
    public boolean useSplitShade;
    public final Lazy splitShadeOverScroller$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$splitShadeOverScroller$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            final LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
            SplitShadeLockScreenOverScroller.Factory factory = lockscreenShadeTransitionController.splitShadeOverScrollerFactory;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$splitShadeOverScroller$2.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    QS qs = LockscreenShadeTransitionController.this.qS;
                    if (qs == null) {
                        return null;
                    }
                    return qs;
                }
            };
            final LockscreenShadeTransitionController lockscreenShadeTransitionController2 = LockscreenShadeTransitionController.this;
            return factory.create(function0, new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$splitShadeOverScroller$2.2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    NotificationStackScrollLayoutController notificationStackScrollLayoutController = LockscreenShadeTransitionController.this.nsslController;
                    if (notificationStackScrollLayoutController == null) {
                        return null;
                    }
                    return notificationStackScrollLayoutController;
                }
            });
        }
    });
    public final Lazy phoneShadeOverScroller$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$phoneShadeOverScroller$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
            SingleShadeLockScreenOverScroller.Factory factory = lockscreenShadeTransitionController.singleShadeOverScrollerFactory;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = lockscreenShadeTransitionController.nsslController;
            if (notificationStackScrollLayoutController == null) {
                notificationStackScrollLayoutController = null;
            }
            return factory.create(notificationStackScrollLayoutController);
        }
    });
    public final Lazy keyguardTransitionController$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$keyguardTransitionController$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
            LockscreenShadeKeyguardTransitionController.Factory factory = lockscreenShadeTransitionController.keyguardTransitionControllerFactory;
            ShadeViewController shadeViewController = lockscreenShadeTransitionController.shadeViewController;
            if (shadeViewController == null) {
                shadeViewController = null;
            }
            return factory.create(shadeViewController);
        }
    });
    public final List callbacks = new ArrayList();

    public LockscreenShadeTransitionController(MdmOverlayContainer mdmOverlayContainer, SysuiStatusBarStateController sysuiStatusBarStateController, LSShadeTransitionLogger lSShadeTransitionLogger, KeyguardBypassController keyguardBypassController, NotificationLockscreenUserManager notificationLockscreenUserManager, FalsingCollector falsingCollector, AmbientState ambientState, LockscreenShadeScrimTransitionController lockscreenShadeScrimTransitionController, LockscreenShadeKeyguardTransitionController.Factory factory, NotificationShadeDepthController notificationShadeDepthController, Context context, SplitShadeLockScreenOverScroller.Factory factory2, SingleShadeLockScreenOverScroller.Factory factory3, ActivityStarter activityStarter, WakefulnessLifecycle wakefulnessLifecycle, ConfigurationController configurationController, FalsingManager falsingManager, DumpManager dumpManager, LockscreenShadeQsTransitionController.Factory factory4, ShadeRepository shadeRepository) {
        this.mdmOverlayContainer = mdmOverlayContainer;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.logger = lSShadeTransitionLogger;
        this.keyguardBypassController = keyguardBypassController;
        this.lockScreenUserManager = notificationLockscreenUserManager;
        this.falsingCollector = falsingCollector;
        this.ambientState = ambientState;
        this.scrimTransitionController = lockscreenShadeScrimTransitionController;
        this.keyguardTransitionControllerFactory = factory;
        this.depthController = notificationShadeDepthController;
        this.context = context;
        this.splitShadeOverScrollerFactory = factory2;
        this.singleShadeOverScrollerFactory = factory3;
        this.activityStarter = activityStarter;
        this.shadeRepository = shadeRepository;
        this.touchHelper = new DragDownHelper(falsingManager, falsingCollector, this, context);
        this.qsTransitionController = factory4.create(new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$qsTransitionController$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                QS qs = LockscreenShadeTransitionController.this.qS;
                if (qs == null) {
                    return null;
                }
                return qs;
            }
        });
        updateResources();
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
                lockscreenShadeTransitionController.updateResources();
                lockscreenShadeTransitionController.touchHelper.updateResources(lockscreenShadeTransitionController.context);
            }
        });
        dumpManager.registerDumpable(this);
        ((StatusBarStateControllerImpl) sysuiStatusBarStateController).addCallback(new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController.2
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onExpandedChanged(boolean z) {
                boolean z2;
                boolean z3;
                boolean z4;
                if (!z) {
                    LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
                    boolean z5 = true;
                    if (lockscreenShadeTransitionController.dragDownAmount == 0.0f) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        ValueAnimator valueAnimator = lockscreenShadeTransitionController.dragDownAnimator;
                        if (valueAnimator != null && valueAnimator.isRunning()) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (!z4) {
                            lockscreenShadeTransitionController.logger.logDragDownAmountResetWhenFullyCollapsed();
                            lockscreenShadeTransitionController.setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(0.0f);
                        }
                    }
                    if (lockscreenShadeTransitionController.pulseHeight == 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3) {
                        ValueAnimator valueAnimator2 = lockscreenShadeTransitionController.pulseHeightAnimator;
                        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
                            z5 = false;
                        }
                        if (!z5) {
                            lockscreenShadeTransitionController.logger.logPulseHeightNotResetWhenFullyCollapsed();
                            lockscreenShadeTransitionController.setPulseHeight(0.0f, false);
                        }
                    }
                }
            }
        });
        wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController.3
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onPostFinishedWakingUp() {
                LockscreenShadeTransitionController.this.isWakingToShadeLocked = false;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r0.mDynamicPrivacyController.isInLockedDownShade() != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        /*
            r3 = this;
            com.android.systemui.statusbar.SysuiStatusBarStateController r0 = r3.statusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r0 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r0
            int r0 = r0.mState
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L17
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r0 = r3.nsslController
            if (r0 != 0) goto Lf
            r0 = r1
        Lf:
            com.android.systemui.statusbar.notification.DynamicPrivacyController r0 = r0.mDynamicPrivacyController
            boolean r0 = r0.isInLockedDownShade()
            if (r0 == 0) goto L29
        L17:
            com.android.systemui.plugins.qs.QS r0 = r3.qS
            if (r0 == 0) goto L24
            if (r0 == 0) goto L1e
            r1 = r0
        L1e:
            boolean r0 = r1.isFullyCollapsed()
            if (r0 != 0) goto L2a
        L24:
            boolean r3 = r3.useSplitShade
            if (r3 == 0) goto L29
            goto L2a
        L29:
            r2 = 0
        L2a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.LockscreenShadeTransitionController.canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core():boolean");
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        indentingPrintWriter.println("LSShadeTransitionController:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("pulseHeight: " + this.pulseHeight);
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("useSplitShade: ", this.useSplitShade, indentingPrintWriter);
        indentingPrintWriter.println("dragDownAmount: " + this.dragDownAmount);
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("isDragDownAnywhereEnabled: ", isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core(), indentingPrintWriter);
        boolean z2 = false;
        if (((StatusBarStateControllerImpl) this.statusBarStateController).mState == 1) {
            z = true;
        } else {
            z = false;
        }
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("isFalsingCheckNeeded: ", z, indentingPrintWriter);
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("isWakingToShadeLocked: ", this.isWakingToShadeLocked, indentingPrintWriter);
        if (this.animationHandlerOnKeyguardDismiss != null) {
            z2 = true;
        }
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("hasPendingHandlerOnKeyguardDismiss: ", z2, indentingPrintWriter);
    }

    public final void finishPulseAnimation(boolean z) {
        this.logger.logPulseExpansionFinished(z);
        if (z) {
            setPulseHeight(0.0f, true);
            return;
        }
        Iterator it = ((ArrayList) this.callbacks).iterator();
        while (it.hasNext()) {
            QuickSettingsController quickSettingsController = QuickSettingsController.this;
            quickSettingsController.mAnimateNextNotificationBounds = true;
            quickSettingsController.mNotificationBoundsAnimationDuration = 448L;
            quickSettingsController.mNotificationBoundsAnimationDelay = 0L;
            quickSettingsController.mIsPulseExpansionResettingAnimator = true;
        }
        setPulseHeight(0.0f, false);
    }

    public final float getFractionToShade() {
        return this.fractionToShade;
    }

    public final void goToLockedShade(View view, boolean z) {
        Function1 function1;
        boolean z2 = true;
        if (((StatusBarStateControllerImpl) this.statusBarStateController).mState != 1) {
            z2 = false;
        }
        this.logger.logTryGoToLockedShade(z2);
        if (z2) {
            if (!z && !this.useSplitShade) {
                function1 = new Function1() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShade$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        long longValue = ((Number) obj).longValue();
                        ShadeViewController shadeViewController = LockscreenShadeTransitionController.this.shadeViewController;
                        if (shadeViewController == null) {
                            shadeViewController = null;
                        }
                        ((NotificationPanelViewController) shadeViewController).transitionToExpandedShade(longValue);
                        return Unit.INSTANCE;
                    }
                };
            } else {
                function1 = null;
            }
            goToLockedShadeInternal(view, function1, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$1] */
    /* JADX WARN: Type inference failed for: r12v1, types: [com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1] */
    /* JADX WARN: Type inference failed for: r13v5, types: [com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager] */
    public final void goToLockedShadeInternal(View view, final Function1 function1, final LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1) {
        boolean z;
        NotificationEntry notificationEntry;
        boolean z2;
        LockscreenShadeTransitionController$goToLockedShadeInternal$1 lockscreenShadeTransitionController$goToLockedShadeInternal$1;
        if (((SecPanelBlockExpandingHelper) Dependency.get(SecPanelBlockExpandingHelper.class)).isDisabledExpandingOnKeyguard()) {
            setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(0.0f);
            return;
        }
        CentralSurfaces centralSurfaces = this.centralSurfaces;
        CentralSurfaces centralSurfaces2 = null;
        if (centralSurfaces == null) {
            centralSurfaces = null;
        }
        boolean z3 = false;
        if ((((CentralSurfacesImpl) centralSurfaces).mDisabled2 & 4) != 0) {
            z = true;
        } else {
            z = false;
        }
        LSShadeTransitionLogger lSShadeTransitionLogger = this.logger;
        if (z) {
            if (lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 != null) {
                lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1.run();
            }
            lSShadeTransitionLogger.logShadeDisabledOnGoToLockedShade();
            return;
        }
        if (!((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).mDeviceProvisioned) {
            if (lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 != null) {
                lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1.run();
            }
            Log.d("LockscreenShadeTransitionController", "not provisioned");
            return;
        }
        NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) this.lockScreenUserManager;
        int i = notificationLockscreenUserManagerImpl.mCurrentUserId;
        if (view instanceof ExpandableNotificationRow) {
            notificationEntry = ((ExpandableNotificationRow) view).mEntry;
            ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
            if (expandableNotificationRow != null) {
                expandableNotificationRow.setUserExpanded(true, true);
            }
            ExpandableNotificationRow expandableNotificationRow2 = notificationEntry.row;
            if (expandableNotificationRow2 != null) {
                expandableNotificationRow2.mGroupExpansionChanging = true;
            }
            i = notificationEntry.mSbn.getUserId();
        } else {
            notificationEntry = null;
        }
        if (notificationLockscreenUserManagerImpl.mShowLockscreenNotifications) {
            this.falsingCollector.getClass();
            z2 = false;
        } else {
            z2 = true;
        }
        if (this.keyguardBypassController.getBypassEnabled()) {
            z2 = false;
        }
        CentralSurfaces centralSurfaces3 = this.centralSurfaces;
        if (centralSurfaces3 == null) {
            centralSurfaces3 = null;
        }
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces3;
        StatusBarKeyguardViewManager statusBarKeyguardViewManager = centralSurfacesImpl.mStatusBarKeyguardViewManager;
        if (!statusBarKeyguardViewManager.isBouncerShowing() && ((StatusBarStateControllerImpl) centralSurfacesImpl.mStatusBarStateController).mState != 0) {
            statusBarKeyguardViewManager.resetKeyguardDismissAction();
        }
        boolean isLockscreenPublicMode = notificationLockscreenUserManagerImpl.isLockscreenPublicMode(i);
        SysuiStatusBarStateController sysuiStatusBarStateController = this.statusBarStateController;
        if (isLockscreenPublicMode && z2) {
            ((StatusBarStateControllerImpl) sysuiStatusBarStateController).mLeaveOpenOnKeyguardHide = true;
            if (function1 != null) {
                lockscreenShadeTransitionController$goToLockedShadeInternal$1 = new ActivityStarter.OnDismissAction() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$1
                    @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
                    public final boolean onDismiss() {
                        LockscreenShadeTransitionController.this.animationHandlerOnKeyguardDismiss = function1;
                        return false;
                    }
                };
            } else {
                lockscreenShadeTransitionController$goToLockedShadeInternal$1 = null;
            }
            ?? r12 = new Runnable() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1
                @Override // java.lang.Runnable
                public final void run() {
                    LockscreenShadeTransitionController lockscreenShadeTransitionController = LockscreenShadeTransitionController.this;
                    NotificationEntry notificationEntry2 = lockscreenShadeTransitionController.draggedDownEntry;
                    if (notificationEntry2 != null) {
                        ExpandableNotificationRow expandableNotificationRow3 = notificationEntry2.row;
                        if (expandableNotificationRow3 != null) {
                            expandableNotificationRow3.setUserLocked(false);
                        }
                        ExpandableNotificationRow expandableNotificationRow4 = notificationEntry2.row;
                        if (expandableNotificationRow4 != null) {
                            expandableNotificationRow4.notifyHeightChanged(false);
                        }
                        lockscreenShadeTransitionController.draggedDownEntry = null;
                    }
                    Runnable runnable = lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            };
            lSShadeTransitionLogger.logShowBouncerOnGoToLockedShade();
            CentralSurfaces centralSurfaces4 = this.centralSurfaces;
            if (centralSurfaces4 != null) {
                centralSurfaces2 = centralSurfaces4;
            }
            CentralSurfacesImpl centralSurfacesImpl2 = (CentralSurfacesImpl) centralSurfaces2;
            int i2 = centralSurfacesImpl2.mState;
            if ((i2 == 1 || i2 == 2) && !centralSurfacesImpl2.mKeyguardViewMediator.isHiding()) {
                centralSurfacesImpl2.mStatusBarKeyguardViewManager.dismissWithAction(lockscreenShadeTransitionController$goToLockedShadeInternal$1, r12);
            } else {
                r12.run();
            }
            this.draggedDownEntry = notificationEntry;
            return;
        }
        if (function1 != null) {
            z3 = true;
        }
        lSShadeTransitionLogger.logGoingToLockedShade(z3);
        if (((StatusBarStateControllerImpl) sysuiStatusBarStateController).mIsDozing) {
            this.isWakingToShadeLocked = true;
        }
        sysuiStatusBarStateController.setState$1(2);
        if (function1 != null) {
            function1.invoke(0L);
        } else {
            performDefaultGoToFullShadeAnimation(0L);
        }
        this.mdmOverlayContainer.updateMdmPolicy();
    }

    public final boolean isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        if (((StatusBarStateControllerImpl) this.statusBarStateController).mState == 1 && !this.keyguardBypassController.getBypassEnabled()) {
            QS qs = this.qS;
            if (qs != null) {
                if (qs == null) {
                    qs = null;
                }
                if (qs.isFullyCollapsed()) {
                    return true;
                }
            }
            if (this.useSplitShade) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ExpandableView expandableView) {
        if (isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()) {
            return true;
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.nsslController;
        if (notificationStackScrollLayoutController == null) {
            notificationStackScrollLayoutController = null;
        }
        if (notificationStackScrollLayoutController.mDynamicPrivacyController.isInLockedDownShade()) {
            if (expandableView == null) {
                return true;
            }
            if (expandableView instanceof ExpandableNotificationRow) {
                return ((ExpandableNotificationRow) expandableView).mEntry.mSensitive;
            }
            return false;
        }
        return false;
    }

    public final void performDefaultGoToFullShadeAnimation(long j) {
        this.logger.logDefaultGoToFullShadeAnimation(j);
        ShadeViewController shadeViewController = this.shadeViewController;
        if (shadeViewController == null) {
            shadeViewController = null;
        }
        ((NotificationPanelViewController) shadeViewController).transitionToExpandedShade(j);
        this.forceApplyAmount = true;
        setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(1.0f);
        setDragDownAmountAnimated(this.fullTransitionDistanceByTap, j, new Function0() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$animateAppear$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                LockscreenShadeTransitionController.this.logger.logDragDownAmountReset();
                LockscreenShadeTransitionController.this.setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(0.0f);
                LockscreenShadeTransitionController.this.forceApplyAmount = false;
                return Unit.INSTANCE;
            }
        });
    }

    public final void setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(float f) {
        boolean z;
        LockScreenShadeOverScroller lockScreenShadeOverScroller;
        boolean z2 = true;
        if (this.dragDownAmount == f) {
            z = true;
        } else {
            z = false;
        }
        if (!z || this.forceApplyAmount) {
            this.dragDownAmount = f;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.nsslController;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = null;
            if (notificationStackScrollLayoutController == null) {
                notificationStackScrollLayoutController = null;
            }
            if (notificationStackScrollLayoutController.mDynamicPrivacyController.isInLockedDownShade()) {
                if (this.dragDownAmount != 0.0f) {
                    z2 = false;
                }
                if (!z2 && !this.forceApplyAmount) {
                    return;
                }
            }
            float saturate = MathUtils.saturate(this.dragDownAmount / this.notificationShelfTransitionDistance);
            this.fractionToShade = saturate;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController3 = this.nsslController;
            if (notificationStackScrollLayoutController3 != null) {
                notificationStackScrollLayoutController2 = notificationStackScrollLayoutController3;
            }
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController2.mView;
            notificationStackScrollLayout.mAmbientState.mFractionToShade = saturate;
            notificationStackScrollLayout.updateContentHeight();
            notificationStackScrollLayout.requestChildrenUpdate();
            this.qsTransitionController.setDragDownAmount(f);
            Iterator it = ((ArrayList) this.callbacks).iterator();
            while (it.hasNext()) {
                ((QuickSettingsController.LockscreenShadeTransitionCallback) it.next()).getClass();
            }
            this.scrimTransitionController.setDragDownAmount(f);
            transitionToShadeAmountCommon(this.dragDownAmount);
            ((LockscreenShadeKeyguardTransitionController) this.keyguardTransitionController$delegate.getValue()).setDragDownAmount(f);
            if (this.useSplitShade) {
                lockScreenShadeOverScroller = (SplitShadeLockScreenOverScroller) this.splitShadeOverScroller$delegate.getValue();
            } else {
                lockScreenShadeOverScroller = (SingleShadeLockScreenOverScroller) this.phoneShadeOverScroller$delegate.getValue();
            }
            lockScreenShadeOverScroller.setExpansionDragDownAmount(this.dragDownAmount);
        }
    }

    public final void setDragDownAmountAnimated(float f, long j, final Function0 function0) {
        this.logger.logDragDownAnimation(f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.dragDownAmount, f);
        ofFloat.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        ofFloat.setDuration(375L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$setDragDownAmountAnimated$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                LockscreenShadeTransitionController.this.setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        if (j > 0) {
            ofFloat.setStartDelay(j);
        }
        if (function0 != null) {
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$setDragDownAmountAnimated$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    Function0.this.invoke();
                }
            });
        }
        ofFloat.start();
        this.dragDownAnimator = ofFloat;
    }

    public final void setPulseHeight(float f, boolean z) {
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.pulseHeight, f);
            ofFloat.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
            ofFloat.setDuration(375L);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$setPulseHeight$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LockscreenShadeTransitionController.this.setPulseHeight(((Float) valueAnimator.getAnimatedValue()).floatValue(), false);
                }
            });
            ofFloat.start();
            this.pulseHeightAnimator = ofFloat;
            return;
        }
        this.pulseHeight = f;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.nsslController;
        ShadeViewController shadeViewController = null;
        if (notificationStackScrollLayoutController == null) {
            notificationStackScrollLayoutController = null;
        }
        float pulseHeight = notificationStackScrollLayoutController.mView.setPulseHeight(f);
        ShadeViewController shadeViewController2 = this.shadeViewController;
        if (shadeViewController2 != null) {
            shadeViewController = shadeViewController2;
        }
        NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) shadeViewController;
        float exp = (float) (1.0d - Math.exp((pulseHeight / notificationPanelViewController.mView.getHeight()) * (-4.0f)));
        if (0.0f > exp) {
            exp = 0.0f;
        }
        notificationPanelViewController.mOverStretchAmount = exp * notificationPanelViewController.mMaxOverscrollAmountForPulse;
        notificationPanelViewController.positionClockAndNotifications(true);
        if (!this.keyguardBypassController.getBypassEnabled()) {
            f = 0.0f;
        }
        transitionToShadeAmountCommon(f);
    }

    public final void transitionToShadeAmountCommon(float f) {
        int i = this.depthControllerTransitionDistance;
        boolean z = true;
        NotificationShadeDepthController notificationShadeDepthController = this.depthController;
        if (i == 0) {
            if (notificationShadeDepthController.transitionToFullShadeProgress != 0.0f) {
                z = false;
            }
            if (!z) {
                notificationShadeDepthController.transitionToFullShadeProgress = 0.0f;
                notificationShadeDepthController.scheduleUpdate();
            }
        } else {
            float saturate = MathUtils.saturate(f / i);
            if (notificationShadeDepthController.transitionToFullShadeProgress != saturate) {
                z = false;
            }
            if (!z) {
                notificationShadeDepthController.transitionToFullShadeProgress = saturate;
                notificationShadeDepthController.scheduleUpdate();
            }
        }
        float saturate2 = MathUtils.saturate(f / this.udfpsTransitionDistance);
        ((ShadeRepositoryImpl) this.shadeRepository)._udfpsTransitionToFullShadeProgress.setValue(Float.valueOf(saturate2));
        UdfpsKeyguardViewControllerLegacy udfpsKeyguardViewControllerLegacy = this.mUdfpsKeyguardViewControllerLegacy;
        if (udfpsKeyguardViewControllerLegacy != null) {
            udfpsKeyguardViewControllerLegacy.transitionToFullShadeProgress = saturate2;
            udfpsKeyguardViewControllerLegacy.updateAlpha();
        }
        float saturate3 = MathUtils.saturate(f / this.statusBarTransitionDistance);
        CentralSurfaces centralSurfaces = this.centralSurfaces;
        if (centralSurfaces == null) {
            centralSurfaces = null;
        }
        ((CentralSurfacesImpl) centralSurfaces).mTransitionToFullShadeProgress = saturate3;
    }

    public final void updateResources() {
        Context context = this.context;
        this.fullTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_full_transition_distance);
        this.fullTransitionDistanceByTap = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_transition_by_tap_distance);
        this.notificationShelfTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_notif_shelf_transition_distance);
        this.depthControllerTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_depth_controller_transition_distance);
        this.udfpsTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_udfps_keyguard_transition_distance);
        this.statusBarTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_status_bar_transition_distance);
        this.useSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(context.getResources());
    }

    public static /* synthetic */ void getDragDownAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }

    public static /* synthetic */ void getPulseHeightAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }
}
