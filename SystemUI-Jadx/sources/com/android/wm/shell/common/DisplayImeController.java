package com.android.wm.shell.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.EventLog;
import android.util.Slog;
import android.util.SparseArray;
import android.view.IWindowManager;
import android.view.InsetsSource;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.ImeTracker;
import android.view.inputmethod.InputMethodManagerGlobal;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import com.samsung.android.rune.CoreRune;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisplayImeController implements DisplayController.OnDisplaysChangedListener {
    public static final Interpolator INTERPOLATOR = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public final DisplayController mDisplayController;
    public final DisplayInsetsController mDisplayInsetsController;
    public final Executor mMainExecutor;
    public final TransactionPool mTransactionPool;
    public final Lazy mTransitionsLazy;
    public final IWindowManager mWmService;
    public final SparseArray mImePerDisplay = new SparseArray();
    public final ArrayList mPositionProcessors = new ArrayList();
    public Runnable mAnimationFinishedCallback = null;

    public DisplayImeController(IWindowManager iWindowManager, ShellInit shellInit, DisplayController displayController, DisplayInsetsController displayInsetsController, TransactionPool transactionPool, Executor executor, Lazy lazy) {
        this.mWmService = iWindowManager;
        this.mDisplayController = displayController;
        this.mDisplayInsetsController = displayInsetsController;
        this.mMainExecutor = executor;
        this.mTransactionPool = transactionPool;
        this.mTransitionsLazy = lazy;
        shellInit.addInitCallback(new DisplayImeController$$ExternalSyntheticLambda0(this, 0), this);
    }

    public final void addPositionProcessor(ImePositionProcessor imePositionProcessor) {
        synchronized (this.mPositionProcessors) {
            if (this.mPositionProcessors.contains(imePositionProcessor)) {
                return;
            }
            this.mPositionProcessors.add(imePositionProcessor);
        }
    }

    public final boolean isImeShowing(int i) {
        InsetsSource peekSource;
        PerDisplay perDisplay = (PerDisplay) this.mImePerDisplay.get(i);
        if (perDisplay == null || (peekSource = perDisplay.mInsetsState.peekSource(InsetsSource.ID_IME)) == null || perDisplay.mImeSourceControl == null || !peekSource.isVisible()) {
            return false;
        }
        return true;
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayAdded(int i) {
        PerDisplay perDisplay = new PerDisplay(i, this.mDisplayController.getDisplayLayout(i).mRotation);
        DisplayImeController.this.mDisplayInsetsController.addInsetsChangedListener(perDisplay.mDisplayId, perDisplay);
        this.mImePerDisplay.put(i, perDisplay);
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
        PerDisplay perDisplay = (PerDisplay) this.mImePerDisplay.get(i);
        if (perDisplay != null && this.mDisplayController.getDisplayLayout(i).mRotation != perDisplay.mRotation && isImeShowing(i)) {
            perDisplay.startAnimation(true, false, null);
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayRemoved(int i) {
        SparseArray sparseArray = this.mImePerDisplay;
        PerDisplay perDisplay = (PerDisplay) sparseArray.get(i);
        if (perDisplay == null) {
            return;
        }
        DisplayImeController.this.mDisplayInsetsController.removeInsetsChangedListener(perDisplay.mDisplayId, perDisplay);
        sparseArray.remove(i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PerDisplay implements DisplayInsetsController.OnInsetsChangedListener {
        public final int mDisplayId;
        public final int mRotation;
        public final InsetsState mInsetsState = new InsetsState();
        public int mRequestedVisibleTypes = WindowInsets.Type.defaultVisible();
        public InsetsSourceControl mImeSourceControl = null;
        public int mAnimationDirection = 0;
        public ValueAnimator mAnimation = null;
        public boolean mImeShowing = false;
        public final Rect mImeFrame = new Rect();
        public boolean mAnimateAlpha = true;

        public PerDisplay(int i, int i2) {
            this.mRotation = 0;
            this.mDisplayId = i;
            this.mRotation = i2;
        }

        public InsetsSourceControl getImeSourceControl() {
            return this.mImeSourceControl;
        }

        @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
        public final void hideInsets(int i, ImeTracker.Token token) {
            if ((i & WindowInsets.Type.ime()) == 0) {
                return;
            }
            Slog.d("DisplayImeController", "Got hideInsets for ime");
            startAnimation(false, false, token);
        }

        public final int imeTop(float f) {
            return this.mImeFrame.top + ((int) f);
        }

        @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
        public final void insetsChanged(InsetsState insetsState) {
            Rect rect;
            boolean z;
            Rect rect2;
            InsetsState insetsState2 = this.mInsetsState;
            if (insetsState2.equals(insetsState)) {
                return;
            }
            updateImeVisibility(insetsState.isSourceOrDefaultVisible(InsetsSource.ID_IME, WindowInsets.Type.ime()));
            InsetsSource peekSource = insetsState.peekSource(InsetsSource.ID_IME);
            if (peekSource != null) {
                rect = peekSource.getFrame();
            } else {
                rect = null;
            }
            if (peekSource != null && peekSource.isVisible()) {
                z = true;
            } else {
                z = false;
            }
            InsetsSource peekSource2 = insetsState2.peekSource(InsetsSource.ID_IME);
            if (peekSource2 != null) {
                rect2 = peekSource2.getFrame();
            } else {
                rect2 = null;
            }
            insetsState2.set(insetsState, true);
            if (this.mImeShowing && !Objects.equals(rect2, rect) && z) {
                Slog.d("DisplayImeController", "insetsChanged when IME showing, restart animation");
                startAnimation(this.mImeShowing, true, null);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:71:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00ce  */
        @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void insetsControlChanged(android.view.InsetsState r9, android.view.InsetsSourceControl[] r10) {
            /*
                Method dump skipped, instructions count: 266
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.DisplayImeController.PerDisplay.insetsControlChanged(android.view.InsetsState, android.view.InsetsSourceControl[]):void");
        }

        public final void setVisibleDirectly(boolean z) {
            int i;
            this.mInsetsState.setSourceVisible(InsetsSource.ID_IME, z);
            if (z) {
                i = this.mRequestedVisibleTypes | WindowInsets.Type.ime();
            } else {
                i = this.mRequestedVisibleTypes & (~WindowInsets.Type.ime());
            }
            this.mRequestedVisibleTypes = i;
            try {
                DisplayImeController.this.mWmService.updateDisplayWindowRequestedVisibleTypes(this.mDisplayId, i);
            } catch (RemoteException unused) {
            }
        }

        @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
        public final void showInsets(int i, ImeTracker.Token token) {
            if ((i & WindowInsets.Type.ime()) == 0) {
                return;
            }
            Slog.d("DisplayImeController", "Got showInsets for ime");
            startAnimation(true, false, token);
        }

        public final void startAnimation(boolean z, boolean z2, ImeTracker.Token token) {
            boolean z3;
            boolean z4;
            String str;
            boolean z5;
            float f;
            float f2;
            int i;
            long j;
            InsetsSource peekSource = this.mInsetsState.peekSource(InsetsSource.ID_IME);
            if (peekSource != null && this.mImeSourceControl != null) {
                Rect frame = peekSource.getFrame();
                Rect frame2 = peekSource.getFrame();
                int height = frame2.height();
                int i2 = this.mDisplayId;
                DisplayImeController displayImeController = DisplayImeController.this;
                if (height == 0 || frame2.height() <= displayImeController.mDisplayController.getDisplayLayout(i2).mNavBarFrameHeight) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && z) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                Rect rect = this.mImeFrame;
                if (z4) {
                    rect.set(frame);
                    rect.bottom -= (int) (displayImeController.mDisplayController.getDisplayLayout(i2).density() * (-80.0f));
                } else if (frame.height() != 0) {
                    rect.set(frame);
                }
                StringBuilder m = RowView$$ExternalSyntheticOutline0.m("Run startAnim  show:", z, "  was:");
                int i3 = this.mAnimationDirection;
                if (i3 == 1) {
                    str = "SHOW";
                } else if (i3 == 2) {
                    str = "HIDE";
                } else {
                    str = PeripheralBarcodeConstants.Symbology.Type.TYPE_NONE;
                }
                m.append(str);
                Slog.d("DisplayImeController", m.toString());
                if ((!z2 && this.mAnimationDirection == 1 && z) || (this.mAnimationDirection == 2 && !z)) {
                    ImeTracker.forLogging().onCancelled(token, 26);
                    return;
                }
                ValueAnimator valueAnimator = this.mAnimation;
                float f3 = 0.0f;
                if (valueAnimator != null) {
                    if (valueAnimator.isRunning()) {
                        f3 = ((Float) this.mAnimation.getAnimatedValue()).floatValue();
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    this.mAnimation.cancel();
                    if (CoreRune.MW_SHELL_TRANSITION) {
                        this.mAnimationDirection = 0;
                    }
                } else {
                    z5 = false;
                }
                final float f4 = this.mImeSourceControl.getSurfacePosition().y;
                final float f5 = this.mImeSourceControl.getSurfacePosition().x;
                final float height2 = f4 + rect.height();
                if (z) {
                    f = height2;
                } else {
                    f = f4;
                }
                if (z) {
                    f2 = f4;
                } else {
                    f2 = height2;
                }
                if (this.mAnimationDirection == 0 && this.mImeShowing && z) {
                    z5 = true;
                    f3 = f4;
                }
                if (z) {
                    i = 1;
                } else {
                    i = 2;
                }
                this.mAnimationDirection = i;
                updateImeVisibility(z);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
                this.mAnimation = ofFloat;
                if (z) {
                    j = 275;
                } else {
                    j = 340;
                }
                ofFloat.setDuration(j);
                if (z5) {
                    this.mAnimation.setCurrentFraction((f3 - f) / (f2 - f));
                }
                final boolean z6 = z4;
                this.mAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.common.DisplayImeController$PerDisplay$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float f6;
                        DisplayImeController.PerDisplay perDisplay = DisplayImeController.PerDisplay.this;
                        float f7 = f5;
                        boolean z7 = z6;
                        float f8 = height2;
                        float f9 = f4;
                        SurfaceControl.Transaction acquire = DisplayImeController.this.mTransactionPool.acquire();
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        acquire.setPosition(perDisplay.mImeSourceControl.getLeash(), f7, floatValue);
                        if (!perDisplay.mAnimateAlpha && !z7) {
                            f6 = 1.0f;
                        } else {
                            f6 = (floatValue - f8) / (f9 - f8);
                        }
                        acquire.setAlpha(perDisplay.mImeSourceControl.getLeash(), f6);
                        DisplayImeController displayImeController2 = DisplayImeController.this;
                        int i4 = perDisplay.mDisplayId;
                        int imeTop = perDisplay.imeTop(floatValue);
                        synchronized (displayImeController2.mPositionProcessors) {
                            Iterator it = displayImeController2.mPositionProcessors.iterator();
                            while (it.hasNext()) {
                                ((DisplayImeController.ImePositionProcessor) it.next()).onImePositionChanged(i4, imeTop);
                            }
                        }
                        acquire.apply();
                        DisplayImeController.this.mTransactionPool.release(acquire);
                    }
                });
                this.mAnimation.setInterpolator(DisplayImeController.INTERPOLATOR);
                ImeTracker.forLogging().onProgress(token, 26);
                this.mAnimation.addListener(new AnimatorListenerAdapter(token, f5, f, height2, f4, z4, f2) { // from class: com.android.wm.shell.common.DisplayImeController.PerDisplay.1
                    public boolean mCancelled = false;
                    public final ImeTracker.Token mStatsToken;
                    public final /* synthetic */ float val$endY;
                    public final /* synthetic */ float val$hiddenY;
                    public final /* synthetic */ boolean val$isFloating;
                    public final /* synthetic */ float val$shownY;
                    public final /* synthetic */ ImeTracker.Token val$statsToken;
                    public final /* synthetic */ float val$x;

                    {
                        this.val$statsToken = token;
                        this.val$x = f5;
                        this.val$hiddenY = height2;
                        this.val$shownY = f4;
                        this.val$isFloating = z4;
                        this.val$endY = f2;
                        this.mStatsToken = token;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        String str2;
                        this.mCancelled = true;
                        if (ImeTracker.DEBUG_IME_VISIBILITY) {
                            Object[] objArr = new Object[3];
                            ImeTracker.Token token2 = this.val$statsToken;
                            if (token2 != null) {
                                str2 = token2.getTag();
                            } else {
                                str2 = "TOKEN_NONE";
                            }
                            objArr[0] = str2;
                            objArr[1] = Integer.valueOf(PerDisplay.this.mDisplayId);
                            objArr[2] = Objects.toString(PerDisplay.this.mImeSourceControl.getInsetsHint());
                            EventLog.writeEvent(32011, objArr);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        String str2;
                        Slog.d("DisplayImeController", "onAnimationEnd " + this.mCancelled);
                        SurfaceControl.Transaction acquire = DisplayImeController.this.mTransactionPool.acquire();
                        if (!this.mCancelled) {
                            acquire.setPosition(PerDisplay.this.mImeSourceControl.getLeash(), this.val$x, this.val$endY);
                            acquire.setAlpha(PerDisplay.this.mImeSourceControl.getLeash(), 1.0f);
                        }
                        PerDisplay perDisplay = PerDisplay.this;
                        DisplayImeController displayImeController2 = DisplayImeController.this;
                        int i4 = perDisplay.mDisplayId;
                        boolean z7 = this.mCancelled;
                        synchronized (displayImeController2.mPositionProcessors) {
                            Iterator it = displayImeController2.mPositionProcessors.iterator();
                            while (it.hasNext()) {
                                ((ImePositionProcessor) it.next()).onImeEndPositioning(i4, z7);
                            }
                        }
                        int i5 = PerDisplay.this.mAnimationDirection;
                        if (i5 == 2 && !this.mCancelled) {
                            ImeTracker.forLogging().onProgress(this.mStatsToken, 27);
                            acquire.hide(PerDisplay.this.mImeSourceControl.getLeash());
                            DisplayImeController.this.getClass();
                            InputMethodManagerGlobal.removeImeSurface(new DisplayImeController$$ExternalSyntheticLambda1(0));
                            ImeTracker.forLogging().onHidden(this.mStatsToken);
                        } else if (i5 == 1 && !this.mCancelled) {
                            ImeTracker.forLogging().onShown(this.mStatsToken);
                        } else if (this.mCancelled) {
                            ImeTracker.forLogging().onCancelled(this.mStatsToken, 27);
                        }
                        if (ImeTracker.DEBUG_IME_VISIBILITY) {
                            Object[] objArr = new Object[8];
                            ImeTracker.Token token2 = this.val$statsToken;
                            if (token2 != null) {
                                str2 = token2.getTag();
                            } else {
                                str2 = "TOKEN_NONE";
                            }
                            objArr[0] = str2;
                            objArr[1] = Integer.valueOf(PerDisplay.this.mDisplayId);
                            objArr[2] = Integer.valueOf(PerDisplay.this.mAnimationDirection);
                            objArr[3] = Float.valueOf(this.val$endY);
                            objArr[4] = Objects.toString(PerDisplay.this.mImeSourceControl.getLeash());
                            objArr[5] = Objects.toString(PerDisplay.this.mImeSourceControl.getInsetsHint());
                            objArr[6] = Objects.toString(PerDisplay.this.mImeSourceControl.getSurfacePosition());
                            objArr[7] = Objects.toString(PerDisplay.this.mImeFrame);
                            EventLog.writeEvent(32010, objArr);
                        }
                        acquire.apply();
                        DisplayImeController.this.mTransactionPool.release(acquire);
                        PerDisplay perDisplay2 = PerDisplay.this;
                        perDisplay2.mAnimationDirection = 0;
                        perDisplay2.mAnimation = null;
                        Runnable runnable = DisplayImeController.this.mAnimationFinishedCallback;
                        if (runnable != null && !this.mCancelled) {
                            runnable.run();
                            DisplayImeController.this.mAnimationFinishedCallback = null;
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        boolean z7;
                        boolean z8;
                        ArrayList arrayList;
                        boolean z9;
                        float f6;
                        String str2;
                        float floatValue = ((Float) PerDisplay.this.mAnimation.getAnimatedValue()).floatValue();
                        SurfaceControl.Transaction acquire = DisplayImeController.this.mTransactionPool.acquire();
                        acquire.setPosition(PerDisplay.this.mImeSourceControl.getLeash(), this.val$x, floatValue);
                        StringBuilder sb = new StringBuilder("onAnimationStart d:");
                        sb.append(PerDisplay.this.mDisplayId);
                        sb.append(" top:");
                        sb.append(PerDisplay.this.imeTop(this.val$hiddenY));
                        sb.append("->");
                        sb.append(PerDisplay.this.imeTop(this.val$shownY));
                        sb.append(" showing:");
                        if (PerDisplay.this.mAnimationDirection == 1) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        sb.append(z7);
                        Slog.d("DisplayImeController", sb.toString());
                        PerDisplay perDisplay = PerDisplay.this;
                        DisplayImeController displayImeController2 = DisplayImeController.this;
                        int i4 = perDisplay.mDisplayId;
                        int imeTop = perDisplay.imeTop(this.val$hiddenY);
                        int imeTop2 = PerDisplay.this.imeTop(this.val$shownY);
                        if (PerDisplay.this.mAnimationDirection == 1) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        boolean z10 = this.val$isFloating;
                        ArrayList arrayList2 = displayImeController2.mPositionProcessors;
                        synchronized (arrayList2) {
                            try {
                                Iterator it = displayImeController2.mPositionProcessors.iterator();
                                int i5 = 0;
                                while (it.hasNext()) {
                                    arrayList = arrayList2;
                                    boolean z11 = z10;
                                    try {
                                        i5 |= ((ImePositionProcessor) it.next()).onImeStartPositioning(i4, imeTop, imeTop2, z8, z10);
                                        arrayList2 = arrayList;
                                        z10 = z11;
                                    } catch (Throwable th) {
                                        th = th;
                                        while (true) {
                                            try {
                                                break;
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                arrayList = arrayList2;
                                PerDisplay perDisplay2 = PerDisplay.this;
                                if ((i5 & 1) == 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                perDisplay2.mAnimateAlpha = z9;
                                if (!z9 && !this.val$isFloating) {
                                    f6 = 1.0f;
                                } else {
                                    float f7 = this.val$hiddenY;
                                    f6 = (floatValue - f7) / (this.val$shownY - f7);
                                }
                                acquire.setAlpha(perDisplay2.mImeSourceControl.getLeash(), f6);
                                if (PerDisplay.this.mAnimationDirection == 1) {
                                    ImeTracker.forLogging().onProgress(this.mStatsToken, 27);
                                    acquire.show(PerDisplay.this.mImeSourceControl.getLeash());
                                }
                                if (ImeTracker.DEBUG_IME_VISIBILITY) {
                                    Object[] objArr = new Object[10];
                                    ImeTracker.Token token2 = this.val$statsToken;
                                    if (token2 != null) {
                                        str2 = token2.getTag();
                                    } else {
                                        str2 = "TOKEN_NONE";
                                    }
                                    objArr[0] = str2;
                                    objArr[1] = Integer.valueOf(PerDisplay.this.mDisplayId);
                                    objArr[2] = Integer.valueOf(PerDisplay.this.mAnimationDirection);
                                    objArr[3] = Float.valueOf(f6);
                                    objArr[4] = Float.valueOf(floatValue);
                                    objArr[5] = Float.valueOf(this.val$endY);
                                    objArr[6] = Objects.toString(PerDisplay.this.mImeSourceControl.getLeash());
                                    objArr[7] = Objects.toString(PerDisplay.this.mImeSourceControl.getInsetsHint());
                                    objArr[8] = Objects.toString(PerDisplay.this.mImeSourceControl.getSurfacePosition());
                                    objArr[9] = Objects.toString(PerDisplay.this.mImeFrame);
                                    EventLog.writeEvent(32009, objArr);
                                }
                                acquire.apply();
                                DisplayImeController.this.mTransactionPool.release(acquire);
                            } catch (Throwable th3) {
                                th = th3;
                                arrayList = arrayList2;
                            }
                        }
                    }
                });
                if (!z) {
                    setVisibleDirectly(false);
                }
                if (CoreRune.MW_SHELL_TRANSITION && z) {
                    Transitions transitions = (Transitions) displayImeController.mTransitionsLazy.get();
                    DisplayImeController$$ExternalSyntheticLambda0 displayImeController$$ExternalSyntheticLambda0 = new DisplayImeController$$ExternalSyntheticLambda0(this, 1);
                    ArrayList arrayList = transitions.mPendingTransitions;
                    if ((arrayList.isEmpty() || Transitions.isEmptyExceptZombie(arrayList)) && !transitions.isAnimating()) {
                        displayImeController$$ExternalSyntheticLambda0.run();
                    } else {
                        transitions.mRunWhenIdleQueue.add(displayImeController$$ExternalSyntheticLambda0);
                    }
                } else {
                    this.mAnimation.start();
                }
                if (z) {
                    setVisibleDirectly(true);
                    return;
                }
                return;
            }
            ImeTracker.forLogging().onFailed(token, 26);
        }

        public final void updateImeVisibility(boolean z) {
            if (this.mImeShowing != z) {
                this.mImeShowing = z;
                DisplayImeController displayImeController = DisplayImeController.this;
                int i = this.mDisplayId;
                synchronized (displayImeController.mPositionProcessors) {
                    Iterator it = displayImeController.mPositionProcessors.iterator();
                    while (it.hasNext()) {
                        ((ImePositionProcessor) it.next()).onImeVisibilityChanged(i, z);
                    }
                }
            }
        }

        @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
        public final void topFocusedWindowChanged() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ImePositionProcessor {
        default int onImeStartPositioning(int i, int i2, int i3, boolean z, boolean z2) {
            return 0;
        }

        default void onImeControlTargetChanged(int i, boolean z) {
        }

        default void onImeEndPositioning(int i, boolean z) {
        }

        default void onImePositionChanged(int i, int i2) {
        }

        default void onImeVisibilityChanged(int i, boolean z) {
        }
    }
}
