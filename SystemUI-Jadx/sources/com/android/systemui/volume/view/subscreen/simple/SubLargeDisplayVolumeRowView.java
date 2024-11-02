package com.android.systemui.volume.view.subscreen.simple;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.systemui.R;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.VibratorWrapper;
import com.android.systemui.volume.view.ViewLevelConverter;
import com.android.systemui.volume.view.VolumePanelMotion;
import com.android.systemui.volume.view.VolumeSeekBar;
import com.android.systemui.volume.view.icon.VolumeIcon;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubLargeDisplayVolumeRowView extends FrameLayout implements VolumeObserver<VolumePanelState> {
    public static final /* synthetic */ int $r8$clinit = 0;
    public HandlerWrapper mHandlerWrapper;
    public VolumeIcon mIcon;
    public boolean mIconClickable;
    public boolean mIsDualViewEnabled;
    public boolean mIsKeyDownAnimating;
    public SpringAnimation mKeyDownAnimation;
    public SpringAnimation mKeyUpAnimation;
    public final SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0 mKeyUpRunnable;
    public TextView mLabelTextView;
    public SpringAnimation mProgressBarSpring;
    public final SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0 mRecheckCallback;
    public final Resources mResources;
    public VolumeSeekBar mSeekBar;
    public boolean mStartProgress;
    public final StoreInteractor mStoreInteractor;
    public int mStream;
    public SpringAnimation mTouchDownAnimation;
    public boolean mTouchDownIcon;
    public SpringAnimation mTouchUpAnimation;
    public VibratorWrapper mVibratorWrapper;
    public VolumePanelMotion mVolumePanelMotion;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType = iArr;
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR_LATER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_STOP_SLIDER_TRACKING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_ARROW_RIGHT_CLICKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_ARROW_LEFT_CLICKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_START_PROGRESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_DOWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_UP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_KEY_EVENT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0] */
    public SubLargeDisplayVolumeRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStream = -1;
        this.mStoreInteractor = new StoreInteractor(this, null);
        final int i = 0;
        this.mKeyUpRunnable = new Runnable(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0
            public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                        subLargeDisplayVolumeRowView.mIsKeyDownAnimating = false;
                        VolumePanelMotion volumePanelMotion = subLargeDisplayVolumeRowView.mVolumePanelMotion;
                        SpringAnimation springAnimation = subLargeDisplayVolumeRowView.mKeyUpAnimation;
                        SpringAnimation springAnimation2 = subLargeDisplayVolumeRowView.mKeyDownAnimation;
                        volumePanelMotion.getClass();
                        VolumePanelMotion.startSeekBarKeyUpAnimation(springAnimation, springAnimation2);
                        return;
                    default:
                        SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                        subLargeDisplayVolumeRowView2.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(subLargeDisplayVolumeRowView2.mStream).progress(subLargeDisplayVolumeRowView2.mSeekBar.getProgress()).build(), false);
                        return;
                }
            }
        };
        final int i2 = 1;
        this.mRecheckCallback = new Runnable(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0
            public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                        subLargeDisplayVolumeRowView.mIsKeyDownAnimating = false;
                        VolumePanelMotion volumePanelMotion = subLargeDisplayVolumeRowView.mVolumePanelMotion;
                        SpringAnimation springAnimation = subLargeDisplayVolumeRowView.mKeyUpAnimation;
                        SpringAnimation springAnimation2 = subLargeDisplayVolumeRowView.mKeyDownAnimation;
                        volumePanelMotion.getClass();
                        VolumePanelMotion.startSeekBarKeyUpAnimation(springAnimation, springAnimation2);
                        return;
                    default:
                        SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                        subLargeDisplayVolumeRowView2.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(subLargeDisplayVolumeRowView2.mStream).progress(subLargeDisplayVolumeRowView2.mSeekBar.getProgress()).build(), false);
                        return;
                }
            }
        };
        this.mResources = getContext().getResources();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (!this.mStartProgress && this.mTouchDownIcon && this.mIcon.isEnabled() && this.mIconClickable && isTouched(this.mIcon, rawX, rawY)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    this.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED).stream(this.mStream).isFromOutside(true).build(), false);
                }
                this.mTouchDownIcon = false;
                this.mStartProgress = false;
            }
        } else if (isTouched(this.mIcon, motionEvent.getRawX(), motionEvent.getRawY())) {
            this.mTouchDownIcon = true;
        } else if (this.mStream == 20) {
            this.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_SMART_VIEW_SEEKBAR_TOUCHED).isFromOutside(true).stream(this.mStream).build(), false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final String getStreamLabel(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        String str;
        String smartViewLabel = volumePanelRow.getSmartViewLabel();
        if (smartViewLabel != null && !smartViewLabel.isEmpty()) {
            return smartViewLabel;
        }
        String remoteLabel = volumePanelRow.getRemoteLabel();
        if (volumePanelRow.isDynamic()) {
            return remoteLabel;
        }
        try {
            String nameRes = volumePanelRow.getNameRes();
            Resources resources = this.mResources;
            str = resources.getString(resources.getIdentifier(nameRes, null, null));
        } catch (Exception unused) {
            str = "";
        }
        if (volumePanelState.isRemoteMic()) {
            if (volumePanelRow.getStreamType() == 6) {
                str = getContext().getResources().getString(R.string.volume_amplify_ambient_sound_title);
            } else if (volumePanelRow.getStreamType() == 3 && !volumePanelState.isBtScoOn()) {
                str = getContext().getResources().getString(R.string.volume_amplify_ambient_sound_title);
            }
        }
        if (remoteLabel != null && !remoteLabel.isEmpty()) {
            int streamType = volumePanelRow.getStreamType();
            if (streamType == 3 || streamType == 22 || streamType == 6 || streamType == 21) {
                return str + " (" + remoteLabel + ")";
            }
            return str;
        }
        return str;
    }

    public final boolean isTouched(View view, float f, float f2) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (f <= iArr[0] || f >= view.getWidth() + r1) {
            return false;
        }
        if (f2 <= iArr[1] || f2 >= view.getHeight() + r3) {
            return false;
        }
        return true;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(VolumePanelState volumePanelState) {
        float f;
        final VolumePanelState volumePanelState2 = volumePanelState;
        final int i = 0;
        final int i2 = 1;
        switch (AnonymousClass1.$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[volumePanelState2.getStateType().ordinal()]) {
            case 1:
                volumePanelState2.getVolumeRowList().stream().filter(new Predicate(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1
                    public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (i) {
                            case 0:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                                int i3 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView.mStream) {
                                    return true;
                                }
                                return false;
                            case 1:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                                int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView2.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView2.mStream) {
                                    return true;
                                }
                                return false;
                            default:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView3 = this.f$0;
                                int i5 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView3.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView3.mStream) {
                                    return true;
                                }
                                return false;
                        }
                    }
                }).forEach(new Consumer(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda2
                    public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i) {
                            case 0:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                                VolumePanelState volumePanelState3 = volumePanelState2;
                                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                                int i3 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                String streamLabel = subLargeDisplayVolumeRowView.getStreamLabel(volumePanelState3, volumePanelRow);
                                if (streamLabel != null && !streamLabel.contentEquals(subLargeDisplayVolumeRowView.mLabelTextView.getText())) {
                                    subLargeDisplayVolumeRowView.mLabelTextView.setText(subLargeDisplayVolumeRowView.getStreamLabel(volumePanelState3, volumePanelRow));
                                    return;
                                }
                                return;
                            default:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                                VolumePanelState volumePanelState4 = volumePanelState2;
                                int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView2.getClass();
                                subLargeDisplayVolumeRowView2.updateContentDescription((VolumePanelRow) obj, volumePanelState4.isHasVibrator());
                                return;
                        }
                    }
                });
                volumePanelState2.getVolumeRowList().stream().filter(new Predicate(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1
                    public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (i2) {
                            case 0:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                                int i3 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView.mStream) {
                                    return true;
                                }
                                return false;
                            case 1:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                                int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView2.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView2.mStream) {
                                    return true;
                                }
                                return false;
                            default:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView3 = this.f$0;
                                int i5 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView3.getClass();
                                if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView3.mStream) {
                                    return true;
                                }
                                return false;
                        }
                    }
                }).forEach(new Consumer(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda2
                    public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i2) {
                            case 0:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                                VolumePanelState volumePanelState3 = volumePanelState2;
                                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                                int i3 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                String streamLabel = subLargeDisplayVolumeRowView.getStreamLabel(volumePanelState3, volumePanelRow);
                                if (streamLabel != null && !streamLabel.contentEquals(subLargeDisplayVolumeRowView.mLabelTextView.getText())) {
                                    subLargeDisplayVolumeRowView.mLabelTextView.setText(subLargeDisplayVolumeRowView.getStreamLabel(volumePanelState3, volumePanelRow));
                                    return;
                                }
                                return;
                            default:
                                SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                                VolumePanelState volumePanelState4 = volumePanelState2;
                                int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                subLargeDisplayVolumeRowView2.getClass();
                                subLargeDisplayVolumeRowView2.updateContentDescription((VolumePanelRow) obj, volumePanelState4.isHasVibrator());
                                return;
                        }
                    }
                });
                this.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(this.mStream).progress(this.mSeekBar.getProgress()).build(), true);
                return;
            case 2:
                if (this.mStream == volumePanelState2.getStream()) {
                    final int i3 = 2;
                    volumePanelState2.getVolumeRowList().stream().filter(new Predicate(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1
                        public final /* synthetic */ SubLargeDisplayVolumeRowView f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            switch (i3) {
                                case 0:
                                    SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = this.f$0;
                                    int i32 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                    subLargeDisplayVolumeRowView.getClass();
                                    if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView.mStream) {
                                        return true;
                                    }
                                    return false;
                                case 1:
                                    SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = this.f$0;
                                    int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                    subLargeDisplayVolumeRowView2.getClass();
                                    if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView2.mStream) {
                                        return true;
                                    }
                                    return false;
                                default:
                                    SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView3 = this.f$0;
                                    int i5 = SubLargeDisplayVolumeRowView.$r8$clinit;
                                    subLargeDisplayVolumeRowView3.getClass();
                                    if (((VolumePanelRow) obj).getStreamType() == subLargeDisplayVolumeRowView3.mStream) {
                                        return true;
                                    }
                                    return false;
                            }
                        }
                    }).forEach(new Consumer() { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            final SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = SubLargeDisplayVolumeRowView.this;
                            VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                            int i4 = SubLargeDisplayVolumeRowView.$r8$clinit;
                            subLargeDisplayVolumeRowView.getClass();
                            int viewRealLevel = ViewLevelConverter.viewRealLevel(volumePanelRow);
                            if (volumePanelRow.isVisible()) {
                                SpringAnimation springAnimation = subLargeDisplayVolumeRowView.mProgressBarSpring;
                                if (springAnimation == null) {
                                    SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder());
                                    subLargeDisplayVolumeRowView.mProgressBarSpring = springAnimation2;
                                    springAnimation2.mSpring = new SpringForce();
                                    subLargeDisplayVolumeRowView.mProgressBarSpring.mSpring.setDampingRatio(1.0f);
                                    subLargeDisplayVolumeRowView.mProgressBarSpring.mSpring.setStiffness(450.0f);
                                    SpringAnimation springAnimation3 = subLargeDisplayVolumeRowView.mProgressBarSpring;
                                    springAnimation3.mVelocity = 0.0f;
                                    springAnimation3.setStartValue(subLargeDisplayVolumeRowView.mSeekBar.getProgress());
                                    subLargeDisplayVolumeRowView.mProgressBarSpring.setMinimumVisibleChange(1.0f);
                                    subLargeDisplayVolumeRowView.mProgressBarSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6
                                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                                        public final void onAnimationUpdate(float f2, float f3) {
                                            SubLargeDisplayVolumeRowView.this.mSeekBar.setProgress((int) f2);
                                        }
                                    });
                                } else {
                                    springAnimation.setStartValue(subLargeDisplayVolumeRowView.mSeekBar.getProgress());
                                }
                                subLargeDisplayVolumeRowView.mProgressBarSpring.animateToFinalPosition(viewRealLevel);
                                return;
                            }
                            SpringAnimation springAnimation4 = subLargeDisplayVolumeRowView.mProgressBarSpring;
                            if (springAnimation4 != null) {
                                springAnimation4.cancel();
                            }
                            subLargeDisplayVolumeRowView.mSeekBar.setProgress(viewRealLevel);
                        }
                    });
                    return;
                }
                return;
            case 3:
                if (this.mStream == volumePanelState2.getStream()) {
                    this.mHandlerWrapper.remove(this.mRecheckCallback);
                    this.mHandlerWrapper.postDelayed(1000L, this.mRecheckCallback);
                    return;
                }
                return;
            case 4:
                if (this.mStream == volumePanelState2.getStream()) {
                    this.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_UPDATE_PROGRESS_BAR).stream(this.mStream).progress(this.mSeekBar.getProgress()).build(), true);
                    this.mHandlerWrapper.remove(this.mRecheckCallback);
                    this.mHandlerWrapper.postDelayed(1000L, this.mRecheckCallback);
                    return;
                }
                return;
            case 5:
                if (this.mStream == 22) {
                    setVisibility(0);
                    return;
                } else {
                    setVisibility(8);
                    return;
                }
            case 6:
                if (this.mStream == 22) {
                    setVisibility(8);
                    return;
                } else {
                    setVisibility(0);
                    return;
                }
            case 7:
                this.mStoreInteractor.dispose();
                return;
            case 8:
                if (volumePanelState2.getStream() == this.mStream) {
                    this.mStartProgress = true;
                    return;
                }
                return;
            case 9:
                VolumePanelMotion volumePanelMotion = this.mVolumePanelMotion;
                SpringAnimation springAnimation = this.mTouchDownAnimation;
                SpringAnimation springAnimation2 = this.mTouchUpAnimation;
                boolean z = this.mIsDualViewEnabled;
                volumePanelMotion.getClass();
                if (springAnimation2 != null && springAnimation2.mRunning && springAnimation2.canSkipToEnd()) {
                    springAnimation2.skipToEnd();
                }
                if (z) {
                    f = 1.03f;
                } else {
                    f = 1.05f;
                }
                springAnimation.animateToFinalPosition(f);
                return;
            case 10:
                VolumePanelMotion volumePanelMotion2 = this.mVolumePanelMotion;
                SpringAnimation springAnimation3 = this.mTouchUpAnimation;
                SpringAnimation springAnimation4 = this.mTouchDownAnimation;
                volumePanelMotion2.getClass();
                VolumePanelMotion.startSeekBarTouchUpAnimation(springAnimation3, springAnimation4);
                return;
            case 11:
                final int activeStream = volumePanelState2.getActiveStream();
                boolean booleanValue = ((Boolean) volumePanelState2.getVolumeRowList().stream().filter(new Predicate() { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda3
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        int i4 = activeStream;
                        int i5 = SubLargeDisplayVolumeRowView.$r8$clinit;
                        if (((VolumePanelRow) obj).getStreamType() == i4) {
                            return true;
                        }
                        return false;
                    }
                }).map(new SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda4()).findFirst().orElse(Boolean.FALSE)).booleanValue();
                if (!this.mIsDualViewEnabled && !volumePanelState2.isExpanded() && booleanValue) {
                    i = 1;
                }
                if (i != 0) {
                    if (volumePanelState2.isKeyDown()) {
                        this.mHandlerWrapper.remove(this.mKeyUpRunnable);
                        if (!this.mIsKeyDownAnimating) {
                            if (!volumePanelState2.isVibrating()) {
                                this.mVibratorWrapper.startKeyHaptic();
                            }
                            VolumePanelMotion volumePanelMotion3 = this.mVolumePanelMotion;
                            SpringAnimation springAnimation5 = this.mKeyDownAnimation;
                            SpringAnimation springAnimation6 = this.mKeyUpAnimation;
                            volumePanelMotion3.getClass();
                            VolumePanelMotion.startSeekBarKeyDownAnimation(springAnimation5, springAnimation6);
                        }
                        this.mIsKeyDownAnimating = true;
                        return;
                    }
                    if (this.mIsKeyDownAnimating) {
                        this.mHandlerWrapper.remove(this.mKeyUpRunnable);
                        this.mHandlerWrapper.postDelayed(100L, this.mKeyUpRunnable);
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mStoreInteractor.dispose();
    }

    public final void updateContentDescription(VolumePanelRow volumePanelRow, boolean z) {
        String string;
        int iconType = volumePanelRow.getIconType();
        if (this.mStream == 2) {
            if (iconType == 0) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_sound);
            } else if (z) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_vib);
            } else {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_mute);
            }
        } else if (iconType != 1 && !volumePanelRow.isMuted() && volumePanelRow.getRealLevel() != 0) {
            string = getContext().getString(R.string.volume_icon_content_description_to_mute, this.mLabelTextView.getText());
        } else {
            string = getContext().getString(R.string.volume_icon_content_description_to_unmute, this.mLabelTextView.getText());
        }
        VolumeIcon volumeIcon = this.mIcon;
        if (volumeIcon != null) {
            volumeIcon.setContentDescription(string);
        }
    }
}
