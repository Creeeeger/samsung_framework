package com.android.systemui.screenshot;

import android.R;
import android.media.AudioAttributes;
import android.media.AudioSystem;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.Log;
import android.window.WindowContext;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.android.systemui.screenshot.ScreenshotController;
import java.io.File;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScreenshotController$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScreenshotController f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ScreenshotController$$ExternalSyntheticLambda6(ScreenshotController screenshotController, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = screenshotController;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ScreenshotController screenshotController = this.f$0;
                screenshotController.mScreenshotView.setChipIntents((ScreenshotController.SavedImageData) this.f$1);
                return;
            case 1:
                ScreenshotController screenshotController2 = this.f$0;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.f$1;
                WindowContext windowContext = screenshotController2.mContext;
                try {
                    completer.set(MediaPlayer.create(windowContext, Uri.fromFile(new File(windowContext.getResources().getString(R.string.expand_action_accessibility))), null, new AudioAttributes.Builder().setUsage(13).setContentType(4).build(), AudioSystem.newAudioSessionId()));
                    return;
                } catch (IllegalStateException e) {
                    Log.w("Screenshot", "Screenshot sound initialization failed", e);
                    completer.set(null);
                    return;
                }
            default:
                this.f$0.mScreenshotView.addQuickShareChip(((ScreenshotController.QuickShareData) this.f$1).quickShareAction);
                return;
        }
    }
}
