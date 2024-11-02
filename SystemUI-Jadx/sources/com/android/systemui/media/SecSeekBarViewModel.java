package com.android.systemui.media;

import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.SystemClock;
import android.util.secutil.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.SeekBar;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.core.view.GestureDetectorCompat;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.media.SecSeekBarViewModel;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.concurrency.RepeatableExecutor;
import com.android.systemui.util.concurrency.RepeatableExecutorImpl;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecSeekBarViewModel {
    public Progress _data = new Progress(false, false, false, false, null, 0);
    public final MutableLiveData _progress;
    public final RepeatableExecutor bgExecutor;
    public final SecSeekBarViewModel$callback$1 callback;
    public Runnable cancel;
    public MediaController controller;
    public CoverMusicCapsuleController coverMusicCapsuleController;
    public boolean isFalseSeek;
    public PlaybackState lastState;
    public boolean listening;
    public final DelayableExecutor mainExecutor;
    public long onSeekBarPreesedValue;
    public PlaybackState playbackState;
    public boolean scrubbing;
    public SecMediaControlPanel$$ExternalSyntheticLambda1 sessionDestroyCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Progress {
        public final int duration;
        public final Integer elapsedTime;
        public final boolean enabled;
        public final boolean playing;
        public final boolean scrubbing;
        public final boolean seekAvailable;

        public Progress(boolean z, boolean z2, boolean z3, boolean z4, Integer num, int i) {
            this.enabled = z;
            this.seekAvailable = z2;
            this.playing = z3;
            this.scrubbing = z4;
            this.elapsedTime = num;
            this.duration = i;
        }

        public static Progress copy$default(Progress progress, boolean z, Integer num, int i) {
            boolean z2;
            boolean z3;
            boolean z4;
            int i2 = 0;
            if ((i & 1) != 0) {
                z2 = progress.enabled;
            } else {
                z2 = false;
            }
            if ((i & 2) != 0) {
                z3 = progress.seekAvailable;
            } else {
                z3 = false;
            }
            if ((i & 4) != 0) {
                z4 = progress.playing;
            } else {
                z4 = false;
            }
            if ((i & 8) != 0) {
                z = progress.scrubbing;
            }
            boolean z5 = z;
            if ((i & 16) != 0) {
                num = progress.elapsedTime;
            }
            Integer num2 = num;
            if ((i & 32) != 0) {
                i2 = progress.duration;
            }
            progress.getClass();
            return new Progress(z2, z3, z4, z5, num2, i2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Progress)) {
                return false;
            }
            Progress progress = (Progress) obj;
            if (this.enabled == progress.enabled && this.seekAvailable == progress.seekAvailable && this.playing == progress.playing && this.scrubbing == progress.scrubbing && Intrinsics.areEqual(this.elapsedTime, progress.elapsedTime) && this.duration == progress.duration) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int i = 1;
            boolean z = this.enabled;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = i2 * 31;
            boolean z2 = this.seekAvailable;
            int i4 = z2;
            if (z2 != 0) {
                i4 = 1;
            }
            int i5 = (i3 + i4) * 31;
            boolean z3 = this.playing;
            int i6 = z3;
            if (z3 != 0) {
                i6 = 1;
            }
            int i7 = (i5 + i6) * 31;
            boolean z4 = this.scrubbing;
            if (!z4) {
                i = z4 ? 1 : 0;
            }
            int i8 = (i7 + i) * 31;
            Integer num = this.elapsedTime;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            return Integer.hashCode(this.duration) + ((i8 + hashCode) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Progress(enabled=");
            sb.append(this.enabled);
            sb.append(", seekAvailable=");
            sb.append(this.seekAvailable);
            sb.append(", playing=");
            sb.append(this.playing);
            sb.append(", scrubbing=");
            sb.append(this.scrubbing);
            sb.append(", elapsedTime=");
            sb.append(this.elapsedTime);
            sb.append(", duration=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.duration, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SeekBarChangeListener implements SeekBar.OnSeekBarChangeListener {
        public final SecSeekBarViewModel viewModel;

        public SeekBarChangeListener(SecSeekBarViewModel secSeekBarViewModel) {
            this.viewModel = secSeekBarViewModel;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                final SecSeekBarViewModel secSeekBarViewModel = this.viewModel;
                final long j = i;
                secSeekBarViewModel.onSeekBarPreesedValue = j;
                secSeekBarViewModel.getClass();
                ((RepeatableExecutorImpl) secSeekBarViewModel.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$onSeekProgress$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecSeekBarViewModel secSeekBarViewModel2 = SecSeekBarViewModel.this;
                        if (secSeekBarViewModel2.scrubbing) {
                            secSeekBarViewModel2.set_data(SecSeekBarViewModel.Progress.copy$default(secSeekBarViewModel2._data, false, Integer.valueOf((int) j), 47));
                        }
                    }
                });
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            final SecSeekBarViewModel secSeekBarViewModel = this.viewModel;
            secSeekBarViewModel.getClass();
            ((RepeatableExecutorImpl) secSeekBarViewModel.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$onSeekStarting$1
                @Override // java.lang.Runnable
                public final void run() {
                    SecSeekBarViewModel.access$setScrubbing(SecSeekBarViewModel.this, true);
                    SecSeekBarViewModel.this.isFalseSeek = false;
                }
            });
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            final SecSeekBarViewModel secSeekBarViewModel = this.viewModel;
            final long progress = seekBar.getProgress();
            secSeekBarViewModel.getClass();
            ((RepeatableExecutorImpl) secSeekBarViewModel.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$onSeek$1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.TransportControls transportControls;
                    SecSeekBarViewModel secSeekBarViewModel2 = SecSeekBarViewModel.this;
                    if (secSeekBarViewModel2.isFalseSeek) {
                        SecSeekBarViewModel.access$setScrubbing(secSeekBarViewModel2, false);
                        SecSeekBarViewModel.access$checkPlaybackPosition(SecSeekBarViewModel.this);
                        return;
                    }
                    MediaController mediaController = secSeekBarViewModel2.controller;
                    if (mediaController != null && (transportControls = mediaController.getTransportControls()) != null) {
                        transportControls.seekTo(progress);
                    }
                    SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPNE0023");
                    SecSeekBarViewModel secSeekBarViewModel3 = SecSeekBarViewModel.this;
                    secSeekBarViewModel3.playbackState = null;
                    SecSeekBarViewModel.access$setScrubbing(secSeekBarViewModel3, false);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r8v3, types: [com.android.systemui.media.SecSeekBarViewModel$callback$1] */
    public SecSeekBarViewModel(RepeatableExecutor repeatableExecutor, DelayableExecutor delayableExecutor) {
        this.bgExecutor = repeatableExecutor;
        this.mainExecutor = delayableExecutor;
        MutableLiveData mutableLiveData = new MutableLiveData();
        mutableLiveData.postValue(this._data);
        this._progress = mutableLiveData;
        this.callback = new MediaController.Callback() { // from class: com.android.systemui.media.SecSeekBarViewModel$callback$1
            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                final PlaybackState playbackState2;
                boolean z;
                long j;
                Long l;
                Integer num;
                SecSeekBarViewModel.this.playbackState = playbackState;
                if (playbackState != null) {
                    boolean z2 = false;
                    Integer num2 = 0;
                    if (!num2.equals(SecSeekBarViewModel.this.playbackState)) {
                        SecSeekBarViewModel.this.checkIfPollingNeeded();
                        final SecSeekBarViewModel secSeekBarViewModel = SecSeekBarViewModel.this;
                        MediaController mediaController = secSeekBarViewModel.controller;
                        Long l2 = null;
                        if (mediaController != null) {
                            playbackState2 = mediaController.getPlaybackState();
                        } else {
                            playbackState2 = null;
                        }
                        if (playbackState2 != null) {
                            PlaybackState playbackState3 = secSeekBarViewModel.lastState;
                            if (playbackState3 != null && playbackState3.equals(playbackState2)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!z) {
                                Integer num3 = 0;
                                if (!num3.equals(secSeekBarViewModel.playbackState)) {
                                    PlaybackState playbackState4 = secSeekBarViewModel.lastState;
                                    long j2 = 0;
                                    if (playbackState4 != null) {
                                        j = playbackState4.getPosition() - playbackState2.getPosition();
                                    } else {
                                        j = 0;
                                    }
                                    if (Math.abs(j) < 1500) {
                                        PlaybackState playbackState5 = secSeekBarViewModel.lastState;
                                        if (playbackState5 != null && playbackState5.getState() == playbackState2.getState()) {
                                            z2 = true;
                                        }
                                        if (z2) {
                                            PlaybackState playbackState6 = secSeekBarViewModel.lastState;
                                            if (playbackState6 != null) {
                                                j2 = playbackState6.getLastPositionUpdateTime() - playbackState2.getLastPositionUpdateTime();
                                            }
                                            if (Math.abs(j2) < 1500) {
                                                secSeekBarViewModel.lastState = playbackState2;
                                                return;
                                            }
                                        }
                                    }
                                    PlaybackState playbackState7 = secSeekBarViewModel.lastState;
                                    if (playbackState7 != null) {
                                        l = Long.valueOf(playbackState7.getPosition());
                                    } else {
                                        l = null;
                                    }
                                    Long valueOf = Long.valueOf(playbackState2.getPosition());
                                    PlaybackState playbackState8 = secSeekBarViewModel.lastState;
                                    if (playbackState8 != null) {
                                        num = Integer.valueOf(playbackState8.getState());
                                    } else {
                                        num = null;
                                    }
                                    Integer valueOf2 = Integer.valueOf(playbackState2.getState());
                                    PlaybackState playbackState9 = secSeekBarViewModel.lastState;
                                    if (playbackState9 != null) {
                                        l2 = Long.valueOf(playbackState9.getLastPositionUpdateTime());
                                    }
                                    Log.d("CapsuleValue", "last position : " + l + ", after position : " + valueOf + ", last state : " + num + ", after state : " + valueOf2 + " last update : " + l2 + " after update : " + Long.valueOf(playbackState2.getLastPositionUpdateTime()));
                                    secSeekBarViewModel.lastState = playbackState2;
                                    ((ExecutorImpl) secSeekBarViewModel.mainExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            CoverMusicCapsuleController coverMusicCapsuleController = SecSeekBarViewModel.this.coverMusicCapsuleController;
                                            if (coverMusicCapsuleController != null) {
                                                coverMusicCapsuleController.updateEqualizerState(playbackState2);
                                            }
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                SecSeekBarViewModel secSeekBarViewModel2 = SecSeekBarViewModel.this;
                secSeekBarViewModel2.getClass();
                ((RepeatableExecutorImpl) secSeekBarViewModel2.bgExecutor).execute(new SecSeekBarViewModel$clearController$1(secSeekBarViewModel2));
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
                final SecSeekBarViewModel secSeekBarViewModel = SecSeekBarViewModel.this;
                ((ExecutorImpl) secSeekBarViewModel.mainExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$callback$1$onSessionDestroyed$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecMediaControlPanel$$ExternalSyntheticLambda1 secMediaControlPanel$$ExternalSyntheticLambda1 = SecSeekBarViewModel.this.sessionDestroyCallback;
                        if (secMediaControlPanel$$ExternalSyntheticLambda1 != null) {
                            secMediaControlPanel$$ExternalSyntheticLambda1.f$0.removePlayer();
                        }
                    }
                });
                SecSeekBarViewModel secSeekBarViewModel2 = SecSeekBarViewModel.this;
                secSeekBarViewModel2.getClass();
                ((RepeatableExecutorImpl) secSeekBarViewModel2.bgExecutor).execute(new SecSeekBarViewModel$clearController$1(secSeekBarViewModel2));
            }
        };
        this.listening = true;
    }

    public static final void access$checkPlaybackPosition(SecSeekBarViewModel secSeekBarViewModel) {
        Integer num;
        PlaybackState playbackState;
        boolean z;
        int i = secSeekBarViewModel._data.duration;
        MediaController mediaController = secSeekBarViewModel.controller;
        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null) {
            long j = i;
            long position = playbackState.getPosition();
            if (playbackState.getState() != 3 && playbackState.getState() != 4 && playbackState.getState() != 5) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                long lastPositionUpdateTime = playbackState.getLastPositionUpdateTime();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (lastPositionUpdateTime > 0) {
                    long position2 = playbackState.getPosition() + (playbackState.getPlaybackSpeed() * ((float) (elapsedRealtime - lastPositionUpdateTime)));
                    if (j < 0 || position2 <= j) {
                        if (position2 < 0) {
                            j = 0;
                        } else {
                            j = position2;
                        }
                    }
                    position = j;
                }
            }
            num = Integer.valueOf((int) position);
        } else {
            num = null;
        }
        if (num != null && !Intrinsics.areEqual(secSeekBarViewModel._data.elapsedTime, num)) {
            int i2 = (int) secSeekBarViewModel.onSeekBarPreesedValue;
            if (i2 != 0) {
                secSeekBarViewModel.set_data(Progress.copy$default(secSeekBarViewModel._data, false, Integer.valueOf(i2), 47));
                secSeekBarViewModel.onSeekBarPreesedValue = 0L;
            } else {
                secSeekBarViewModel.set_data(Progress.copy$default(secSeekBarViewModel._data, false, num, 47));
            }
        }
    }

    public static final void access$setScrubbing(SecSeekBarViewModel secSeekBarViewModel, boolean z) {
        if (secSeekBarViewModel.scrubbing != z) {
            secSeekBarViewModel.scrubbing = z;
            secSeekBarViewModel.checkIfPollingNeeded();
            secSeekBarViewModel.set_data(Progress.copy$default(secSeekBarViewModel._data, z, null, 55));
        }
    }

    public final void checkIfPollingNeeded() {
        boolean z;
        boolean z2 = false;
        if (this.listening && !this.scrubbing) {
            PlaybackState playbackState = this.playbackState;
            if (playbackState != null && (playbackState.getState() == 3 || playbackState.getState() == 4 || playbackState.getState() == 5)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.cancel == null) {
                RepeatableExecutor repeatableExecutor = this.bgExecutor;
                Runnable runnable = new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$checkIfPollingNeeded$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecSeekBarViewModel.access$checkPlaybackPosition(SecSeekBarViewModel.this);
                    }
                };
                repeatableExecutor.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                final RepeatableExecutorImpl.ExecutionToken executionToken = new RepeatableExecutorImpl.ExecutionToken(runnable, 100L, timeUnit);
                synchronized (executionToken.mLock) {
                    executionToken.mCancel = ((ExecutorImpl) RepeatableExecutorImpl.this.mExecutor).executeDelayed(executionToken, 0L, timeUnit);
                }
                this.cancel = new Runnable() { // from class: com.android.systemui.util.concurrency.RepeatableExecutorImpl$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RepeatableExecutorImpl.ExecutionToken executionToken2 = RepeatableExecutorImpl.ExecutionToken.this;
                        synchronized (executionToken2.mLock) {
                            ExecutorImpl.ExecutionToken executionToken3 = executionToken2.mCancel;
                            if (executionToken3 != null) {
                                executionToken3.run();
                                executionToken2.mCancel = null;
                            }
                        }
                    }
                };
                return;
            }
            return;
        }
        Runnable runnable2 = this.cancel;
        if (runnable2 != null) {
            runnable2.run();
        }
        this.cancel = null;
    }

    public final void setController(MediaController mediaController) {
        MediaSession.Token token;
        MediaController mediaController2 = this.controller;
        MediaSession.Token token2 = null;
        if (mediaController2 != null) {
            token = mediaController2.getSessionToken();
        } else {
            token = null;
        }
        if (mediaController != null) {
            token2 = mediaController.getSessionToken();
        }
        if (!Intrinsics.areEqual(token, token2)) {
            MediaController mediaController3 = this.controller;
            SecSeekBarViewModel$callback$1 secSeekBarViewModel$callback$1 = this.callback;
            if (mediaController3 != null) {
                mediaController3.unregisterCallback(secSeekBarViewModel$callback$1);
            }
            if (mediaController != null) {
                mediaController.registerCallback(secSeekBarViewModel$callback$1);
            }
            this.controller = mediaController;
        }
    }

    public final void set_data(Progress progress) {
        this._data = progress;
        this._progress.postValue(progress);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SeekBarTouchListener implements View.OnTouchListener, GestureDetector.OnGestureListener {
        public final SeekBar bar;
        public final GestureDetectorCompat detector;
        public final int flingVelocity;
        public boolean isThumbTouched;
        public boolean shouldGoToSeekBar;
        public final SecSeekBarViewModel viewModel;

        public SeekBarTouchListener(SecSeekBarViewModel secSeekBarViewModel, SeekBar seekBar) {
            this.viewModel = secSeekBarViewModel;
            this.bar = seekBar;
            this.detector = new GestureDetectorCompat(seekBar.getContext(), this);
            this.flingVelocity = ViewConfiguration.get(seekBar.getContext()).getScaledMinimumFlingVelocity() * 10;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            double d;
            double d2;
            ViewParent parent;
            int paddingLeft = this.bar.getPaddingLeft();
            int paddingRight = this.bar.getPaddingRight();
            int progress = this.bar.getProgress();
            int max = this.bar.getMax() - this.bar.getMin();
            if (max > 0) {
                d = (progress - this.bar.getMin()) / max;
            } else {
                d = 0.0d;
            }
            int width = (this.bar.getWidth() - paddingLeft) - paddingRight;
            if (this.bar.isLayoutRtl()) {
                d2 = ((1 - d) * width) + paddingLeft;
            } else {
                d2 = (width * d) + paddingLeft;
            }
            long height = this.bar.getHeight() / 2;
            int round = (int) (Math.round(d2) - height);
            int round2 = (int) (Math.round(d2) + height);
            int round3 = Math.round(motionEvent.getX());
            boolean z = false;
            if (round <= round3 && round3 <= round2) {
                z = true;
            }
            this.shouldGoToSeekBar = z;
            this.isThumbTouched = z;
            if (z && (parent = this.bar.getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            return this.shouldGoToSeekBar;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!this.isThumbTouched && (Math.abs(f) > this.flingVelocity || Math.abs(f2) > this.flingVelocity)) {
                final SecSeekBarViewModel secSeekBarViewModel = this.viewModel;
                secSeekBarViewModel.getClass();
                ((RepeatableExecutorImpl) secSeekBarViewModel.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.media.SecSeekBarViewModel$onSeekFalse$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecSeekBarViewModel secSeekBarViewModel2 = SecSeekBarViewModel.this;
                        if (secSeekBarViewModel2.scrubbing) {
                            secSeekBarViewModel2.isFalseSeek = true;
                        }
                    }
                });
            }
            return this.shouldGoToSeekBar;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return this.shouldGoToSeekBar;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            this.shouldGoToSeekBar = true;
            return true;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (!Intrinsics.areEqual(view, this.bar)) {
                return false;
            }
            this.detector.mImpl.mDetector.onTouchEvent(motionEvent);
            return !this.shouldGoToSeekBar;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onShowPress(MotionEvent motionEvent) {
        }
    }
}
