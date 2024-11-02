package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Trace;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.indexsearch.SystemUIIndexMediator;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.plugins.qs.QSContainerController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSBackupRestoreManager;
import com.android.systemui.qs.SecQSDetail;
import com.android.systemui.qs.animator.QsTransitionAnimator;
import com.android.systemui.qs.animator.SecQSFragmentAnimatorManager;
import com.android.systemui.qs.bar.BarBackUpRestoreHelper;
import com.android.systemui.qs.bar.BarController;
import com.android.systemui.qs.bar.BarController$$ExternalSyntheticLambda1;
import com.android.systemui.qs.bar.BarController$$ExternalSyntheticLambda3;
import com.android.systemui.qs.bar.BarController$$ExternalSyntheticLambda8;
import com.android.systemui.qs.buttons.QSButtonsContainerController;
import com.android.systemui.qs.cinema.QSCinemaCompany;
import com.android.systemui.qs.cinema.QSCinemaProvider;
import com.android.systemui.qs.customize.QSCustomizer;
import com.android.systemui.qs.customize.QSCustomizerController;
import com.android.systemui.qs.dagger.QSFragmentComponent;
import com.android.systemui.qs.footer.ui.binder.FooterActionsViewBinder;
import com.android.systemui.qs.footer.ui.viewmodel.FooterActionsViewModel$Factory;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.shade.transition.LargeScreenShadeInterpolator;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.disableflags.DisableFlagsLogger;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.policy.RemoteInputQuickSettingsDisabler;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.LifecycleFragment;
import com.sec.ims.configuration.DATA;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSFragment extends LifecycleFragment implements QS, CommandQueue.Callbacks, StatusBarStateController.StateListener, Dumpable {
    public final AnonymousClass3 mAnimateHeaderSlidingInListener;
    public final KeyguardBypassController mBypassController;
    public QSContainerImpl mContainer;
    public final DumpManager mDumpManager;
    public SecQuickStatusBarHeader mHeader;
    public boolean mHeaderAnimating;
    public boolean mInSplitShade;
    public boolean mIsSmallScreen;
    public boolean mLastKeyguardAndExpanded;
    public float mLastPanelFraction;
    public int mLastViewHeight;
    public int mLayoutDirection;
    public boolean mListening;
    public final ListeningAndVisibilityLifecycleOwner mListeningAndVisibilityLifecycleOwner;
    public float mLockscreenToShadeProgress;
    public boolean mOverScrolling;
    public QS.HeightListener mPanelView;
    public QSContainerImplController mQSContainerImplController;
    public QSCustomizerController mQSCustomizerController;
    public SecQSPanelController mQSPanelController;
    public NonInterceptingScrollView mQSPanelScrollView;
    public QSSquishinessController mQSSquishinessController;
    public final QSFragmentComponent.Factory mQsComponentFactory;
    public boolean mQsDisabled;
    public boolean mQsExpanded;
    public final QSFragmentDisableFlagsLogger mQsFragmentDisableFlagsLogger;
    public boolean mQsVisible;
    public SecQuickQSPanelController mQuickQSPanelController;
    public final RemoteInputQuickSettingsDisabler mRemoteInputQuickSettingsDisabler;
    public QS.ScrollListener mScrollListener;
    public final SecQSFragment mSecQSFragment;
    public boolean mShowCollapsedOnKeyguard;
    public boolean mStackScrollerOverscrolling;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public boolean mTransitioningToFullShade;
    public final Rect mQsBounds = new Rect();
    public float mLastQSExpansion = -1.0f;
    public float mSquishinessFraction = 1.0f;
    public final int[] mLocationTemp = new int[2];
    public int mStatusBarState = -1;
    public final int[] mTmpLocation = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class ListeningAndVisibilityLifecycleOwner implements LifecycleOwner {
        public final LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);
        public boolean mDestroyed = false;

        public ListeningAndVisibilityLifecycleOwner() {
            updateState();
        }

        @Override // androidx.lifecycle.LifecycleOwner
        public final LifecycleRegistry getLifecycle() {
            return this.mLifecycleRegistry;
        }

        public final void updateState() {
            boolean z = this.mDestroyed;
            LifecycleRegistry lifecycleRegistry = this.mLifecycleRegistry;
            if (z) {
                lifecycleRegistry.setCurrentState(Lifecycle.State.DESTROYED);
                return;
            }
            QSFragment qSFragment = QSFragment.this;
            if (!qSFragment.mListening) {
                lifecycleRegistry.setCurrentState(Lifecycle.State.CREATED);
            } else if (!qSFragment.mQsVisible) {
                lifecycleRegistry.setCurrentState(Lifecycle.State.STARTED);
            } else {
                lifecycleRegistry.setCurrentState(Lifecycle.State.RESUMED);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.systemui.qs.QSFragment$3] */
    public QSFragment(RemoteInputQuickSettingsDisabler remoteInputQuickSettingsDisabler, SysuiStatusBarStateController sysuiStatusBarStateController, CommandQueue commandQueue, KeyguardBypassController keyguardBypassController, QSFragmentComponent.Factory factory, QSFragmentDisableFlagsLogger qSFragmentDisableFlagsLogger, DumpManager dumpManager, QSLogger qSLogger, FooterActionsController footerActionsController, FooterActionsViewModel$Factory footerActionsViewModel$Factory, FooterActionsViewBinder footerActionsViewBinder, LargeScreenShadeInterpolator largeScreenShadeInterpolator, FeatureFlags featureFlags, FalsingManager falsingManager, SecQSDetailDisplayer secQSDetailDisplayer, ShadeHeaderController shadeHeaderController) {
        new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.qs.QSFragment.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                QSFragment.this.getView().getViewTreeObserver().removeOnPreDrawListener(this);
                QSFragment.this.getView().animate().translationY(0.0f).setDuration(448L).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).setListener(QSFragment.this.mAnimateHeaderSlidingInListener).start();
                return true;
            }
        };
        this.mAnimateHeaderSlidingInListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.qs.QSFragment.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                QSFragment qSFragment = QSFragment.this;
                qSFragment.mHeaderAnimating = false;
                qSFragment.updateQsState();
                QSFragment.this.getView().animate().setListener(null);
            }
        };
        this.mRemoteInputQuickSettingsDisabler = remoteInputQuickSettingsDisabler;
        this.mQsComponentFactory = factory;
        this.mQsFragmentDisableFlagsLogger = qSFragmentDisableFlagsLogger;
        commandQueue.observe(this.mLifecycle, this);
        this.mBypassController = keyguardBypassController;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mDumpManager = dumpManager;
        this.mListeningAndVisibilityLifecycleOwner = new ListeningAndVisibilityLifecycleOwner();
        this.mSecQSFragment = new SecQSFragment(falsingManager, new BooleanSupplier() { // from class: com.android.systemui.qs.QSFragment$$ExternalSyntheticLambda1
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return QSFragment.this.mQsExpanded;
            }
        }, secQSDetailDisplayer, new Supplier() { // from class: com.android.systemui.qs.QSFragment$$ExternalSyntheticLambda2
            @Override // java.util.function.Supplier
            public final Object get() {
                return QSFragment.this.getView();
            }
        }, shadeHeaderController);
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void animateHeaderSlidingOut() {
        if (getView().getY() == (-this.mHeader.getHeight())) {
            return;
        }
        this.mHeaderAnimating = true;
        getView().animate().y(-this.mHeader.getHeight()).setStartDelay(0L).setDuration(360L).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).setListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.qs.QSFragment.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (QSFragment.this.getView() != null) {
                    QSFragment.this.getView().animate().setListener(null);
                }
                QSFragment qSFragment = QSFragment.this;
                qSFragment.mHeaderAnimating = false;
                qSFragment.updateQsState();
            }
        }).start();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void closeCustomizer() {
        this.mQSCustomizerController.hide();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void closeDetail() {
        SecQSPanelController secQSPanelController = this.mQSPanelController;
        secQSPanelController.showDetail(secQSPanelController.mDetailRecord, false);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void disable(int i, int i2, int i3, boolean z) {
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        if (i != getContext().getDisplayId()) {
            return;
        }
        this.mRemoteInputQuickSettingsDisabler.getClass();
        final QSFragmentDisableFlagsLogger qSFragmentDisableFlagsLogger = this.mQsFragmentDisableFlagsLogger;
        DisableFlagsLogger.DisableState disableState = new DisableFlagsLogger.DisableState(i2, i3);
        DisableFlagsLogger.DisableState disableState2 = new DisableFlagsLogger.DisableState(i2, i3);
        qSFragmentDisableFlagsLogger.getClass();
        LogLevel logLevel = LogLevel.INFO;
        Function1 function1 = new Function1() { // from class: com.android.systemui.qs.QSFragmentDisableFlagsLogger$logDisableFlagChange$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return QSFragmentDisableFlagsLogger.this.disableFlagsLogger.getDisableFlagsString(null, new DisableFlagsLogger.DisableState(logMessage.getInt1(), logMessage.getInt2()), new DisableFlagsLogger.DisableState((int) logMessage.getLong1(), (int) logMessage.getLong2()));
            }
        };
        LogBuffer logBuffer = qSFragmentDisableFlagsLogger.buffer;
        LogMessage obtain = logBuffer.obtain("QSFragmentDisableFlagsLog", logLevel, function1, null);
        obtain.setInt1(disableState.disable1);
        obtain.setInt2(disableState.disable2);
        obtain.setLong1(disableState2.disable1);
        obtain.setLong2(disableState2.disable2);
        logBuffer.commit(obtain);
        boolean z4 = true;
        int i6 = i3 & 1;
        int i7 = 0;
        if (i6 != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 == this.mQsDisabled) {
            return;
        }
        this.mQsDisabled = z2;
        QSContainerImpl qSContainerImpl = this.mContainer;
        qSContainerImpl.getClass();
        if (i6 != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        int i8 = 8;
        if (z3 != qSContainerImpl.mQsDisabled) {
            qSContainerImpl.mQsDisabled = z3;
            if (QpRune.QUICK_TABLET_BG) {
                View view = qSContainerImpl.mOpaqueBgHelper.mBackground;
                if (z3) {
                    i5 = 8;
                } else {
                    i5 = 0;
                }
                view.setVisibility(i5);
            }
        }
        SecQuickStatusBarHeader secQuickStatusBarHeader = this.mHeader;
        secQuickStatusBarHeader.getClass();
        if (i6 == 0) {
            z4 = false;
        }
        if (z4 != secQuickStatusBarHeader.mQsDisabled) {
            secQuickStatusBarHeader.mQsDisabled = z4;
            SecQuickQSPanel secQuickQSPanel = secQuickStatusBarHeader.mHeaderQsPanel;
            if (z4 != secQuickQSPanel.mDisabledByPolicy) {
                secQuickQSPanel.mDisabledByPolicy = z4;
                if (z4) {
                    i4 = 8;
                } else {
                    i4 = 0;
                }
                secQuickQSPanel.setVisibility(i4);
            }
            View view2 = secQuickStatusBarHeader.mDateButtonContainer;
            if (!secQuickStatusBarHeader.mQsDisabled) {
                i8 = 0;
            }
            view2.setVisibility(i8);
            ViewGroup.LayoutParams layoutParams = secQuickStatusBarHeader.getLayoutParams();
            if (secQuickStatusBarHeader.mQsDisabled) {
                if (QpRune.QUICK_TABLET) {
                    i7 = ((ShadeHeaderController) secQuickStatusBarHeader.mResourcePicker.mShadeHeaderControllerLazy.get()).getViewHeight();
                }
            } else {
                i7 = -2;
            }
            layoutParams.height = i7;
            secQuickStatusBarHeader.setLayoutParams(layoutParams);
        }
        updateQsState();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        indentingPrintWriter.println("QSFragment:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("mQsBounds: " + this.mQsBounds);
        indentingPrintWriter.println("mQsExpanded: " + this.mQsExpanded);
        indentingPrintWriter.println("mHeaderAnimating: " + this.mHeaderAnimating);
        indentingPrintWriter.println("mStackScrollerOverscrolling: " + this.mStackScrollerOverscrolling);
        indentingPrintWriter.println("mListening: " + this.mListening);
        indentingPrintWriter.println("mQsVisible: " + this.mQsVisible);
        indentingPrintWriter.println("mLayoutDirection: " + this.mLayoutDirection);
        indentingPrintWriter.println("mLastQSExpansion: " + this.mLastQSExpansion);
        indentingPrintWriter.println("mLastPanelFraction: " + this.mLastPanelFraction);
        indentingPrintWriter.println("mSquishinessFraction: " + this.mSquishinessFraction);
        indentingPrintWriter.println("mQsDisabled: " + this.mQsDisabled);
        indentingPrintWriter.println("mTemp: " + Arrays.toString(this.mLocationTemp));
        indentingPrintWriter.println("mShowCollapsedOnKeyguard: " + this.mShowCollapsedOnKeyguard);
        indentingPrintWriter.println("mLastKeyguardAndExpanded: " + this.mLastKeyguardAndExpanded);
        indentingPrintWriter.println("mStatusBarState: " + StatusBarState.toString(this.mStatusBarState));
        indentingPrintWriter.println("mTmpLocation: " + Arrays.toString(this.mTmpLocation));
        indentingPrintWriter.println("mLastViewHeight: " + this.mLastViewHeight);
        indentingPrintWriter.println("mLastHeaderTranslation: 0.0");
        indentingPrintWriter.println("mInSplitShade: " + this.mInSplitShade);
        indentingPrintWriter.println("mTransitioningToFullShade: " + this.mTransitioningToFullShade);
        indentingPrintWriter.println("mLockscreenToShadeProgress: " + this.mLockscreenToShadeProgress);
        indentingPrintWriter.println("mOverScrolling: " + this.mOverScrolling);
        indentingPrintWriter.println("isCustomizing: " + ((QSCustomizer) this.mQSCustomizerController.mView).mCustomizing);
        View view = getView();
        if (view != null) {
            indentingPrintWriter.println("top: " + view.getTop());
            indentingPrintWriter.println("y: " + view.getY());
            indentingPrintWriter.println("translationY: " + view.getTranslationY());
            indentingPrintWriter.println("alpha: " + view.getAlpha());
            indentingPrintWriter.println("height: " + view.getHeight());
            indentingPrintWriter.println("measuredHeight: " + view.getMeasuredHeight());
            indentingPrintWriter.println("clipBounds: " + view.getClipBounds());
        } else {
            indentingPrintWriter.println("getView(): null");
        }
        SecQuickStatusBarHeader secQuickStatusBarHeader = this.mHeader;
        if (secQuickStatusBarHeader != null) {
            indentingPrintWriter.println("headerHeight: " + secQuickStatusBarHeader.getHeight());
            int visibility = secQuickStatusBarHeader.getVisibility();
            if (visibility == 0) {
                str = "VISIBLE";
            } else if (visibility == 4) {
                str = "INVISIBLE";
            } else {
                str = "GONE";
            }
            indentingPrintWriter.println("Header visibility: ".concat(str));
            return;
        }
        indentingPrintWriter.println("mHeader: null");
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final int getDesiredHeight() {
        if (((QSCustomizer) this.mQSCustomizerController.mView).mCustomizing) {
            return getView().getHeight();
        }
        return this.mSecQSFragment.shadeHeaderController.getViewHeight() + getView().getMeasuredHeight();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final View getHeader() {
        return this.mHeader;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final int getHeightDiff() {
        return this.mHeader.getPaddingBottom() + (this.mQSPanelScrollView.getBottom() - this.mHeader.getBottom());
    }

    public ListeningAndVisibilityLifecycleOwner getListeningAndVisibilityLifecycleOwner() {
        return this.mListeningAndVisibilityLifecycleOwner;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final int getQsMinExpansionHeight() {
        int i;
        if (this.mInSplitShade) {
            getView().getLocationOnScreen(this.mLocationTemp);
            return getView().getHeight() + ((int) (this.mLocationTemp[1] - getView().getTranslationY()));
        }
        int height = this.mHeader.getHeight();
        if (!QpRune.QUICK_TABLET_BG) {
            i = this.mSecQSFragment.shadeHeaderController.getViewHeight();
        } else {
            i = 0;
        }
        return height + i;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void hideImmediately() {
        getView().animate().cancel();
        getView().setY(-getQsMinExpansionHeight());
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final boolean isCustomizing() {
        return ((QSCustomizer) this.mQSCustomizerController.mView).mCustomizing;
    }

    public boolean isExpanded() {
        return this.mQsExpanded;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final boolean isFullyCollapsed() {
        float f = this.mLastQSExpansion;
        if (f != 0.0f && f != -1.0f) {
            return false;
        }
        return true;
    }

    public boolean isListening() {
        return this.mListening;
    }

    public boolean isQsVisible() {
        return this.mQsVisible;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final boolean isShowingDetail() {
        boolean z;
        if (((QSCustomizer) this.mQSCustomizerController.mView).mCustomizing) {
            return true;
        }
        SecQSDetail secQSDetail = this.mSecQSFragment.quickTile.secQSDetail;
        if (secQSDetail != null && secQSDetail.mQsPanelController.mDetailRecord != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void notifyCustomizeChanged() {
        int i;
        this.mContainer.updateExpansion();
        boolean isCustomizing = isCustomizing();
        NonInterceptingScrollView nonInterceptingScrollView = this.mQSPanelScrollView;
        int i2 = 0;
        if (!isCustomizing) {
            i = 0;
        } else {
            i = 4;
        }
        nonInterceptingScrollView.setVisibility(i);
        SecQuickStatusBarHeader secQuickStatusBarHeader = this.mHeader;
        if (isCustomizing) {
            i2 = 4;
        }
        secQuickStatusBarHeader.setVisibility(i2);
        this.mPanelView.onQsHeightChanged();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.getLayoutDirection() != this.mLayoutDirection) {
            this.mLayoutDirection = configuration.getLayoutDirection();
            SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = this.mSecQSFragment.quickAnimation.secQSFragmentAnimatorManager;
            if (secQSFragmentAnimatorManager != null) {
                secQSFragmentAnimatorManager.onRtlChanged();
            }
        }
        SecQSFragment secQSFragment = this.mSecQSFragment;
        QSCinemaCompany qSCinemaCompany = secQSFragment.qsCinemaFragmentAdapter;
        if (qSCinemaCompany != null) {
            QSCinemaProvider qSCinemaProvider = qSCinemaCompany.mProvider;
            if (qSCinemaProvider.mCurrentOrientation != configuration.orientation) {
                StringBuilder sb = new StringBuilder("orientation is changed ! ");
                sb.append(qSCinemaProvider.mCurrentOrientation);
                sb.append(" >> ");
                RecyclerView$$ExternalSyntheticOutline0.m(sb, configuration.orientation, "QSCinemaProvider");
                qSCinemaProvider.mCurrentOrientation = configuration.orientation;
            }
            if (qSCinemaProvider.mCurrentLayoutDirection != configuration.getLayoutDirection()) {
                Log.d("QSCinemaProvider", "LayoutDirection is changed ! " + qSCinemaProvider.mCurrentLayoutDirection + " >> " + configuration.getLayoutDirection());
                qSCinemaProvider.mCurrentLayoutDirection = configuration.getLayoutDirection();
            }
        }
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager2 = secQSFragment.quickAnimation.secQSFragmentAnimatorManager;
        if (secQSFragmentAnimatorManager2 != null) {
            secQSFragmentAnimatorManager2.onConfigurationChanged(configuration);
        }
        BarController barController = secQSFragment.quickBar.barController;
        if (barController != null && barController.mOrientation != configuration.orientation) {
            Runnable runnable = barController.mQSLastExpansionInitializer;
            if (runnable != null) {
                runnable.run();
            }
            barController.mOrientation = configuration.orientation;
        }
        updateQsState();
    }

    @Override // com.android.systemui.util.LifecycleFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDumpManager.registerDumpable(QSFragment.class.getName(), this);
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        try {
            Trace.beginSection("QSFragment#onCreateView");
            return layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), 2132018541)).inflate(R.layout.qs_panel, viewGroup, false);
        } finally {
            Trace.endSection();
        }
    }

    @Override // com.android.systemui.util.LifecycleFragment, android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).removeCallback((StatusBarStateController.StateListener) this);
        if (this.mListening) {
            setListening(false);
        }
        QSCustomizerController qSCustomizerController = this.mQSCustomizerController;
        if (qSCustomizerController != null) {
            ((QSCustomizer) qSCustomizerController.mView).mQs = null;
        }
        this.mScrollListener = null;
        QSContainerImpl qSContainerImpl = this.mContainer;
        if (qSContainerImpl != null) {
            this.mDumpManager.unregisterDumpable(qSContainerImpl.getClass().getName());
        }
        this.mDumpManager.unregisterDumpable(QSFragment.class.getName());
        ListeningAndVisibilityLifecycleOwner listeningAndVisibilityLifecycleOwner = this.mListeningAndVisibilityLifecycleOwner;
        listeningAndVisibilityLifecycleOwner.mDestroyed = true;
        listeningAndVisibilityLifecycleOwner.updateState();
        SecQSFragment secQSFragment = this.mSecQSFragment;
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = secQSFragment.quickAnimation.secQSFragmentAnimatorManager;
        if (secQSFragmentAnimatorManager != null) {
            secQSFragmentAnimatorManager.setQs(null);
            secQSFragmentAnimatorManager.destroyQSViews();
        }
        BarController barController = secQSFragment.quickBar.barController;
        if (barController != null) {
            barController.mBarListener = null;
            barController.mAllBarItems.forEach(new BarController$$ExternalSyntheticLambda1(0));
            synchronized (PanelScreenShotLogger.INSTANCE) {
                PanelScreenShotLogger.providers.remove("BarController");
            }
            ((KnoxStateMonitorImpl) barController.mKnoxStateMonitor).removeCallback(barController.mKnoxStateMonitorCallback);
            LinkedHashMap linkedHashMap = barController.mBarBackUpRestoreHelper.qsBackupRestoreManager.mQSBnRMap;
            if (linkedHashMap.keySet().contains("QuickPanelLayout")) {
                linkedHashMap.remove("QuickPanelLayout");
            }
        }
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("expanded", this.mQsExpanded);
        bundle.putBoolean("listening", this.mListening);
        bundle.putBoolean("visible", this.mQsVisible);
        if (this.mQsExpanded) {
            this.mQSPanelController.mTileLayout.saveInstanceState(bundle);
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        if (i == this.mStatusBarState) {
            return;
        }
        this.mStatusBarState = i;
        this.mLastQSExpansion = -1.0f;
        SecQSFragment secQSFragment = this.mSecQSFragment;
        boolean z = false;
        QSFragment$$ExternalSyntheticLambda0 qSFragment$$ExternalSyntheticLambda0 = new QSFragment$$ExternalSyntheticLambda0(this, 0);
        QSCinemaCompany qSCinemaCompany = secQSFragment.qsCinemaFragmentAdapter;
        if (qSCinemaCompany != null) {
            qSCinemaCompany.mProvider.getClass();
        }
        secQSFragment.quickBar.getClass();
        qSFragment$$ExternalSyntheticLambda0.run();
        updateShowCollapsedOnKeyguard();
        SecQSFragment secQSFragment2 = this.mSecQSFragment;
        QSContainerImplController qSContainerImplController = this.mQSContainerImplController;
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = secQSFragment2.quickAnimation.secQSFragmentAnimatorManager;
        if (secQSFragmentAnimatorManager != null) {
            secQSFragmentAnimatorManager.onStateChanged(i);
        }
        if (i == 1) {
            z = true;
        }
        ((QSContainerImpl) qSContainerImplController.mView).mKeyguardShowing = z;
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onUpcomingStateChanged(int i) {
        if (i == 1) {
            onStateChanged(i);
        }
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        boolean z;
        QSFragmentComponent create = this.mQsComponentFactory.create(this);
        this.mQSPanelController = create.getSecQSPanelController();
        this.mQuickQSPanelController = create.getSecQuickQSPanelController();
        this.mQSPanelController.init();
        this.mQuickQSPanelController.init();
        NonInterceptingScrollView nonInterceptingScrollView = (NonInterceptingScrollView) view.findViewById(R.id.expanded_qs_scroll_view);
        this.mQSPanelScrollView = nonInterceptingScrollView;
        final int i = 0;
        nonInterceptingScrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: com.android.systemui.qs.QSFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ QSFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                boolean z2;
                switch (i) {
                    case 0:
                        this.f$0.updateQsBounds();
                        return;
                    default:
                        QSFragment qSFragment = this.f$0;
                        qSFragment.getClass();
                        if (i7 - i9 != i3 - i5) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            qSFragment.setQsExpansion(qSFragment.mLastQSExpansion, qSFragment.mLastPanelFraction, 0.0f, qSFragment.mSquishinessFraction);
                            return;
                        }
                        return;
                }
            }
        });
        this.mQSPanelScrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.android.systemui.qs.QSFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view2, int i2, int i3, int i4, int i5) {
                QS.ScrollListener scrollListener = QSFragment.this.mScrollListener;
                if (scrollListener != null) {
                    scrollListener.onQsPanelScrollChanged(i3);
                }
            }
        });
        this.mHeader = (SecQuickStatusBarHeader) view.findViewById(R.id.header);
        QSContainerImplController qSContainerImplController = create.getQSContainerImplController();
        this.mQSContainerImplController = qSContainerImplController;
        qSContainerImplController.init();
        QSContainerImpl qSContainerImpl = (QSContainerImpl) this.mQSContainerImplController.mView;
        this.mContainer = qSContainerImpl;
        DumpManager dumpManager = this.mDumpManager;
        String name = qSContainerImpl.getClass().getName();
        QSContainerImpl qSContainerImpl2 = this.mContainer;
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, name, qSContainerImpl2);
        this.mQSSquishinessController = create.getQSSquishinessController();
        QSCustomizerController qSCustomizerController = create.getQSCustomizerController();
        this.mQSCustomizerController = qSCustomizerController;
        qSCustomizerController.init();
        ((QSCustomizer) this.mQSCustomizerController.mView).mQs = this;
        if (bundle != null) {
            setQsVisible(bundle.getBoolean("visible"));
            setExpanded(bundle.getBoolean("expanded"));
            setListening(bundle.getBoolean("listening"));
            if (this.mQsExpanded) {
                this.mQSPanelController.mTileLayout.restoreInstanceState(bundle);
            }
        }
        final SecQSFragment secQSFragment = this.mSecQSFragment;
        final int i2 = 1;
        QSFragment$$ExternalSyntheticLambda0 qSFragment$$ExternalSyntheticLambda0 = new QSFragment$$ExternalSyntheticLambda0(this, 1);
        QSFragment$$ExternalSyntheticLambda0 qSFragment$$ExternalSyntheticLambda02 = new QSFragment$$ExternalSyntheticLambda0(this, 2);
        SecQSPanelController secQSPanelController = this.mQSPanelController;
        SecQuickQSPanelController secQuickQSPanelController = this.mQuickQSPanelController;
        SecQuickStatusBarHeader secQuickStatusBarHeader = this.mHeader;
        NonInterceptingScrollView nonInterceptingScrollView2 = this.mQSPanelScrollView;
        Objects.requireNonNull(nonInterceptingScrollView2);
        QuickAnimation quickAnimation = secQSFragment.quickAnimation;
        quickAnimation.getClass();
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = create.getSecQSFragmentAnimatorManager();
        secQSFragmentAnimatorManager.setQs(this);
        if (bundle != null && bundle.getBoolean("expanded")) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            secQSFragmentAnimatorManager.updatePanelExpanded(true);
        }
        secQSPanelController.mSecAnimatorManager = secQSFragmentAnimatorManager;
        quickAnimation.secQSFragmentAnimatorManager = secQSFragmentAnimatorManager;
        Runnable runnable = new Runnable() { // from class: com.android.systemui.qs.SecQSFragment$onViewCreated$1
            @Override // java.lang.Runnable
            public final void run() {
                SecQSFragmentAnimatorManager secQSFragmentAnimatorManager2 = SecQSFragment.this.quickAnimation.secQSFragmentAnimatorManager;
                if (secQSFragmentAnimatorManager2 != null) {
                    secQSFragmentAnimatorManager2.updateAnimators();
                }
            }
        };
        QuickBar quickBar = secQSFragment.quickBar;
        quickBar.getClass();
        BarController barController = create.getBarController();
        barController.mQSLastExpansionInitializer = qSFragment$$ExternalSyntheticLambda02;
        barController.mBarListener = new BarController.AnonymousClass3(runnable, qSFragment$$ExternalSyntheticLambda0);
        SecQSPanel secQSPanel = (SecQSPanel) getView().findViewById(R.id.quick_settings_panel);
        barController.mQsPanel = secQSPanel;
        ((ArrayList) secQSPanel.mOnConfigurationChangedListeners).add(barController.mOnConfigurationChangedListener);
        barController.mQsPanel.setOnApplyWindowInsetsListener(new BarController.OnApplyWindowInsetsListener(barController, 0));
        barController.updateBarUnderneathQqs();
        barController.mAllBarItems.forEach(new BarController$$ExternalSyntheticLambda8(barController, 0));
        PanelScreenShotLogger.INSTANCE.addLogProvider("BarController", barController);
        ((KnoxStateMonitorImpl) barController.mKnoxStateMonitor).registerCallback(barController.mKnoxStateMonitorCallback);
        final BarBackUpRestoreHelper barBackUpRestoreHelper = barController.mBarBackUpRestoreHelper;
        barBackUpRestoreHelper.getClass();
        barBackUpRestoreHelper.qsBackupRestoreManager.addCallback("QuickPanelLayout", new QSBackupRestoreManager.Callback() { // from class: com.android.systemui.qs.bar.BarBackUpRestoreHelper$initialize$1
            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final boolean isValidDB() {
                int i3 = BarBackUpRestoreHelper.$r8$clinit;
                BarBackUpRestoreHelper.this.getClass();
                return true;
            }

            /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
            
                if (r7 != false) goto L28;
             */
            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.String onBackup(boolean r10) {
                /*
                    r9 = this;
                    com.android.systemui.qs.bar.BarBackUpRestoreHelper r9 = com.android.systemui.qs.bar.BarBackUpRestoreHelper.this
                    com.android.systemui.tuner.TunerService r0 = r9.tunerService
                    r1 = 0
                    r2 = 0
                    r3 = 1
                    if (r10 == 0) goto L19
                    java.lang.String r4 = "brightness_on_top"
                    int r4 = r0.getValue(r3, r4)
                    if (r4 == 0) goto L13
                    r4 = r3
                    goto L14
                L13:
                    r4 = r1
                L14:
                    java.lang.String r4 = java.lang.String.valueOf(r4)
                    goto L1a
                L19:
                    r4 = r2
                L1a:
                    if (r10 == 0) goto L5e
                    java.lang.String r5 = "qspanel_media_quickcontrol_bar_available"
                    r6 = 2
                    int r5 = r0.getValue(r6, r5)
                    if (r5 == 0) goto L58
                    java.lang.String r5 = "qspanel_media_quickcontrol_bar_available_on_top"
                    r7 = -1
                    int r5 = r0.getValue(r7, r5)
                    if (r5 == 0) goto L56
                    android.content.Context r5 = r9.context
                    android.content.res.Resources r5 = r5.getResources()
                    android.content.res.Configuration r7 = r5.getConfiguration()
                    int r7 = r7.orientation
                    if (r7 != r6) goto L40
                    r7 = r3
                    goto L41
                L40:
                    r7 = r1
                L41:
                    boolean r8 = com.android.systemui.QpRune.QUICK_TABLET
                    if (r8 != 0) goto L46
                    goto L54
                L46:
                    if (r7 == 0) goto L53
                    r7 = 2131034207(0x7f05005f, float:1.7678925E38)
                    boolean r5 = r5.getBoolean(r7)
                    if (r5 == 0) goto L53
                    r7 = r3
                    goto L54
                L53:
                    r7 = r1
                L54:
                    if (r7 == 0) goto L59
                L56:
                    r6 = r3
                    goto L59
                L58:
                    r6 = r1
                L59:
                    java.lang.String r5 = java.lang.String.valueOf(r6)
                    goto L5f
                L5e:
                    r5 = r2
                L5f:
                    if (r10 == 0) goto L71
                    java.lang.String r6 = "multi_sim_bar_show_on_qspanel"
                    int r6 = r0.getValue(r3, r6)
                    if (r6 == 0) goto L6b
                    r6 = r3
                    goto L6c
                L6b:
                    r6 = r1
                L6c:
                    java.lang.String r6 = java.lang.String.valueOf(r6)
                    goto L72
                L71:
                    r6 = r2
                L72:
                    if (r10 == 0) goto L82
                    java.lang.String r7 = "hide_smart_view_large_tile_on_panel"
                    int r0 = r0.getValue(r1, r7)
                    if (r0 != 0) goto L7d
                    r1 = r3
                L7d:
                    java.lang.String r0 = java.lang.String.valueOf(r1)
                    goto L83
                L82:
                    r0 = r2
                L83:
                    if (r10 == 0) goto L8f
                    com.android.systemui.util.SettingsHelper r9 = r9.settingsHelper
                    boolean r9 = r9.isExpandQsAtOnceEnabled()
                    java.lang.String r2 = java.lang.String.valueOf(r9)
                L8f:
                    java.lang.String r9 = "TAG::qplayout_brightnessbar::"
                    java.lang.String r10 = "::TAG::qplayout_mediadevices::"
                    java.lang.String r1 = "::TAG::qplayout_multisim::"
                    java.lang.StringBuilder r9 = com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(r9, r4, r10, r5, r1)
                    java.lang.String r10 = "::TAG::hide_smart_view_large_tile_on_panel::"
                    java.lang.String r1 = "::TAG::qplayout_expand_qs_at_once::"
                    com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0.m(r9, r6, r10, r0, r1)
                    r9.append(r2)
                    java.lang.String r9 = r9.toString()
                    java.lang.String r10 = " getBackupData: "
                    java.lang.String r10 = r10.concat(r9)
                    java.lang.String r0 = "BarBackUpRestoreManager"
                    android.util.Log.d(r0, r10)
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.BarBackUpRestoreHelper$initialize$1.onBackup(boolean):java.lang.String");
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0051. Please report as an issue. */
            @Override // com.android.systemui.qs.QSBackupRestoreManager.Callback
            public final void onRestore(String str) {
                int i3 = BarBackUpRestoreHelper.$r8$clinit;
                BarBackUpRestoreHelper barBackUpRestoreHelper2 = BarBackUpRestoreHelper.this;
                barBackUpRestoreHelper2.getClass();
                List split$default = StringsKt__StringsKt.split$default(str, new String[]{"::"}, 0, 6);
                Log.d("BarBackUpRestoreManager", " setRestoreData: ".concat(str));
                Iterator it = split$default.iterator();
                while (it.hasNext()) {
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setRestoreData: string: ", (String) it.next(), "BarBackUpRestoreManager");
                }
                if (split$default.size() > 1) {
                    String str2 = (String) split$default.get(0);
                    int hashCode = str2.hashCode();
                    TunerService tunerService = barBackUpRestoreHelper2.tunerService;
                    switch (hashCode) {
                        case -1719643190:
                            if (str2.equals("hide_smart_view_large_tile_on_panel")) {
                                String str3 = (String) split$default.get(1);
                                if (Intrinsics.areEqual(str3, "null")) {
                                    Log.w("BarBackUpRestoreManager", "restored hide_smart_view_large_tile_on_panel is null");
                                    return;
                                } else if (!QpRune.QUICK_HIDE_TILE_FROM_BAR) {
                                    MotionLayout$$ExternalSyntheticOutline0.m("restored hide_smart_view_large_tile_on_panel, device has QpRune.QUICK_HIDE_TILE_FROM_BAR is false. value:", str3, "BarBackUpRestoreManager");
                                    return;
                                } else {
                                    tunerService.setValue(!Intrinsics.areEqual(str3, "true") ? 1 : 0, "hide_smart_view_large_tile_on_panel");
                                    return;
                                }
                            }
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                        case -997857676:
                            if (str2.equals("qplayout_multisim")) {
                                String str4 = (String) split$default.get(1);
                                if (Intrinsics.areEqual(str4, "null")) {
                                    Log.w("BarBackUpRestoreManager", "restored qplayout_multisim is null");
                                    return;
                                } else {
                                    tunerService.setValue(Intrinsics.areEqual(str4, "true") ? 1 : 0, "multi_sim_bar_show_on_qspanel");
                                    return;
                                }
                            }
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                        case -552835476:
                            if (str2.equals("qplayout_brightnessbar")) {
                                String str5 = (String) split$default.get(1);
                                if (Intrinsics.areEqual(str5, "null")) {
                                    Log.w("BarBackUpRestoreManager", "restored qplayout_brightnessbar is null");
                                    return;
                                } else {
                                    tunerService.setValue(Intrinsics.areEqual(str5, "true") ? 1 : 0, "brightness_on_top");
                                    return;
                                }
                            }
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                        case -78389521:
                            if (str2.equals("qplayout_mediadevices")) {
                                String str6 = (String) split$default.get(1);
                                if (Intrinsics.areEqual(str6, "null")) {
                                    Log.w("BarBackUpRestoreManager", "restored qplayout_mediadevices is null");
                                    return;
                                }
                                switch (str6.hashCode()) {
                                    case 48:
                                        if (str6.equals(DATA.DM_FIELD_INDEX.PCSCF_DOMAIN)) {
                                            tunerService.setValue(0, "qspanel_media_quickcontrol_bar_available");
                                            tunerService.setValue(0, "qspanel_media_quickcontrol_bar_available_on_top");
                                            return;
                                        }
                                        break;
                                    case 49:
                                        if (str6.equals("1")) {
                                            tunerService.setValue(1, "qspanel_media_quickcontrol_bar_available");
                                            tunerService.setValue(0, "qspanel_media_quickcontrol_bar_available_on_top");
                                            return;
                                        }
                                        break;
                                    case 50:
                                        if (str6.equals("2")) {
                                            tunerService.setValue(1, "qspanel_media_quickcontrol_bar_available");
                                            tunerService.setValue(1, "qspanel_media_quickcontrol_bar_available_on_top");
                                            return;
                                        }
                                        break;
                                }
                                Log.w("BarBackUpRestoreManager", "updateMediaDevices: " + str6 + " is unknown");
                                return;
                            }
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                        case 615163903:
                            if (str2.equals("qplayout_expand_qs_at_once")) {
                                String str7 = (String) split$default.get(1);
                                if (Intrinsics.areEqual(str7, "null")) {
                                    Log.w("BarBackUpRestoreManager", "restored qplayout_expand_qs_at_once is null");
                                    return;
                                } else {
                                    Settings.Global.putInt(barBackUpRestoreHelper2.settingsHelper.mContext.getContentResolver(), "swipe_directly_to_quick_setting", Intrinsics.areEqual(str7, "true") ? 1 : 0);
                                    return;
                                }
                            }
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                        default:
                            Log.w("BarBackUpRestoreManager", "setRestoreData: " + split$default.get(0) + " is unknown");
                            return;
                    }
                }
            }
        });
        quickBar.barController = barController;
        QSCinemaCompany qSCinemaCompany = create.getQSCinemaCompany();
        qSCinemaCompany.getClass();
        secQSFragment.qsCinemaFragmentAdapter = qSCinemaCompany;
        QuickPanel quickPanel = secQSFragment.quickPanel;
        nonInterceptingScrollView2.mQsExpandSupplier = quickPanel.qsExpandedSupplier;
        QSButtonsContainerController qSButtonsContainerController = create.getQSButtonsContainerController();
        quickPanel.qsButtonsContainerController = qSButtonsContainerController;
        if (qSButtonsContainerController != null) {
            qSButtonsContainerController.init();
        } else {
            Log.d("QuickPanel", "onViewCreated: qsButtonsContainerController is null");
        }
        QuickTile quickTile = secQSFragment.quickTile;
        quickTile.getClass();
        SecQSDetail secQSDetail = (SecQSDetail) view.findViewById(R.id.qs_detail);
        quickTile.secQSDetail = secQSDetail;
        if (secQSDetail != null) {
            SecQSFragmentAnimatorManager secQSFragmentAnimatorManager2 = quickAnimation.secQSFragmentAnimatorManager;
            if (secQSFragmentAnimatorManager2 != null) {
                QsTransitionAnimator qsTransitionAnimator = secQSFragmentAnimatorManager2.mTransitionAnimator;
                secQSDetail.mTransitionAnimator = qsTransitionAnimator;
                qsTransitionAnimator.mDetailCallback = new SecQSDetail.AnonymousClass5();
            }
            secQSDetail.mQsPanelController = secQSPanelController;
            secQSDetail.mHeader = secQuickStatusBarHeader;
            SecQSDetail.AnonymousClass2 anonymousClass2 = secQSDetail.mQsPanelCallback;
            secQSPanelController.mDetailCallback = anonymousClass2;
            secQuickQSPanelController.mDetailCallback = anonymousClass2;
            secQSDetail.mFalsingManager = quickTile.falsingManager;
            SecQSDetailContentView secQSDetailContentView = secQSDetail.mDetailContentParent;
            if (secQSDetailContentView != null) {
                secQSDetailContentView.mQsPanelController = secQSPanelController;
            }
        }
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.qs.SecQSFragment$onViewCreated$3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return SecQSFragment.this.qsExpandedSupplier.getAsBoolean();
            }
        });
        ((SystemUIIndexMediator) Dependency.get(SystemUIIndexMediator.class)).mQsPanelController = secQSPanelController;
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).addCallback((StatusBarStateController.StateListener) this);
        onStateChanged(((StatusBarStateControllerImpl) this.mStatusBarStateController).mState);
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: com.android.systemui.qs.QSFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ QSFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i22, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                boolean z2;
                switch (i2) {
                    case 0:
                        this.f$0.updateQsBounds();
                        return;
                    default:
                        QSFragment qSFragment = this.f$0;
                        qSFragment.getClass();
                        if (i7 - i9 != i3 - i5) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            qSFragment.setQsExpansion(qSFragment.mLastQSExpansion, qSFragment.mLastPanelFraction, 0.0f, qSFragment.mSquishinessFraction);
                            return;
                        }
                        return;
                }
            }
        });
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setCollapseExpandAction(Runnable runnable) {
        SecQSPanelController secQSPanelController = this.mQSPanelController;
        secQSPanelController.mCollapseExpandAction = runnable;
        ((SecQSPanel) secQSPanelController.mView).mCollapseExpandAction = runnable;
        SecQuickQSPanelController secQuickQSPanelController = this.mQuickQSPanelController;
        secQuickQSPanelController.mCollapseExpandAction = runnable;
        ((SecQSPanel) secQuickQSPanelController.mView).mCollapseExpandAction = runnable;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setContainerController(QSContainerController qSContainerController) {
        ((QSCustomizer) this.mQSCustomizerController.mView).mQsContainerController = qSContainerController;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setExpanded(boolean z) {
        this.mQsExpanded = z;
        if (this.mInSplitShade && z) {
            setListening(true);
        } else {
            updateQsPanelControllerListening();
        }
        updateQsState();
        SecQSFragment secQSFragment = this.mSecQSFragment;
        boolean z2 = this.mListening;
        BarController barController = secQSFragment.quickBar.barController;
        if (barController != null) {
            barController.mAllBarItems.forEach(new BarController$$ExternalSyntheticLambda3(z, 2));
        }
        QSButtonsContainerController qSButtonsContainerController = secQSFragment.quickPanel.qsButtonsContainerController;
        if (qSButtonsContainerController != null) {
            qSButtonsContainerController.setListening(z2, z);
        }
        SecQSDetail secQSDetail = secQSFragment.quickTile.secQSDetail;
        if (secQSDetail != null) {
            secQSDetail.mQsExpanded = z;
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setFancyClipping(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        boolean z3;
        if (getView() instanceof QSContainerImpl) {
            QSContainerImpl qSContainerImpl = (QSContainerImpl) getView();
            boolean z4 = true;
            if (qSContainerImpl.mFancyClippingLeftInset != i) {
                qSContainerImpl.mFancyClippingLeftInset = i;
                z3 = true;
            } else {
                z3 = false;
            }
            if (qSContainerImpl.mFancyClippingTop != i2) {
                qSContainerImpl.mFancyClippingTop = i2;
                z3 = true;
            }
            if (qSContainerImpl.mFancyClippingRightInset != i3) {
                qSContainerImpl.mFancyClippingRightInset = i3;
                z3 = true;
            }
            if (qSContainerImpl.mFancyClippingBottom != i4) {
                qSContainerImpl.mFancyClippingBottom = i4;
                z3 = true;
            }
            if (qSContainerImpl.mClippingEnabled != z) {
                qSContainerImpl.mClippingEnabled = z;
                z3 = true;
            }
            if (qSContainerImpl.mIsFullWidth != z2) {
                qSContainerImpl.mIsFullWidth = z2;
            } else {
                z4 = z3;
            }
            if (z4) {
                qSContainerImpl.updateClippingPath();
            }
        }
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = this.mSecQSFragment.quickAnimation.secQSFragmentAnimatorManager;
        if (secQSFragmentAnimatorManager != null) {
            secQSFragmentAnimatorManager.setFancyClipping(i, i2, i3, i4, i5, z, z2);
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setHeaderListening(boolean z) {
        SecQuickStatusBarHeaderController secQuickStatusBarHeaderController = this.mQSContainerImplController.mQuickStatusBarHeaderController;
        if (z != secQuickStatusBarHeaderController.mListening) {
            secQuickStatusBarHeaderController.mListening = z;
            secQuickStatusBarHeaderController.mQuickQSPanelController.setListening(z);
        }
        SecQSFragment secQSFragment = this.mSecQSFragment;
        boolean z2 = this.mQsExpanded;
        BarController barController = secQSFragment.quickBar.barController;
        if (barController != null) {
            barController.mAllBarItems.forEach(new BarController$$ExternalSyntheticLambda3(z, 1));
        }
        QSButtonsContainerController qSButtonsContainerController = secQSFragment.quickPanel.qsButtonsContainerController;
        if (qSButtonsContainerController != null) {
            qSButtonsContainerController.setListening(z, z2);
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setHeightOverride(int i) {
        this.mContainer.updateExpansion();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setInSplitShade(boolean z) {
        this.mInSplitShade = z;
        updateShowCollapsedOnKeyguard();
        updateQsState();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setIsNotificationPanelFullWidth(boolean z) {
        this.mIsSmallScreen = z;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setListening(boolean z) {
        boolean z2;
        this.mListening = z;
        QSContainerImplController qSContainerImplController = this.mQSContainerImplController;
        if (z && this.mQsVisible) {
            z2 = true;
        } else {
            z2 = false;
        }
        SecQuickStatusBarHeaderController secQuickStatusBarHeaderController = qSContainerImplController.mQuickStatusBarHeaderController;
        if (z2 != secQuickStatusBarHeaderController.mListening) {
            secQuickStatusBarHeaderController.mListening = z2;
            secQuickStatusBarHeaderController.mQuickQSPanelController.setListening(z2);
        }
        this.mListeningAndVisibilityLifecycleOwner.updateState();
        updateQsPanelControllerListening();
        SecQSFragment secQSFragment = this.mSecQSFragment;
        boolean z3 = this.mQsExpanded;
        BarController barController = secQSFragment.quickBar.barController;
        if (barController != null) {
            barController.mAllBarItems.forEach(new BarController$$ExternalSyntheticLambda3(z, 1));
        }
        QSButtonsContainerController qSButtonsContainerController = secQSFragment.quickPanel.qsButtonsContainerController;
        if (qSButtonsContainerController != null) {
            qSButtonsContainerController.setListening(z, z3);
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setOverScrollAmount(int i) {
        boolean z;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mOverScrolling = z;
        View view = getView();
        if (view != null) {
            view.setTranslationY(i);
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setOverscrolling(boolean z) {
        this.mStackScrollerOverscrolling = z;
        SecQSFragment secQSFragment = this.mSecQSFragment;
        secQSFragment.stackScrollerOverscrolling = z;
        SecQSFragmentAnimatorManager secQSFragmentAnimatorManager = secQSFragment.quickAnimation.secQSFragmentAnimatorManager;
        if (secQSFragmentAnimatorManager != null) {
            secQSFragmentAnimatorManager.setStackScrollerOverscrolling(z);
        }
        updateQsState();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setPanelView(QS.HeightListener heightListener) {
        this.mPanelView = heightListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x011f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0120  */
    @Override // com.android.systemui.plugins.qs.QS
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setQsExpansion(final float r11, float r12, float r13, float r14) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSFragment.setQsExpansion(float, float, float, float):void");
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setQsVisible(boolean z) {
        if (this.mQsVisible == z) {
            return;
        }
        this.mQsVisible = z;
        setListening(this.mListening);
        this.mListeningAndVisibilityLifecycleOwner.updateState();
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setScrollListener(QS.ScrollListener scrollListener) {
        this.mScrollListener = scrollListener;
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setTransitionToFullShadeProgress(boolean z, float f, float f2) {
        if (z != this.mTransitioningToFullShade) {
            this.mTransitioningToFullShade = z;
            updateShowCollapsedOnKeyguard();
        }
        this.mLockscreenToShadeProgress = f;
        float f3 = this.mLastQSExpansion;
        float f4 = this.mLastPanelFraction;
        if (!z) {
            f2 = this.mSquishinessFraction;
        }
        setQsExpansion(f3, f4, 0.0f, f2);
    }

    public void updateQsBounds() {
        if (this.mLastQSExpansion == 1.0f) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.qs_tiles_page_horizontal_margin) * 2;
            this.mQsBounds.set(-dimensionPixelSize, 0, this.mQSPanelScrollView.getWidth() + dimensionPixelSize, this.mQSPanelScrollView.getHeight());
        }
        this.mQSPanelScrollView.setClipBounds(this.mQsBounds);
        this.mQSPanelScrollView.getLocationOnScreen(this.mLocationTemp);
    }

    public final void updateQsPanelControllerListening() {
        boolean z;
        SecQSPanelController secQSPanelController = this.mQSPanelController;
        boolean z2 = true;
        if (this.mListening && this.mQsVisible) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = this.mQsExpanded;
        secQSPanelController.getClass();
        if (!z || !z3) {
            z2 = false;
        }
        secQSPanelController.setListening(z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        if (r0 != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateQsState() {
        /*
            Method dump skipped, instructions count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSFragment.updateQsState():void");
    }

    public final void updateShowCollapsedOnKeyguard() {
        boolean z;
        boolean z2 = false;
        if (!this.mBypassController.getBypassEnabled() && (!this.mTransitioningToFullShade || this.mInSplitShade)) {
            z = false;
        } else {
            z = true;
        }
        if (z != this.mShowCollapsedOnKeyguard) {
            this.mShowCollapsedOnKeyguard = z;
            updateQsState();
            if (!z) {
                if (((StatusBarStateControllerImpl) this.mStatusBarStateController).mUpcomingState == 1) {
                    z2 = true;
                }
                if (z2) {
                    setQsExpansion(this.mLastQSExpansion, this.mLastPanelFraction, 0.0f, this.mSquishinessFraction);
                }
            }
        }
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setHasNotifications(boolean z) {
    }

    @Override // com.android.systemui.plugins.qs.QS
    public final void setHeaderClickable(boolean z) {
    }
}
