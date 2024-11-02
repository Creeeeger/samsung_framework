package com.android.wm.shell.pip;

import android.media.session.MediaSession;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.pip.tv.TvPipNotificationController;
import com.android.wm.shell.pip.tv.TvPipNotificationController$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipMediaController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PipMediaController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                throw null;
            case 1:
                MediaSession.Token token = (MediaSession.Token) this.f$0;
                TvPipNotificationController tvPipNotificationController = ((TvPipNotificationController$$ExternalSyntheticLambda0) obj).f$0;
                tvPipNotificationController.mMediaSessionToken = token;
                tvPipNotificationController.updateNotificationContent();
                return;
            default:
                ((PipMediaController.ActionListener) obj).onMediaActionsChanged((List) this.f$0);
                return;
        }
    }
}
