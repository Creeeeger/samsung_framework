package com.android.systemui.qs.animator;

import android.content.res.Configuration;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.dagger.QSFragmentComponent;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQSFragmentAnimatorManager extends SecQSFragmentAnimatorBase {
    public final ArrayList mList;
    public final SecQSFragmentAnimatorLogger mLogger;
    public int mOrientation;
    public boolean mQsFullyExpanded;
    public final ShadeExpansionStateManager mShadeExpansionStateManager;
    public final QsTransitionAnimator mTransitionAnimator;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.animator.SecQSFragmentAnimatorManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }

        public final void setDetailClosing(boolean z) {
            SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = SecQSFragmentAnimatorManager.this;
            secQSFragmentAnimatorManager.mIsDetailClosing = z;
            secQSFragmentAnimatorManager.executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 5));
        }

        public final void setDetailOpening(boolean z) {
            SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = SecQSFragmentAnimatorManager.this;
            secQSFragmentAnimatorManager.mIsDetailOpening = z;
            secQSFragmentAnimatorManager.executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 4));
        }

        public final void setDetailShowing(boolean z) {
            SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = SecQSFragmentAnimatorManager.this;
            secQSFragmentAnimatorManager.mIsDetailShowing = z;
            secQSFragmentAnimatorManager.executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 6));
        }
    }

    public SecQSFragmentAnimatorManager(QSFragmentComponent qSFragmentComponent, ShadeExpansionStateManager shadeExpansionStateManager) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mOrientation = 1;
        this.mLogger = new SecQSFragmentAnimatorLogger();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(qSFragmentComponent.getQsExpandAnimator());
        arrayList.add(qSFragmentComponent.getQsOpenAnimator());
        QsTransitionAnimator qsTransitionAnimator = qSFragmentComponent.getQsTransitionAnimator();
        this.mTransitionAnimator = qsTransitionAnimator;
        qsTransitionAnimator.mDetailStateCallback = anonymousClass1;
        arrayList.add(qsTransitionAnimator);
        PanelScreenShotLogger.INSTANCE.addLogProvider("QSFragmentAnimator", this);
        this.mShadeExpansionStateManager = shadeExpansionStateManager;
        shadeExpansionStateManager.addExpansionListener(this);
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void destroyQSViews() {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0(2));
        synchronized (PanelScreenShotLogger.INSTANCE) {
            PanelScreenShotLogger.providers.remove("QSFragmentAnimator");
        }
        this.mShadeExpansionStateManager.expansionListeners.remove(this);
    }

    public final void executeConsumer(Consumer consumer) {
        this.mList.stream().filter(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6(2)).forEach(consumer);
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase, com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("SecQSFragmentAnimatorManager ============================================= ");
        arrayList.add("  mQsExpanded = " + this.mQsExpanded + "  mQsFullyExpanded = " + this.mQsFullyExpanded + "  mPanelExpanded = " + this.mPanelExpanded);
        StringBuilder sb = new StringBuilder("  mIsExpanding = false  mState = ");
        sb.append(this.mState);
        sb.append("  mQsExpandImmediate = false mQsCollapsingWhilePanelClosing = false");
        arrayList.add(sb.toString());
        arrayList.add("============================================================== ");
        this.mList.stream().filter(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6(0)).map(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda7()).filter(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6(1)).forEach(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(arrayList, 3));
        return arrayList;
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.mOrientation == configuration.orientation && this.mThemeSeq == configuration.themeSeq && this.mAssetSeq == configuration.assetsSeq && this.mUIMode == configuration.uiMode) {
            return;
        }
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(configuration, 2));
        this.mOrientation = configuration.orientation;
        this.mThemeSeq = configuration.themeSeq;
        this.mAssetSeq = configuration.assetsSeq;
        this.mUIMode = configuration.uiMode;
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onPanelClosed() {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0(1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
    
        if (r2 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
    
        if (r0 != false) goto L58;
     */
    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase, com.android.systemui.shade.ShadeExpansionListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onPanelExpansionChanged(com.android.systemui.shade.ShadeExpansionChangeEvent r14) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.animator.SecQSFragmentAnimatorManager.onPanelExpansionChanged(com.android.systemui.shade.ShadeExpansionChangeEvent):void");
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onRtlChanged() {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0(0));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void onStateChanged(final int i) {
        SecQSFragmentAnimatorLogger secQSFragmentAnimatorLogger = this.mLogger;
        if (secQSFragmentAnimatorLogger.barState != i) {
            secQSFragmentAnimatorLogger.printLog("[barState:" + i + "]");
        }
        secQSFragmentAnimatorLogger.barState = i;
        executeConsumer(new Consumer() { // from class: com.android.systemui.qs.animator.SecQSFragmentAnimatorManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SecQSFragmentAnimatorBase) obj).onStateChanged(i);
            }
        });
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setExpandImmediateSupplier(BooleanSupplier booleanSupplier) {
        this.mExpandImmediateSupplier = booleanSupplier;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(booleanSupplier, 5));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setFancyClipping(final int i, final int i2, final int i3, final int i4, final int i5, final boolean z, final boolean z2) {
        executeConsumer(new Consumer() { // from class: com.android.systemui.qs.animator.SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SecQSFragmentAnimatorBase) obj).setFancyClipping(i, i2, i3, i4, i5, z, z2);
            }
        });
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setFullyExpanded(boolean z) {
        if (this.mQsFullyExpanded == z) {
            return;
        }
        SecQSFragmentAnimatorLogger secQSFragmentAnimatorLogger = this.mLogger;
        if (secQSFragmentAnimatorLogger.qsFullyExpanded != z) {
            secQSFragmentAnimatorLogger.printLog("[qsFullyExpanded:" + z + "]");
        }
        secQSFragmentAnimatorLogger.qsFullyExpanded = z;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 0));
        this.mQsFullyExpanded = z;
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setNotificationStackScrollerController(NotificationStackScrollLayoutController notificationStackScrollLayoutController) {
        this.mStackScrollerController = notificationStackScrollLayoutController;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(notificationStackScrollLayoutController, 6));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setPanelViewController(NotificationPanelViewController notificationPanelViewController) {
        this.mPanelViewController = notificationPanelViewController;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(notificationPanelViewController, 4));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setQs(QS qs) {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(qs, 1));
        updateAnimators();
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setQsExpanded(boolean z) {
        SecQSFragmentAnimatorLogger secQSFragmentAnimatorLogger = this.mLogger;
        if (secQSFragmentAnimatorLogger.qsExpanded != z) {
            secQSFragmentAnimatorLogger.printLog("[qsExpanded:" + z + "]");
        }
        secQSFragmentAnimatorLogger.qsExpanded = z;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r2 != false) goto L29;
     */
    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setQsExpansionPosition(final float r9) {
        /*
            r8 = this;
            com.android.systemui.qs.animator.SecQSFragmentAnimatorLogger r0 = r8.mLogger
            float r1 = r0.qsExpansionPosition
            int r1 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r1 != 0) goto Lc
            r1 = r2
            goto Ld
        Lc:
            r1 = r3
        Ld:
            if (r1 != 0) goto L6f
            float r1 = r0.qsExpansionPositionLastLoggingValue
            float r1 = r1 - r9
            float r1 = java.lang.Math.abs(r1)
            double r4 = (double) r1
            r6 = 4591870180066957722(0x3fb999999999999a, double:0.1)
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 > 0) goto L48
            float r1 = r0.qsExpansionPosition
            r4 = 0
            int r5 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r5 != 0) goto L29
            r5 = r2
            goto L2a
        L29:
            r5 = r3
        L2a:
            if (r5 != 0) goto L48
            r5 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 != 0) goto L34
            r1 = r2
            goto L35
        L34:
            r1 = r3
        L35:
            if (r1 != 0) goto L48
            int r1 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r1 != 0) goto L3d
            r1 = r2
            goto L3e
        L3d:
            r1 = r3
        L3e:
            if (r1 != 0) goto L48
            int r1 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r1 != 0) goto L45
            goto L46
        L45:
            r2 = r3
        L46:
            if (r2 == 0) goto L6f
        L48:
            java.text.DecimalFormat r1 = new java.text.DecimalFormat
            java.lang.String r2 = "#.###"
            r1.<init>(r2)
            java.lang.Float r2 = java.lang.Float.valueOf(r9)
            java.lang.String r1 = r1.format(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "[qsExpansionPosition:"
            r2.<init>(r3)
            r2.append(r1)
            java.lang.String r1 = "]"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.printLog(r1)
            r0.qsExpansionPositionLastLoggingValue = r9
        L6f:
            r0.qsExpansionPosition = r9
            com.android.systemui.qs.animator.SecQSFragmentAnimatorManager$$ExternalSyntheticLambda5 r0 = new com.android.systemui.qs.animator.SecQSFragmentAnimatorManager$$ExternalSyntheticLambda5
            r0.<init>()
            r8.executeConsumer(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.animator.SecQSFragmentAnimatorManager.setQsExpansionPosition(float):void");
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void setStackScrollerOverscrolling(boolean z) {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 1));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void updateAnimators() {
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0(3));
    }

    @Override // com.android.systemui.qs.animator.SecQSFragmentAnimatorBase
    public final void updatePanelExpanded(boolean z) {
        this.mPanelExpanded = z;
        SecQSFragmentAnimatorLogger secQSFragmentAnimatorLogger = this.mLogger;
        if (secQSFragmentAnimatorLogger.panelExpanded != z) {
            secQSFragmentAnimatorLogger.printLog("[panelExpanded:" + z + "]");
        }
        secQSFragmentAnimatorLogger.panelExpanded = z;
        executeConsumer(new SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1(z, 3));
    }
}
