package com.samsung.android.globalactions.presentation.view;

import com.samsung.android.globalactions.util.LogWrapper;

/* loaded from: classes5.dex */
public class SamsungGlobalActionsAnimatorFSM {
    private static final String TAG = "SamsungGlobalActionsAnimatorFSM";
    private final GlobalActionsAnimator mAnimator;
    private boolean mIsPortrait;
    private final LogWrapper mLogWrapper;
    public State mState;
    private ViewStateController mViewStateController;

    /* loaded from: classes5.dex */
    public enum Event {
        SHOW,
        HIDE,
        SHOW_CONFIRM,
        HIDE_CONFIRM,
        CONFIGURATION_CHANGED,
        SECURE_CONFIRM
    }

    /* loaded from: classes5.dex */
    public enum State {
        IDLE,
        MAIN,
        CONFIRM,
        SAFE_MODE
    }

    public SamsungGlobalActionsAnimatorFSM(GlobalActionsAnimator animator, LogWrapper logWrapper, ViewStateController stateController) {
        this.mAnimator = animator;
        this.mViewStateController = stateController;
        this.mLogWrapper = logWrapper;
        setState(State.IDLE);
    }

    public void setState(State state) {
        this.mLogWrapper.i(TAG, "ViewState = " + state.name());
        this.mState = state;
    }

    public void handleAnimationEvent(Event event) {
        if (this.mViewStateController.getState() != ViewAnimationState.IDLE && (event != Event.CONFIGURATION_CHANGED || this.mState != State.MAIN)) {
            return;
        }
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State[this.mState.ordinal()]) {
            case 1:
                if (event == Event.SHOW) {
                    if (this.mIsPortrait) {
                        this.mAnimator.showMainViewPort();
                    } else {
                        this.mAnimator.showMainViewLand();
                    }
                    this.mAnimator.startShowAnimation();
                    setState(State.MAIN);
                    return;
                }
                return;
            case 2:
                if (event == Event.CONFIGURATION_CHANGED) {
                    if (this.mIsPortrait) {
                        this.mAnimator.showMainViewPort();
                        return;
                    } else {
                        this.mAnimator.showMainViewLand();
                        return;
                    }
                }
                if (event == Event.SHOW_CONFIRM) {
                    if (this.mAnimator.isHideConfirmAnimationRunning()) {
                        this.mAnimator.cancelHideConfirmAnimation();
                    }
                    if (this.mAnimator.isSafeModeConfirm()) {
                        this.mAnimator.startShowSafeModeAnimation();
                        setState(State.SAFE_MODE);
                        return;
                    } else {
                        this.mAnimator.startShowConfirmAnimation();
                        setState(State.CONFIRM);
                        return;
                    }
                }
                if (event == Event.HIDE) {
                    this.mAnimator.startDismissAnimation(false);
                    setState(State.IDLE);
                    return;
                } else {
                    if (event == Event.SECURE_CONFIRM) {
                        this.mAnimator.startDismissAnimation(true);
                        setState(State.IDLE);
                        return;
                    }
                    return;
                }
            case 3:
                if (event == Event.CONFIGURATION_CHANGED) {
                    if (this.mIsPortrait) {
                        this.mAnimator.setListViewPort();
                    } else {
                        this.mAnimator.setListViewLand();
                    }
                    this.mAnimator.initializeSelectedActionView();
                    return;
                }
                if (event == Event.HIDE_CONFIRM) {
                    if (this.mAnimator.isShowConfirmAnimationRunning()) {
                        this.mAnimator.cancelShowConfirmAnimation();
                    }
                    this.mAnimator.startDismissConfirmAnimation();
                    setState(State.MAIN);
                    return;
                }
                if (event == Event.SHOW_CONFIRM) {
                    this.mAnimator.startSetSafeModeAnimation();
                    setState(State.SAFE_MODE);
                    return;
                } else if (event == Event.HIDE) {
                    this.mAnimator.startDismissAnimation(false);
                    setState(State.IDLE);
                    return;
                } else {
                    if (event == Event.SECURE_CONFIRM) {
                        this.mAnimator.startDismissAnimation(true);
                        setState(State.IDLE);
                        return;
                    }
                    return;
                }
            case 4:
                if (event == Event.CONFIGURATION_CHANGED) {
                    if (this.mIsPortrait) {
                        this.mAnimator.setListViewPort();
                    } else {
                        this.mAnimator.setListViewLand();
                    }
                    this.mAnimator.initializeSelectedActionView();
                    return;
                }
                if (event == Event.HIDE_CONFIRM) {
                    if (this.mAnimator.isShowConfirmAnimationRunning()) {
                        this.mAnimator.cancelShowConfirmAnimation();
                    }
                    this.mAnimator.startDismissSafeModeAnimation();
                    setState(State.MAIN);
                    return;
                }
                if (event == Event.HIDE) {
                    this.mAnimator.startDismissAnimation(false);
                    setState(State.IDLE);
                    return;
                } else {
                    if (event == Event.SECURE_CONFIRM) {
                        this.mAnimator.startDismissAnimation(true);
                        setState(State.IDLE);
                        return;
                    }
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: com.samsung.android.globalactions.presentation.view.SamsungGlobalActionsAnimatorFSM$1, reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State = iArr;
            try {
                iArr[State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State[State.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State[State.CONFIRM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State[State.SAFE_MODE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public void setOrientation(boolean isPortrait) {
        this.mIsPortrait = isPortrait;
    }
}
