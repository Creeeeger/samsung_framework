package com.android.systemui.wallpaper.video;

import android.util.Log;
import com.android.systemui.wallpaper.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VideoPlayer$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoPlayer f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ VideoPlayer$$ExternalSyntheticLambda3(VideoPlayer videoPlayer, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = videoPlayer;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                VideoPlayer videoPlayer = this.f$0;
                int i = this.f$1;
                if (!videoPlayer.mIsPrepared) {
                    Log.w("VideoPlayer", "startDrawing() mediaPlayer is not prepared");
                    videoPlayer.mIsPendingStarted = true;
                    return;
                }
                if (videoPlayer.mSemMediaPlayer == null) {
                    Log.w("VideoPlayer", "startDrawing() mediaPlayer is null");
                    return;
                }
                Log.d("VideoPlayer", "startDrawing() mIsPrepared = " + videoPlayer.mIsPrepared + ", playTime = " + i);
                try {
                    if (videoPlayer.mIsPrepared && !videoPlayer.mSemMediaPlayer.isPlaying()) {
                        videoPlayer.mSemMediaPlayer.start();
                        VideoPlayer.AnonymousClass1 anonymousClass1 = videoPlayer.mMediaControlHandler;
                        if (anonymousClass1.hasMessages(1001)) {
                            anonymousClass1.removeMessages(1001);
                        }
                        if (i > 0) {
                            anonymousClass1.sendEmptyMessageDelayed(1001, i);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (IllegalStateException e) {
                    Log.e("VideoPlayer", "startDrawing() failed start");
                    e.printStackTrace();
                    return;
                }
            default:
                VideoPlayer videoPlayer2 = this.f$0;
                int i2 = this.f$1;
                if (videoPlayer2.mSemMediaPlayer == null) {
                    Log.w("VideoPlayer", "seekTo() mediaPlayer is null");
                    return;
                }
                if (!videoPlayer2.mIsPrepared) {
                    Log.w("VideoPlayer", "seekTo() mediaPlayer is not prepared");
                    return;
                }
                try {
                    Log.i("VideoPlayer", "seekTo: " + i2);
                    videoPlayer2.mSemMediaPlayer.seekTo(i2);
                    return;
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                    Log.e("VideoPlayer", "failed seekTo");
                    return;
                }
        }
    }
}
