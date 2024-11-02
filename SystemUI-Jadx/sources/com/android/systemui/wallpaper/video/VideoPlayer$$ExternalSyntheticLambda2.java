package com.android.systemui.wallpaper.video;

import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.systemui.wallpaper.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VideoPlayer$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoPlayer f$0;

    public /* synthetic */ VideoPlayer$$ExternalSyntheticLambda2(VideoPlayer videoPlayer, int i) {
        this.$r8$classId = i;
        this.f$0 = videoPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                VideoPlayer videoPlayer = this.f$0;
                videoPlayer.releaseMediaPlayer(videoPlayer.mSemMediaPlayer);
                return;
            default:
                VideoPlayer videoPlayer2 = this.f$0;
                if (videoPlayer2.mSemMediaPlayer == null) {
                    Log.w("VideoPlayer", "stopDrawing() mediaPlayer is null");
                    return;
                }
                if (videoPlayer2.mIsPendingStarted) {
                    Log.d("VideoPlayer", "stopDrawing() Do not play for previous request.");
                    videoPlayer2.mIsPendingStarted = false;
                }
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("stopDrawing() mIsPrepared = "), videoPlayer2.mIsPrepared, "VideoPlayer");
                try {
                    if (videoPlayer2.mIsPrepared && videoPlayer2.mSemMediaPlayer.isPlaying()) {
                        videoPlayer2.mSemMediaPlayer.pause();
                        VideoPlayer.AnonymousClass1 anonymousClass1 = videoPlayer2.mMediaControlHandler;
                        if (anonymousClass1.hasMessages(1001)) {
                            anonymousClass1.removeMessages(1001);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (IllegalStateException e) {
                    Log.e("VideoPlayer", "stopDrawing() failed pause");
                    e.printStackTrace();
                    return;
                }
        }
    }
}
