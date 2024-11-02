package com.android.systemui.globalactions.presentation.view;

import com.samsung.android.globalactions.presentation.view.GlobalActionsAnimator;
import com.samsung.android.globalactions.presentation.view.ViewAnimationState;
import com.samsung.android.globalactions.presentation.view.ViewStateController;
import com.samsung.android.globalactions.util.LogWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverViewAnimatorFSM {
    public final GlobalActionsAnimator mAnimator;
    public final LogWrapper mLogWrapper;
    public State mState;
    public final ViewStateController mViewStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.globalactions.presentation.view.CoverViewAnimatorFSM$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$globalactions$presentation$view$CoverViewAnimatorFSM$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$android$systemui$globalactions$presentation$view$CoverViewAnimatorFSM$State = iArr;
            try {
                iArr[State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$globalactions$presentation$view$CoverViewAnimatorFSM$State[State.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$globalactions$presentation$view$CoverViewAnimatorFSM$State[State.CONFIRM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Event {
        SHOW,
        HIDE,
        SHOW_CONFIRM,
        HIDE_CONFIRM,
        /* JADX INFO: Fake field, exist only in values array */
        CONFIGURATION_CHANGED,
        SECURE_CONFIRM,
        COVER_TOAST
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum State {
        IDLE,
        MAIN,
        CONFIRM
    }

    public CoverViewAnimatorFSM(GlobalActionsAnimator globalActionsAnimator, LogWrapper logWrapper, ViewStateController viewStateController) {
        this.mAnimator = globalActionsAnimator;
        this.mLogWrapper = logWrapper;
        this.mViewStateController = viewStateController;
        setState(State.IDLE);
    }

    public final void handleAnimationEvent(Event event) {
        this.mLogWrapper.v("CoverViewAnimatorFSM", "handleAnimationEvent() Event : " + event + ", state : " + this.mState);
        if (this.mViewStateController.getState() != ViewAnimationState.IDLE) {
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$globalactions$presentation$view$CoverViewAnimatorFSM$State[this.mState.ordinal()];
        GlobalActionsAnimator globalActionsAnimator = this.mAnimator;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    if (event == Event.HIDE_CONFIRM) {
                        globalActionsAnimator.startDismissConfirmAnimation();
                        setState(State.MAIN);
                        return;
                    }
                    if (event == Event.SECURE_CONFIRM) {
                        globalActionsAnimator.startDismissAnimation(true);
                        setState(State.MAIN);
                        return;
                    } else if (event == Event.COVER_TOAST) {
                        globalActionsAnimator.startToastAnimation();
                        setState(State.MAIN);
                        return;
                    } else {
                        if (event == Event.HIDE) {
                            globalActionsAnimator.startDismissAnimation(false);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (event == Event.SHOW_CONFIRM) {
                globalActionsAnimator.startShowConfirmAnimation();
                setState(State.CONFIRM);
                return;
            }
            if (event == Event.SECURE_CONFIRM) {
                globalActionsAnimator.startDismissAnimation(true);
                setState(State.IDLE);
                return;
            }
            if (event == Event.HIDE) {
                globalActionsAnimator.startDismissAnimation(false);
                setState(State.IDLE);
                return;
            } else if (event == Event.COVER_TOAST) {
                globalActionsAnimator.startToastAnimation();
                return;
            } else {
                if (event == Event.HIDE_CONFIRM) {
                    globalActionsAnimator.startDismissAnimation(false);
                    setState(State.IDLE);
                    return;
                }
                return;
            }
        }
        if (event == Event.SHOW) {
            globalActionsAnimator.startShowAnimation();
            setState(State.MAIN);
        }
    }

    public final void setState(State state) {
        this.mLogWrapper.v("CoverViewAnimatorFSM", "ViewState = " + state.name());
        this.mState = state;
    }
}
