package com.android.wm.shell.pip;

import android.animation.AnimationHandler;
import android.animation.Animator;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator;
import android.app.TaskInfo;
import android.graphics.Rect;
import android.os.Debug;
import android.util.Log;
import android.util.RotationUtils;
import android.view.SurfaceControl;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.pip.PipSurfaceTransactionHelper;
import com.android.wm.shell.pip.PipTransition;
import com.samsung.android.rune.CoreRune;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipAnimationController {
    public PipTransitionAnimator mCurrentAnimator;
    public long mLastOneShotAlphaAnimationTime;
    public final PipSurfaceTransactionHelper mSurfaceTransactionHelper;
    public final ThreadLocal mSfAnimationHandlerThreadLocal = ThreadLocal.withInitial(new PipAnimationController$$ExternalSyntheticLambda0());
    public int mOneShotAnimationType = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class PipTransactionHandler {
        public boolean handlePipTransaction(SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, Rect rect, float f) {
            return this instanceof PipTransition.AnonymousClass1;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class PipTransitionAnimator extends ValueAnimator implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {
        public static final float[] PIP_BACKGROUND_COLOR = {0.0f, 0.0f, 0.0f};
        public final int mAnimationType;
        public boolean mBackgroundColorApplied;
        public final Object mBaseValue;
        public PipContentOverlay mContentOverlay;
        public Object mCurrentValue;
        public final Rect mDestinationBounds;
        public Object mEndValue;
        public boolean mHasRequestedEnd;
        public final SurfaceControl mLeash;
        public PipAnimationCallback mPipAnimationCallback;
        public PipTransactionHandler mPipTransactionHandler;
        public Object mStartValue;
        public PipSurfaceTransactionHelper.SurfaceControlTransactionFactory mSurfaceControlTransactionFactory;
        public PipSurfaceTransactionHelper mSurfaceTransactionHelper;
        public final TaskInfo mTaskInfo;
        public int mTransitionDirection;

        public /* synthetic */ PipTransitionAnimator(TaskInfo taskInfo, SurfaceControl surfaceControl, int i, Rect rect, Object obj, Object obj2, Object obj3, int i2) {
            this(taskInfo, surfaceControl, i, rect, obj, obj2, obj3);
        }

        /* JADX WARN: Type inference failed for: r22v0, types: [com.android.wm.shell.pip.PipAnimationController$PipTransitionAnimator$2] */
        public static AnonymousClass2 ofBounds(TaskInfo taskInfo, SurfaceControl surfaceControl, Rect rect, Rect rect2, final Rect rect3, final Rect rect4, final int i, final float f, final int i2) {
            Rect rect5;
            Rect rect6;
            Rect rect7;
            final Rect rect8;
            Rect rect9;
            final Rect rect10;
            final boolean isOutPipDirection = PipAnimationController.isOutPipDirection(i);
            final boolean isInPipDirection = PipAnimationController.isInPipDirection(i);
            if (isOutPipDirection) {
                rect5 = new Rect(rect3);
            } else {
                rect5 = new Rect(rect);
            }
            final Rect rect11 = rect5;
            if (i2 != 1 && i2 != 3) {
                rect8 = null;
                rect7 = null;
                rect9 = rect11;
            } else {
                Rect rect12 = new Rect(rect3);
                Rect rect13 = new Rect(rect3);
                RotationUtils.rotateBounds(rect13, rect11, i2);
                if (isOutPipDirection) {
                    rect6 = rect13;
                } else {
                    rect6 = rect11;
                }
                rect7 = rect12;
                rect8 = rect13;
                rect9 = rect6;
            }
            if (rect4 == null) {
                rect10 = null;
            } else {
                rect10 = new Rect(rect4.left - rect9.left, rect4.top - rect9.top, rect9.right - rect4.right, rect9.bottom - rect4.bottom);
            }
            final Rect rect14 = new Rect(0, 0, 0, 0);
            final Rect rect15 = rect9;
            final Rect rect16 = rect7;
            return new PipTransitionAnimator(taskInfo, surfaceControl, 0, rect3, new Rect(rect), new Rect(rect2), new Rect(rect3)) { // from class: com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator.2
                public final RectEvaluator mRectEvaluator = new RectEvaluator(new Rect());
                public final RectEvaluator mInsetsEvaluator = new RectEvaluator(new Rect());

                {
                    int i3 = 0;
                }

                /* JADX WARN: Removed duplicated region for block: B:20:0x00f5  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x0112  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0122  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x012c  */
                /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:32:0x0129  */
                /* JADX WARN: Removed duplicated region for block: B:33:0x00f7  */
                /* JADX WARN: Removed duplicated region for block: B:79:0x0266  */
                /* JADX WARN: Removed duplicated region for block: B:81:0x0270  */
                /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:84:0x026d  */
                /* JADX WARN: Removed duplicated region for block: B:97:0x023a  */
                /* JADX WARN: Removed duplicated region for block: B:98:0x0249  */
                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void applySurfaceControlTransaction(float r19, android.view.SurfaceControl.Transaction r20, android.view.SurfaceControl r21) {
                    /*
                        Method dump skipped, instructions count: 628
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator.AnonymousClass2.applySurfaceControlTransaction(float, android.view.SurfaceControl$Transaction, android.view.SurfaceControl):void");
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void onEndTransaction(int i3, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    if (this.mBackgroundColorApplied) {
                        this.mBackgroundColorApplied = false;
                        transaction.unsetColor(surfaceControl2);
                        transaction.apply();
                        Log.d("PipTaskOrganizer", "PipTransitionAnimator_onEndTransaction: unsetColor, dir=" + i3);
                    }
                    Rect rect17 = this.mDestinationBounds;
                    this.mSurfaceTransactionHelper.resetScale(rect17, transaction, surfaceControl2);
                    if (PipAnimationController.isOutPipDirection(i3)) {
                        transaction.setMatrix(surfaceControl2, 1.0f, 0.0f, 0.0f, 1.0f);
                        if (CoreRune.MW_PIP_SHELL_TRANSITION && i3 == 3) {
                            transaction.setPosition(surfaceControl2, rect17.left, rect17.top);
                        } else {
                            transaction.setPosition(surfaceControl2, 0.0f, 0.0f);
                        }
                        transaction.setWindowCrop(surfaceControl2, 0, 0);
                    } else {
                        this.mSurfaceTransactionHelper.crop(rect17, transaction, surfaceControl2);
                    }
                    PipContentOverlay pipContentOverlay = this.mContentOverlay;
                    if (pipContentOverlay != null) {
                        this.mSurfaceTransactionHelper.resetScale(rect17, transaction, pipContentOverlay.mLeash);
                        this.mContentOverlay.onAnimationEnd(transaction);
                    }
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void onStartTransaction(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                    pipSurfaceTransactionHelper.getClass();
                    transaction.setAlpha(surfaceControl2, 1.0f);
                    pipSurfaceTransactionHelper.round(surfaceControl2, !PipAnimationController.isOutPipDirection(this.mTransitionDirection), transaction);
                    pipSurfaceTransactionHelper.shadow(surfaceControl2, shouldApplyShadowRadius(), transaction);
                    if (PipAnimationController.isInPipDirection(i)) {
                        transaction.setWindowCrop(surfaceControl2, (Rect) this.mStartValue);
                    }
                    if (PipAnimationController.isOutPipDirection(i)) {
                        this.mBackgroundColorApplied = true;
                        transaction.setColor(surfaceControl2, PipTransitionAnimator.PIP_BACKGROUND_COLOR);
                        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("PipTransitionAnimator_onStartTransaction: setColor, dir="), i, "PipTaskOrganizer");
                    }
                    transaction.show(surfaceControl2);
                    transaction.apply();
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void updateEndValue(Object obj) {
                    Object obj2;
                    this.mEndValue = (Rect) obj;
                    Object obj3 = this.mStartValue;
                    if (obj3 != null && (obj2 = this.mCurrentValue) != null) {
                        ((Rect) obj3).set((Rect) obj2);
                    }
                }
            };
        }

        public abstract void applySurfaceControlTransaction(float f, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl);

        public int getAnimationType() {
            return this.mAnimationType;
        }

        public final SurfaceControl getContentOverlayLeash() {
            PipContentOverlay pipContentOverlay = this.mContentOverlay;
            if (pipContentOverlay == null) {
                return null;
            }
            return pipContentOverlay.mLeash;
        }

        public Object getEndValue() {
            return this.mEndValue;
        }

        public int getTransitionDirection() {
            return this.mTransitionDirection;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            PipAnimationCallback pipAnimationCallback = this.mPipAnimationCallback;
            if (pipAnimationCallback != null) {
                pipAnimationCallback.onPipAnimationCancel(this.mTaskInfo, this);
            }
            this.mTransitionDirection = 0;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.mHasRequestedEnd) {
                return;
            }
            this.mHasRequestedEnd = true;
            this.mCurrentValue = this.mEndValue;
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            onEndTransaction(this.mTransitionDirection, transaction, this.mLeash);
            PipAnimationCallback pipAnimationCallback = this.mPipAnimationCallback;
            if (pipAnimationCallback != null) {
                pipAnimationCallback.onPipAnimationEnd(this.mTaskInfo, transaction, this);
            }
            this.mTransitionDirection = 0;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.mCurrentValue = this.mStartValue;
            onStartTransaction(((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction(), this.mLeash);
            PipAnimationCallback pipAnimationCallback = this.mPipAnimationCallback;
            if (pipAnimationCallback != null) {
                pipAnimationCallback.onPipAnimationStart(this);
            }
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (this.mHasRequestedEnd) {
                return;
            }
            SurfaceControl surfaceControl = this.mLeash;
            applySurfaceControlTransaction(valueAnimator.getAnimatedFraction(), ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction(), surfaceControl);
        }

        public final void reattachContentOverlay(PipContentOverlay pipContentOverlay) {
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            PipContentOverlay pipContentOverlay2 = this.mContentOverlay;
            if (pipContentOverlay2 != null) {
                pipContentOverlay2.detach(transaction);
            }
            this.mContentOverlay = pipContentOverlay;
            pipContentOverlay.attach(transaction, this.mLeash);
        }

        public final void setDestinationBounds(Rect rect) {
            this.mDestinationBounds.set(rect);
            if (this.mAnimationType == 1) {
                onStartTransaction(((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction(), this.mLeash);
            }
        }

        public PipTransitionAnimator setPipAnimationCallback(PipAnimationCallback pipAnimationCallback) {
            this.mPipAnimationCallback = pipAnimationCallback;
            return this;
        }

        public void setSurfaceControlTransactionFactory(PipSurfaceTransactionHelper.SurfaceControlTransactionFactory surfaceControlTransactionFactory) {
            this.mSurfaceControlTransactionFactory = surfaceControlTransactionFactory;
        }

        public PipTransitionAnimator setTransitionDirection(int i) {
            if (i != 1) {
                this.mTransitionDirection = i;
            }
            return this;
        }

        public final boolean shouldApplyShadowRadius() {
            boolean z;
            if (PipAnimationController.isOutPipDirection(this.mTransitionDirection)) {
                return false;
            }
            if (this.mTransitionDirection == 5) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return false;
            }
            return true;
        }

        public void updateEndValue(Object obj) {
            this.mEndValue = obj;
        }

        private PipTransitionAnimator(TaskInfo taskInfo, SurfaceControl surfaceControl, int i, Rect rect, Object obj, Object obj2, Object obj3) {
            Rect rect2 = new Rect();
            this.mDestinationBounds = rect2;
            this.mTaskInfo = taskInfo;
            this.mLeash = surfaceControl;
            this.mAnimationType = i;
            rect2.set(rect);
            this.mBaseValue = obj;
            this.mStartValue = obj2;
            this.mEndValue = obj3;
            addListener(this);
            addUpdateListener(this);
            this.mSurfaceControlTransactionFactory = new PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory();
            this.mTransitionDirection = 0;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        public void onStartTransaction(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        }

        public void onEndTransaction(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        }
    }

    public PipAnimationController(PipSurfaceTransactionHelper pipSurfaceTransactionHelper) {
        this.mSurfaceTransactionHelper = pipSurfaceTransactionHelper;
    }

    public static boolean isInPipDirection(int i) {
        if (i == 2) {
            return true;
        }
        return false;
    }

    public static boolean isOutPipDirection(int i) {
        if (i != 3 && i != 4) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if (((java.lang.Float) r0.getEndValue()).floatValue() == 1.0f) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void quietCancel(android.animation.ValueAnimator r3) {
        /*
            boolean r0 = r3 instanceof com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
            if (r0 == 0) goto L25
            boolean r0 = r3.isRunning()
            if (r0 == 0) goto L25
            r0 = r3
            com.android.wm.shell.pip.PipAnimationController$PipTransitionAnimator r0 = (com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator) r0
            int r1 = r0.getAnimationType()
            r2 = 1
            if (r1 != r2) goto L25
            java.lang.Object r0 = r0.getEndValue()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L25
            goto L26
        L25:
            r2 = 0
        L26:
            if (r2 == 0) goto L32
            java.lang.String r0 = "PipTaskOrganizer"
            java.lang.String r1 = "PipAnimationController_quietCancel: Call end before cancel, reason=fade_in_aniamtor"
            android.util.Log.d(r0, r1)
            r3.end()
        L32:
            r3.removeAllUpdateListeners()
            r3.removeAllListeners()
            r3.cancel()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipAnimationController.quietCancel(android.animation.ValueAnimator):void");
    }

    public PipTransitionAnimator getAnimator(TaskInfo taskInfo, SurfaceControl surfaceControl, final Rect rect, float f, float f2) {
        Log.d("PipTaskOrganizer", "[PipAnimationController] getAnimator: dest=" + rect + ", " + f + "->" + f2 + ", Caller=" + Debug.getCallers(7));
        PipTransitionAnimator pipTransitionAnimator = this.mCurrentAnimator;
        if (pipTransitionAnimator == null) {
            float[] fArr = PipTransitionAnimator.PIP_BACKGROUND_COLOR;
            PipTransitionAnimator pipTransitionAnimator2 = new PipTransitionAnimator(taskInfo, surfaceControl, 1, rect, Float.valueOf(f), Float.valueOf(f), Float.valueOf(f2)) { // from class: com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator.1
                {
                    int i = 0;
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void applySurfaceControlTransaction(float f3, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    boolean z;
                    float floatValue = (((Float) getEndValue()).floatValue() * f3) + ((1.0f - f3) * ((Float) this.mStartValue).floatValue());
                    this.mCurrentValue = Float.valueOf(floatValue);
                    PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                    pipSurfaceTransactionHelper.getClass();
                    transaction.setAlpha(surfaceControl2, floatValue);
                    pipSurfaceTransactionHelper.round(surfaceControl2, !PipAnimationController.isOutPipDirection(this.mTransitionDirection), transaction);
                    pipSurfaceTransactionHelper.shadow(surfaceControl2, shouldApplyShadowRadius(), transaction);
                    Rect rect2 = rect;
                    PipTransactionHandler pipTransactionHandler = this.mPipTransactionHandler;
                    if (pipTransactionHandler != null) {
                        z = pipTransactionHandler.handlePipTransaction(surfaceControl2, transaction, rect2, floatValue);
                    } else {
                        z = false;
                    }
                    if (!z) {
                        transaction.apply();
                    }
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void onStartTransaction(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    if (getTransitionDirection() == 5) {
                        return;
                    }
                    PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                    pipSurfaceTransactionHelper.resetScale(this.mDestinationBounds, transaction, surfaceControl2);
                    pipSurfaceTransactionHelper.crop(this.mDestinationBounds, transaction, surfaceControl2);
                    pipSurfaceTransactionHelper.round(surfaceControl2, !PipAnimationController.isOutPipDirection(this.mTransitionDirection), transaction);
                    pipSurfaceTransactionHelper.shadow(surfaceControl2, shouldApplyShadowRadius(), transaction);
                    transaction.show(surfaceControl2);
                    transaction.apply();
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void updateEndValue(Object obj) {
                    this.mEndValue = (Float) obj;
                    this.mStartValue = this.mCurrentValue;
                }
            };
            setupPipTransitionAnimator(pipTransitionAnimator2);
            this.mCurrentAnimator = pipTransitionAnimator2;
        } else if (pipTransitionAnimator.getAnimationType() == 1 && Objects.equals(rect, this.mCurrentAnimator.mDestinationBounds) && this.mCurrentAnimator.isRunning()) {
            this.mCurrentAnimator.updateEndValue(Float.valueOf(f2));
        } else {
            this.mCurrentAnimator.cancel();
            PipTransitionAnimator pipTransitionAnimator3 = new PipTransitionAnimator(taskInfo, surfaceControl, 1, rect, Float.valueOf(f), Float.valueOf(f), Float.valueOf(f2)) { // from class: com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator.1
                {
                    int i = 0;
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void applySurfaceControlTransaction(float f3, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    boolean z;
                    float floatValue = (((Float) getEndValue()).floatValue() * f3) + ((1.0f - f3) * ((Float) this.mStartValue).floatValue());
                    this.mCurrentValue = Float.valueOf(floatValue);
                    PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                    pipSurfaceTransactionHelper.getClass();
                    transaction.setAlpha(surfaceControl2, floatValue);
                    pipSurfaceTransactionHelper.round(surfaceControl2, !PipAnimationController.isOutPipDirection(this.mTransitionDirection), transaction);
                    pipSurfaceTransactionHelper.shadow(surfaceControl2, shouldApplyShadowRadius(), transaction);
                    Rect rect2 = rect;
                    PipTransactionHandler pipTransactionHandler = this.mPipTransactionHandler;
                    if (pipTransactionHandler != null) {
                        z = pipTransactionHandler.handlePipTransaction(surfaceControl2, transaction, rect2, floatValue);
                    } else {
                        z = false;
                    }
                    if (!z) {
                        transaction.apply();
                    }
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void onStartTransaction(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl2) {
                    if (getTransitionDirection() == 5) {
                        return;
                    }
                    PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                    pipSurfaceTransactionHelper.resetScale(this.mDestinationBounds, transaction, surfaceControl2);
                    pipSurfaceTransactionHelper.crop(this.mDestinationBounds, transaction, surfaceControl2);
                    pipSurfaceTransactionHelper.round(surfaceControl2, !PipAnimationController.isOutPipDirection(this.mTransitionDirection), transaction);
                    pipSurfaceTransactionHelper.shadow(surfaceControl2, shouldApplyShadowRadius(), transaction);
                    transaction.show(surfaceControl2);
                    transaction.apply();
                }

                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator
                public final void updateEndValue(Object obj) {
                    this.mEndValue = (Float) obj;
                    this.mStartValue = this.mCurrentValue;
                }
            };
            setupPipTransitionAnimator(pipTransitionAnimator3);
            this.mCurrentAnimator = pipTransitionAnimator3;
        }
        return this.mCurrentAnimator;
    }

    public final void setupPipTransitionAnimator(PipTransitionAnimator pipTransitionAnimator) {
        pipTransitionAnimator.mSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
        pipTransitionAnimator.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        pipTransitionAnimator.setFloatValues(0.0f, 1.0f);
        pipTransitionAnimator.setAnimationHandler((AnimationHandler) this.mSfAnimationHandlerThreadLocal.get());
    }

    public PipTransitionAnimator getAnimator(TaskInfo taskInfo, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, Rect rect4, int i, float f, int i2) {
        return getAnimator(taskInfo, surfaceControl, rect, rect2, rect3, rect4, i, f, i2, null);
    }

    public final PipTransitionAnimator getAnimator(TaskInfo taskInfo, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, Rect rect4, int i, float f, int i2, Rect rect5) {
        Log.d("PipTaskOrganizer", "[PipAnimationController] getAnimator direction=" + i + " endBounds=" + rect3 + " caller=" + Debug.getCallers(7));
        if (rect3.isEmpty() && rect5 != null) {
            Log.w("PipTaskOrganizer", "getAnimator destination empty, setDefaultBounds");
            rect3.set(rect5);
        }
        PipTransitionAnimator pipTransitionAnimator = this.mCurrentAnimator;
        if (pipTransitionAnimator == null) {
            PipTransitionAnimator.AnonymousClass2 ofBounds = PipTransitionAnimator.ofBounds(taskInfo, surfaceControl, rect2, rect2, rect3, rect4, i, 0.0f, i2);
            setupPipTransitionAnimator(ofBounds);
            this.mCurrentAnimator = ofBounds;
        } else if (pipTransitionAnimator.getAnimationType() == 1 && this.mCurrentAnimator.isRunning()) {
            this.mCurrentAnimator.setDestinationBounds(rect3);
        } else if (this.mCurrentAnimator.getAnimationType() == 0 && this.mCurrentAnimator.isRunning()) {
            this.mCurrentAnimator.setDestinationBounds(rect3);
            this.mCurrentAnimator.updateEndValue(new Rect(rect3));
        } else {
            this.mCurrentAnimator.cancel();
            PipTransitionAnimator.AnonymousClass2 ofBounds2 = PipTransitionAnimator.ofBounds(taskInfo, surfaceControl, rect, rect2, rect3, rect4, i, f, i2);
            setupPipTransitionAnimator(ofBounds2);
            this.mCurrentAnimator = ofBounds2;
        }
        return this.mCurrentAnimator;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class PipAnimationCallback {
        public void onPipAnimationStart(PipTransitionAnimator pipTransitionAnimator) {
        }

        public void onPipAnimationCancel(TaskInfo taskInfo, PipTransitionAnimator pipTransitionAnimator) {
        }

        public void onPipAnimationEnd(TaskInfo taskInfo, SurfaceControl.Transaction transaction, PipTransitionAnimator pipTransitionAnimator) {
        }
    }
}
